/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.dao;

import com.product.web.db.DbConnect;
import com.product.web.domain.Account;
import com.product.web.domain.Company;
import com.product.web.form.LoginForm;
import com.product.web.util.Crypto;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
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
    
}
