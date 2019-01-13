/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.domain;

/**
 *
 * @author otahmadov
 */
public class FileWrapper {
    private int id;
    private String path;
    private String fullPath;
    private String name;
    private String type;
    private byte[] file;

    public FileWrapper() {
    }

    public FileWrapper(int id) {
        this.id = id;
    }

    
    public FileWrapper(int id, String path, String name, String type, byte[] file) {
        this.id = id;
        this.path = path;
        this.name = name;
        this.type = type;
        this.file = file;
    }

    public FileWrapper(String path, String fullPath, String name, String type) {
        this.path = path;
        this.fullPath = fullPath;
        this.path = path;
        this.name = name;
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getFullPath() {
        return fullPath;
    }

    public void setFullPath(String fullPath) {
        this.fullPath = fullPath;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }
    
}
