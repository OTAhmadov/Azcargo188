/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.dao;

import com.product.web.domain.Account;
import com.product.web.form.LoginForm;

/**
 *
 * @author otahmadov
 */
public interface IAdminDao {
    public Account doLogin(LoginForm form);
}
