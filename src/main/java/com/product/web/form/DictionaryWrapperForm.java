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
public class DictionaryWrapperForm {
    private int id;
    private int parentId;
    private int dicTypeId;
    private String nameAz;
    private String nameEn;
    private String nameRu;
    private String aboutAz;
    private String aboutEn;
    private String aboutRu;

    public DictionaryWrapperForm() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public int getDicTypeId() {
        return dicTypeId;
    }

    public void setDicTypeId(int dicTypeId) {
        this.dicTypeId = dicTypeId;
    }

    public String getNameAz() {
        return nameAz;
    }

    public void setNameAz(String nameAz) {
        this.nameAz = nameAz;
    }

    public String getNameEn() {
        return nameEn;
    }

    public void setNameEn(String nameEn) {
        this.nameEn = nameEn;
    }

    public String getNameRu() {
        return nameRu;
    }

    public void setNameRu(String nameRu) {
        this.nameRu = nameRu;
    }

    public String getAboutAz() {
        return aboutAz;
    }

    public void setAboutAz(String aboutAz) {
        this.aboutAz = aboutAz;
    }

    public String getAboutEn() {
        return aboutEn;
    }

    public void setAboutEn(String aboutEn) {
        this.aboutEn = aboutEn;
    }

    public String getAboutRu() {
        return aboutRu;
    }

    public void setAboutRu(String aboutRu) {
        this.aboutRu = aboutRu;
    }

    @Override
    public String toString() {
        return "DictionaryWrapperForm{" + "id=" + id + ", parentId=" + parentId + ", dicTypeId=" + dicTypeId + ", nameAz=" + nameAz + ", nameEn=" + nameEn + ", nameRu=" + nameRu + ", aboutAz=" + aboutAz + ", aboutEn=" + aboutEn + ", aboutRu=" + aboutRu + '}';
    }
}
