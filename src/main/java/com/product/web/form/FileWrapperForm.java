/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.form;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author otahmadov
 */
public class FileWrapperForm extends CommonForm{
    private String originalName;
    private String path;
    private MultipartFile file;
    private String contentType;

    public FileWrapperForm() {
    }

    public String getOriginalName() {
        return originalName;
    }

    public void setOriginalName(String originalName) {
        this.originalName = originalName;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    @Override
    public String toString() {
        return "FileWrapperForm{" + "originalName=" + originalName + ", path=" + path + ", file=" + file + ", contentType=" + contentType + '}';
    }
}
