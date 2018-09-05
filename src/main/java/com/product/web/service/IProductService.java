/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.service;

import com.product.web.domain.Account;
import com.product.web.domain.DictionaryWrapper;
import com.product.web.domain.OperationResponse;
import com.product.web.form.DictionaryWrapperForm;
import com.product.web.form.LoginForm;
import java.util.List;

/**
 *
 * @author otahmadov
 */
public interface IProductService {
    public Account doLogin(LoginForm form);
    public List<DictionaryWrapper> getDictionaryTypeList();
    public List<DictionaryWrapper> getDictionaryList(int dicTypeId);
    public OperationResponse NDUDictionary(DictionaryWrapperForm form, int accountId);
}
