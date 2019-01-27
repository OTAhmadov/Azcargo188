/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.form;

import lombok.Data;

/**
 *
 * @author otahmadov
 */
@Data
public class RoleForm {
    private int id;
    private String nameAz;
    private String nameEn;
    private String nameRu;
    private Integer[] moduleId;
    
    public RoleForm() {
    }
}
