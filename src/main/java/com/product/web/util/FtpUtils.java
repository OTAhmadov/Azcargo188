/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.util;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Nazrin
 */
public class FtpUtils {
    public static final Map<String, String> EXTENSIONS = new HashMap<>();
    public static final Map<String, String> TYPES = new HashMap<>();
    
    static {
        EXTENSIONS.put("application/pdf", ".pdf");
        EXTENSIONS.put("image/jpeg", ".jpg");
        EXTENSIONS.put("image/png", ".png");
        EXTENSIONS.put("application/msword", ".doc");
        EXTENSIONS.put("application/vnd.openxmlformats-officedocument.wordprocessingml.document", ".docx");
        EXTENSIONS.put("application/vnd.ms-excel", ".xls");
        EXTENSIONS.put("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", ".xlsx");
        EXTENSIONS.put("application/vnd.ms-powerpoint", ".ppt");
        EXTENSIONS.put("application/vnd.openxmlformats-officedocument.presentationml.presentation", ".pptx");
        EXTENSIONS.put("text/plain", ".txt");
        
        TYPES.put("pdf", "application/pdf");
        TYPES.put("jpg", "image/jpeg");
        TYPES.put("jpeg", "image/jpeg");
        TYPES.put("png", "image/png");
    }
    
    public static final String getExtension(String contentType) {
        return EXTENSIONS.get(contentType);
    }
    
    public static final String getType(String extension) {
        return TYPES.get(extension);
    }
}
