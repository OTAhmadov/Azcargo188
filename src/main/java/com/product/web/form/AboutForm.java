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
public class AboutForm {
    private int id;
    private String titleAz;
    private String titleEn;
    private String titleRu;
    private String contentAz;
    private String contentEn;
    private String contentRu;

    public AboutForm() {
    }

    
}
