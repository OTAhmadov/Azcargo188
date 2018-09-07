/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.domain;

import lombok.Data;

/**
 *
 * @author Orkhan
 */
@Data
public class Contact {
    private int id;
    private Company company;
    private DictionaryWrapper type;
    private String contact;

    public Contact() {
    }

    public Contact(int id, Company company, DictionaryWrapper type, String contact) {
        this.id = id;
        this.company = company;
        this.type = type;
        this.contact = contact;
    }
    
}
