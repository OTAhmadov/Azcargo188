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
public class CareerApply {
    private int id;
    private Career career;
    private String fullname;
    private String phone;
    private String birthdate;
    private DictionaryWrapper experience;
    private DictionaryWrapper drivingLicense;
    private int fileId;
    private String filePath;
    private String createDate;

    public CareerApply(int id, Career career, String fullname, String phone, String birthdate, DictionaryWrapper experience, DictionaryWrapper drivingLicense, int fileId, String filePath, String createDate) {
        this.id = id;
        this.career = career;
        this.fullname = fullname;
        this.phone = phone;
        this.birthdate = birthdate;
        this.experience = experience;
        this.drivingLicense = drivingLicense;
        this.fileId = fileId;
        this.filePath = filePath;
        this.createDate = createDate;
    }
    
}
