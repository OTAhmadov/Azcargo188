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
public class Achievement extends Common {
    private String achievementDate;


    public Achievement(String achievementDate, int id, String titleAz, String titleEn, String titleRu, String descriptionAz, String descriptionEn, String descriptionRu, int fileId, String filePath) {
        super(id, titleAz, titleEn, titleRu, descriptionAz, descriptionEn, descriptionRu, fileId, filePath);
        this.achievementDate = achievementDate;
    }
}
