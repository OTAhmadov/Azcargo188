/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.dao;

import com.product.web.db.DbConnect;
import com.product.web.domain.Account;
import com.product.web.domain.Company;
import com.product.web.domain.DictionaryWrapper;
import com.product.web.domain.MultilanguageString;
import com.product.web.domain.OperationResponse;
import com.product.web.enums.ResultCode;
import com.product.web.form.DictionaryWrapperForm;
import com.product.web.form.LoginForm;
import com.product.web.util.Crypto;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author otahmadov
 */
@Repository
public class AdminDao implements IAdminDao {
    private static final Logger log = Logger.getLogger(AdminDao.class);

    @Autowired
    private DbConnect dbConnect;
    
    @Override
    public Account doLogin(LoginForm form) {
        
        try(Connection connection = dbConnect.getPostgresConnection()) {
            connection.setAutoCommit(false);
            try(CallableStatement callableStatement = connection.prepareCall("{? = call do_login(?,?,?,?)}")) {
                callableStatement.registerOutParameter(1, Types.OTHER);
                callableStatement.setString(2, form.getUsername());
                callableStatement.setString(3, Crypto.base64Encode(form.getPassword()));
                callableStatement.setString(4, form.getIpadress());
                callableStatement.setString(5, form.getDevice());
                callableStatement.execute();
                connection.commit();
                try(ResultSet resultSet = (ResultSet) callableStatement.getObject(1)) {
                    if(resultSet.next()) {
                        return new Account(resultSet.getInt("id"), 
                                            resultSet.getString("user_name"), 
                                            resultSet.getString("first_name"), 
                                            resultSet.getString("last_name"), 
                                            resultSet.getString("middle_name"), 
                                            new Company(resultSet.getInt("company_id"), 
                                                        resultSet.getString("company_name"), null, null));
                    }
                }
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    @Override
    public List<DictionaryWrapper> getDictionaryTypeList() {
        List<DictionaryWrapper> list = new ArrayList<>();
        String query = "Select * from dictionary_type d where d.protect is null";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query);
                ResultSet resultSet = preparedStatement.executeQuery()) {
            
            while(resultSet.next()) {
                list.add(new DictionaryWrapper(resultSet.getInt("id"), 
                                                new MultilanguageString(resultSet.getString("name"), 
                                                                        resultSet.getString("name"), 
                                                                        resultSet.getString("name"))));
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public List<DictionaryWrapper> getDictionaryList(int dicTypeId) {
        List<DictionaryWrapper> list = new ArrayList<>();
        String query = "Select * from dictionary d where d.dic_type_id = ? and d.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query)
                ) {
                preparedStatement.setInt(1, dicTypeId);
                
                try(ResultSet resultSet = preparedStatement.executeQuery()) {
                    while(resultSet.next()) {
                        list.add(new DictionaryWrapper(resultSet.getInt("id"), 
                                                        resultSet.getInt("dic_type_id"),
                                                new MultilanguageString(resultSet.getString("name_az"), 
                                                                        resultSet.getString("name_en"), 
                                                                        resultSet.getString("name_ru")),
                                                new MultilanguageString(resultSet.getString("about_az"), 
                                                                        resultSet.getString("about_en"), 
                                                                        resultSet.getString("about_ru")),
                                                resultSet.getInt("parent_id"),
                                                resultSet.getString("icon")));
                }
            
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public OperationResponse NDUDictionary(DictionaryWrapperForm form, int accountId) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        String query = "{call ndu_dictionary(?,?,?,?,?,?,?)}";
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall(query)) {
            callableStatement.setInt(1, accountId);
            callableStatement.setInt(2, form.getId());
            callableStatement.setInt(3, form.getParentId());
            callableStatement.setInt(4, form.getDicTypeId());
            callableStatement.setString(5, form.getNameAz());
            callableStatement.setString(6, form.getNameEn());
            callableStatement.setString(7, form.getNameRu());
            
            callableStatement.executeUpdate();
            operationResponse.setCode(ResultCode.OK);
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }
    
}
