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
    private Company company;

    public Account(int id, String username, String password, Company company) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.company = company;
    }

    public Account(int id, String username, Company company) {
        this.id = id;
        this.username = username;
        this.company = company;
    }

    public Account(int id, String username, String firstname, String lastname, String middlename, Company company) {
        this.id = id;
        this.username = username;
        this.firstname = firstname;
        this.lastname = lastname;
        this.middlename = middlename;
        this.company = company;
    }
}
