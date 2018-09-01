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
public class DictionaryWrapper {
    private int id;
    private int type;
    private MultilanguageString value;
    private int parentId;
    private String icon;

    public DictionaryWrapper() {
    }

    public DictionaryWrapper(int id, MultilanguageString value) {
        this.id = id;
        this.value = value;
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

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public MultilanguageString getValue() {
        return value;
    }

    public void setValue(MultilanguageString value) {
        this.value = value;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    @Override
    public String toString() {
        return "DictionaryWrapper{" + "id=" + id + ", type=" + type + ", value=" + value + ", parentId=" + parentId + ", icon=" + icon + '}';
    }
}
