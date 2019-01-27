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
public class Modules {
    private int id;
    private MultilanguageString name;
    private String url;
    private String icon;
    private String type;

    public Modules(int id, MultilanguageString name, String url, String icon, String type) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.icon = icon;
        this.type = type;
    }
    
}
