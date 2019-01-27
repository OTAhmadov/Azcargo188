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
public class RoleAccess {
   private int id;
   private Roles role;
   private Modules module;

    public RoleAccess(int id, Roles role, Modules module) {
        this.id = id;
        this.role = role;
        this.module = module;
    }
}
