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
public class Corporative {
    private int id;
    private String fullname;
    private String companyName;
    private String companyVoen;
    private String position;
    private String phone;
    private String email;
    private String descriptionAz;
    private int fileId;
    private String filePath;
    private String createDate;

    public Corporative() {
    }

    public Corporative(int id, String fullname, String companyName, String companyVoen, String position, String phone, String email, String descriptionAz, int fileId, String filePath, String createDate) {
        this.id = id;
        this.fullname = fullname;
        this.companyName = companyName;
        this.companyVoen = companyVoen;
        this.position = position;
        this.phone = phone;
        this.email = email;
        this.descriptionAz = descriptionAz;
        this.fileId = fileId;
        this.filePath = filePath;
        this.createDate = createDate;
    }

}
