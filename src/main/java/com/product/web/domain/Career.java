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
public class Career extends Common {
    private String startSalary;
    private String endSalary;
    private String startDate;
    private String endDate;
    private DictionaryWrapper status;
    
    public Career(String startSalary, String endSalary, String startDate, String endDate, DictionaryWrapper status, int id, String titleAz, String titleEn, String titleRu, String descriptionAz, String descriptionEn, String descriptionRu, int fileId, String filePath) {
        super(id, titleAz, titleEn, titleRu, descriptionAz, descriptionEn, descriptionRu, fileId, filePath);
        this.startSalary = startSalary;
        this.endSalary = endSalary;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }

    public Career(String titleAz, String descriptionAz) {
        super(titleAz, descriptionAz);
    }
    
}
