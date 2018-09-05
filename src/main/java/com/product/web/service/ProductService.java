/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.service;

import com.product.web.dao.AdminDao;
import com.product.web.domain.Account;
import com.product.web.domain.DictionaryWrapper;
import com.product.web.domain.OperationResponse;
import com.product.web.form.DictionaryWrapperForm;
import com.product.web.form.LoginForm;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Orkhan
 */
@Service
public class ProductService implements IProductService {
    private static Logger log = Logger.getLogger(ProductService.class);

    @Autowired
    private AdminDao adminDao;
    
    @Override
    public Account doLogin(LoginForm form) {
        return this.adminDao.doLogin(form);
    }
    
    @Override
    public List<DictionaryWrapper> getDictionaryTypeList() {
        return this.adminDao.getDictionaryTypeList();
    }
    
    @Override
    public List<DictionaryWrapper> getDictionaryList(int dicTypeId){
        return this.adminDao.getDictionaryList(dicTypeId);
    }
    
    @Override
    public OperationResponse NDUDictionary(DictionaryWrapperForm form, int accountId){
        return this.adminDao.NDUDictionary(form, accountId);
    }
}
