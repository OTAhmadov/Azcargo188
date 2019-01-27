/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.domain;

import java.util.List;
import lombok.Data;

/**
 *
 * @author otahmadov
 */
@Data
public class Roles {
    private int id;
    private MultilanguageString name;
    private List<Modules> modules;
    
    public Roles(int id, MultilanguageString name, List<Modules> modules) {
        this.id = id;
        this.name = name;
        this.modules = modules;
    }
}
