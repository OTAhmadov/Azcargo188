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
public class DictionaryWrapper {
    private int id;
    private int type;
    private MultilanguageString value;
    private MultilanguageString about;
    private int parentId;
    private String icon;
    private int count;
    public DictionaryWrapper() {
    }

    public DictionaryWrapper(int id, MultilanguageString value) {
        this.id = id;
        this.value = value;
    }
    public DictionaryWrapper(int id, MultilanguageString value, int count) {
        this.id = id;
        this.value = value;
        this.count = count;
    }

    public DictionaryWrapper(int id, MultilanguageString value, String icon) {
        this.id = id;
        this.value = value;
        this.icon = icon;
    }
    
    public DictionaryWrapper(int id, int type, MultilanguageString value, String icon) {
        this.id = id;
        this.type = type;
        this.value = value;
        this.icon = icon;
    }

    public DictionaryWrapper(int id, int type, MultilanguageString value, int parentId) {
        this.id = id;
        this.type = type;
        this.value = value;
        this.parentId = parentId;
    }

    public DictionaryWrapper(int id, int type, MultilanguageString value, MultilanguageString about, int parentId, String icon) {
        this.id = id;
        this.type = type;
        this.value = value;
        this.about = about;
        this.parentId = parentId;
        this.icon = icon;
    }

}
