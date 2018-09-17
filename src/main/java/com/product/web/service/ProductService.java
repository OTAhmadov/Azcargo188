/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.service;

import com.product.web.dao.AdminDao;
import com.product.web.domain.About;
import com.product.web.domain.Account;
import com.product.web.domain.Contact;
import com.product.web.domain.DictionaryWrapper;
import com.product.web.domain.FileWrapper;
import com.product.web.domain.OperationResponse;
import com.product.web.form.AboutForm;
import com.product.web.form.AccountForm;
import com.product.web.form.ContactForm;
import com.product.web.form.DictionaryWrapperForm;
import com.product.web.form.FileWrapperForm;
import com.product.web.form.LoginForm;
import com.product.web.form.ProductForm;
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
    
    @Override
    public List<Contact> getContactList() {
        return this.adminDao.getContactList();
    }
    
    @Override
    public Contact getContactDetails(int id) {
        return this.adminDao.getContactDetails(id);
    }
    
    @Override
    public OperationResponse NDUContact(ContactForm form, int accountId){
        return this.adminDao.NDUContact(form, accountId);
    }
    
    @Override
    public About getAbout() {
        return this.adminDao.getAbout();
    }
    
    @Override
    public OperationResponse NDUAbout(AboutForm form, int accountId){
        return this.adminDao.NDUAbout(form, accountId);
    }
    
    @Override
    public List<Account> getAccountList(){
        return this.adminDao.getAccountList();
    }
    
    @Override
    public Account getAccountDetails(int id) {
        return this.adminDao.getAccountDetails(id);
    }
    
    @Override
    public OperationResponse NDUAccount(AccountForm form, int accountId) {
        return this.adminDao.NDUAccount(form, accountId);
    }
    
    @Override
    public FileWrapper getFileByPath(String path) {
        return this.adminDao.getFileByPath(path);
    }
    
    @Override
    public OperationResponse removeFile(int accountId, String path) {
        return this.adminDao.removeFile(accountId, path);
    }
    
    @Override
    public OperationResponse NDUProduct(Account account, ProductForm form) {
        return this.adminDao.NDUProduct(account, form);
    }
    
    @Override
    public OperationResponse addProductFile(Account account, int productId, FileWrapperForm form) {
        return this.adminDao.addProductFile(account, productId, form);
    }
}
