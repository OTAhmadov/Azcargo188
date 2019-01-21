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
public class CommonApply {
    private int id;
    private String name;
    private String description;
    private String email;
    private String ipAddress;
    private String createDate;

    public CommonApply(int id, String name, String description, String email, String ipAddress, String createDate) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.email = email;
        this.ipAddress = ipAddress;
        this.createDate = createDate;
    }
}
