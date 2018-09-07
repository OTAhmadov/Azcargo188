/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.form;

/**
 *
 * @author Nazrin
 */
public class AboutForm {
    private int id;
    private String title;
    private String contentAz;
    private String contentEn;
    private String contentRu;

    public AboutForm() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContentAz() {
        return contentAz;
    }

    public void setContentAz(String contentAz) {
        this.contentAz = contentAz;
    }

    public String getContentEn() {
        return contentEn;
    }

    public void setContentEn(String contentEn) {
        this.contentEn = contentEn;
    }

    public String getContentRu() {
        return contentRu;
    }

    public void setContentRu(String contentRu) {
        this.contentRu = contentRu;
    }

    @Override
    public String toString() {
        return "AboutForm{" + "id=" + id + ", title=" + title + ", contentAz=" + contentAz + ", contentEn=" + contentEn + ", contentRu=" + contentRu + '}';
    }
}
