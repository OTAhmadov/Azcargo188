/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.dao;

import com.product.web.db.DbConnect;
import com.product.web.domain.About;
import com.product.web.domain.Account;
import com.product.web.domain.Company;
import com.product.web.domain.Contact;
import com.product.web.domain.DictionaryWrapper;
import com.product.web.domain.MultilanguageString;
import com.product.web.domain.OperationResponse;
import com.product.web.enums.ResultCode;
import com.product.web.form.AboutForm;
import com.product.web.form.AccountForm;
import com.product.web.form.ContactForm;
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

    @Override
    public List<Contact> getContactList() {
        List<Contact> list = new ArrayList<>();
        String query = "Select c.*, d.name_az, d.name_en, d.name_ru from contacts c "
                        + "join dictionary d on d.id = c.type_id and d.active = 1 "
                        + "where c.company_id = 1 and c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query);
                ResultSet resultSet = preparedStatement.executeQuery()
                ) {
                    while(resultSet.next()) {
                        list.add(new Contact(resultSet.getInt("id"), 
                                              new Company(1, null, null, null),
                                              new DictionaryWrapper(resultSet.getInt("type_id"), 
                                                                    new MultilanguageString(resultSet.getString("name_az"), 
                                                                                            resultSet.getString("name_en"), 
                                                                                            resultSet.getString("name_ru"))),
                                              resultSet.getString("contact")));
                }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public Contact getContactDetails(int id) {
        String query = "Select c.*, d.name_az, d.name_en, d.name_ru from contacts c "
                        + "join dictionary d on d.id = c.type_id and d.active = 1 "
                        + "where c.id = ? and c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query)
                
                ) {
                preparedStatement.setInt(1, id);
            
                try(ResultSet resultSet = preparedStatement.executeQuery()){
                    while(resultSet.next()) {
                        return new Contact(resultSet.getInt("id"), 
                                              new Company(1, null, null, null),
                                              new DictionaryWrapper(resultSet.getInt("type_id"), 
                                                                    new MultilanguageString(resultSet.getString("name_az"), 
                                                                                            resultSet.getString("name_en"), 
                                                                                            resultSet.getString("name_ru"))),
                                              resultSet.getString("contact"));
                    }
                }
                    
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    @Override
    public OperationResponse NDUContact(ContactForm form, int accountId) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        String query = "{call ndu_contact(?,?,?,?,?)}";
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall(query)) {
            callableStatement.setInt(1, accountId);
            callableStatement.setInt(2, form.getId());
            callableStatement.setInt(3, form.getCompanyId());
            callableStatement.setInt(4, form.getTypeId());
            callableStatement.setString(5, form.getContact());
            
            callableStatement.executeUpdate();
            operationResponse.setCode(ResultCode.OK);
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }

    @Override
    public About getAbout() {
        String query = "Select * from about c where c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query);
                ResultSet resultSet = preparedStatement.executeQuery()
                
                ) {
                    if(resultSet.next()) {
                        return new About(resultSet.getInt("id"), 
                                            resultSet.getString("title"),
                                            new MultilanguageString(resultSet.getString("name_az"), 
                                                                    resultSet.getString("name_en"), 
                                                                    resultSet.getString("name_ru")));
                    }
                    
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    @Override
    public OperationResponse NDUAbout(AboutForm form, int accountId) {
         OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
            String query = "{call ndu_about(?,?,?,?,?,?,?)}";
            try(Connection connection = dbConnect.getPostgresConnection();
                CallableStatement callableStatement = connection.prepareCall(query)) {
                callableStatement.setInt(1, accountId);
                callableStatement.setInt(2, form.getId());
                callableStatement.setInt(3, 1);
                callableStatement.setString(4, form.getTitle());
                callableStatement.setString(5, form.getContentAz());
                callableStatement.setString(6, form.getContentEn());
                callableStatement.setString(7, form.getContentRu());

                callableStatement.executeUpdate();
                operationResponse.setCode(ResultCode.OK);
            } 
            catch (Exception e) {
                log.error(e.getMessage(), e);
            }
        return operationResponse;
    }
    
    @Override
    public List<Account> getAccountList() {
        List<Account> list = new ArrayList<>();
        String query = "Select * from accounts c where c.company_id = 1 and c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query);
                ResultSet resultSet = preparedStatement.executeQuery()
                ) {
                    while(resultSet.next()) {
                        list.add(new Account(resultSet.getInt("id"), 
                                                resultSet.getString("user_name"), 
                                                resultSet.getString("first_name"), 
                                                resultSet.getString("last_name"), 
                                                resultSet.getString("middle_name"), 
                                                new Company(resultSet.getInt("company_id"), null, null, null)));
                }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public Account getAccountDetails(int id) {
        String query = "Select * from accounts c where c.id = ? and c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query)
                
                ) {
                preparedStatement.setInt(1, id);
            
                try(ResultSet resultSet = preparedStatement.executeQuery()){
                    while(resultSet.next()) {
                        return new Account(resultSet.getInt("id"), 
                                                resultSet.getString("user_name"), 
                                                resultSet.getString("first_name"), 
                                                resultSet.getString("last_name"), 
                                                resultSet.getString("middle_name"), 
                                                new Company(resultSet.getInt("company_id"), null, null, null));
                    }
                }
                    
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    @Override
    public OperationResponse NDUAccount(AccountForm form, int accountId) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        String query = "{call ndu_contact(?,?,?,?,?,?,?,?,?)}";
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall(query)) {
            callableStatement.setInt(1, accountId);
            callableStatement.setInt(2, form.getId());
            callableStatement.setInt(3, 1);
            callableStatement.setString(4, form.getUsername());
            callableStatement.setString(5, form.getNewPassword());
            callableStatement.setString(6, form.getPassword());
            callableStatement.setString(7, form.getFname());
            callableStatement.setString(8, form.getLname());
            callableStatement.setString(9, form.getMname());
            
            callableStatement.executeUpdate();
            operationResponse.setCode(ResultCode.OK);
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }
    
}
