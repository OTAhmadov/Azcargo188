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
public class CareerForm extends CommonForm {
    private String startSalary;
    private String endSalary;
    private String startDate;
    private String endDate;
    private int status;
    
    
}
