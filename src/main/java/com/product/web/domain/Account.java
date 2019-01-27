/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.domain;

import lombok.Data;

/**
 *
 * @author otahmadov
 */
@Data
public class Account {
    private int id;
    private String username;
    private String firstname;
    private String lastname;
    private String middlename;
    private String password;
    private String userType;
    private Roles role;
    
    public Account(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public Account(int id, String username) {
        this.id = id;
        this.username = username;
    }

    public Account(int id, String username, String firstname, String lastname, String middlename, String userType, Roles role) {
        this.id = id;
        this.username = username;
        this.firstname = firstname;
        this.lastname = lastname;
        this.middlename = middlename;
        this.userType = userType;
        this.role = role;
    }
}
