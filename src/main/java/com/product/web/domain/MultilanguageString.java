/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.domain;

/**
 *
 * @author shasanov
 */
public class MultilanguageString {
    private String az;
    private String en;
    private String ru;

    public MultilanguageString() {
    }

    public MultilanguageString(String az, String en, String ru) {
        this.az = az;
        this.en = en;
        this.ru = ru;
    }

    public String getRu() {
        return ru;
    }

    public void setRu(String ru) {
        this.ru = ru;
    }

    public String getAz() {
        return az;
    }

    public void setAz(String az) {
        this.az = az;
    }

    public String getEn() {
        return en;
    }

    public void setEn(String en) {
        this.en = en;
    }

    @Override
    public String toString() {
        return "MultilanguageString{" + "az=" + az + ", en=" + en + ", ru=" + ru + '}';
    }
}
