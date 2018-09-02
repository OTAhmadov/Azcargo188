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
public class Company {
    private int id;
    private String name;
    private DictionaryWrapper city;
    private String address;
    private String longitude;
    private String latitude;

    public Company() {
    }

    public Company(int id, String name, DictionaryWrapper city, String address, String longitude, String latitude) {
        this.id = id;
        this.name = name;
        this.city = city;
        this.address = address;
        this.longitude = longitude;
        this.latitude = latitude;
    }

    public Company(int id, String name, DictionaryWrapper city, String address) {
        this.id = id;
        this.name = name;
        this.city = city;
        this.address = address;
    }
    
    
}
