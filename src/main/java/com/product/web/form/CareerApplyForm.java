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
public class CareerApplyForm {
    private int careerId;
    private String fullname;
    private String phone;
    private String birthdate;
    private int experienceId;
    private int drivingLicenseId;
    private int fileId;
}
