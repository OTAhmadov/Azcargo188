/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.validation;

import com.product.web.enums.Regex;
import com.product.web.form.FileWrapperForm;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author otahmadov
 */
public class FileWrapperFormValidator implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return FileWrapperForm.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        FileWrapperForm form = (FileWrapperForm) o;
        
        if( form.getFile()!= null && form.getFile().getSize()>0 && !form.getFile().getContentType().matches(Regex.IMAGE_CONTENT_TYPE)) {
            errors.reject("invalid file content type");
        }
        
        if(form.getFile().getSize()> 5 * 1024 * 1024) {
            errors.reject("file size is more than 5 mb");
        }
    }
    
}
