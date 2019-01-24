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
public class Common {
    private int id;
    private String titleAz;
    private String titleEn;
    private String titleRu;
    private String descriptionAz;
    private String descriptionEn;
    private String descriptionRu;
    private int fileId;
    private String filePath;

    public Common(int id, String titleAz, String titleEn, String titleRu, String descriptionAz, String descriptionEn, String descriptionRu, int fileId, String filePath) {
        this.id = id;
        this.titleAz = titleAz;
        this.titleEn = titleEn;
        this.titleRu = titleRu;
        this.descriptionAz = descriptionAz;
        this.descriptionEn = descriptionEn;
        this.descriptionRu = descriptionRu;
        this.fileId = fileId;
        this.filePath = filePath;
    }

    public Common(String titleAz, String descriptionAz) {
        this.titleAz = titleAz;
        this.descriptionAz = descriptionAz;
    }
}
