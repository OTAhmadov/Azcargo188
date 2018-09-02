/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.product.web.db;

import java.sql.*;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Hasanov
 * @date Mar 23, 2016
 *
 */

@Repository
public class DbConnect {
    
    @Autowired
    private DataSource postgresDataSource;
    
    public Connection getPostgresConnection() throws SQLException {
        return postgresDataSource.getConnection();
    }
}
