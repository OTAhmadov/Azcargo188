/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.controller;

import com.product.web.domain.Account;
import com.product.web.form.LoginForm;
import com.product.web.util.WebUtils;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author otahmadov
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController extends SkeletonController {
    private Logger log = Logger.getLogger(AdminController.class);
    
    @GetMapping
    protected String showLoginPage() {
        
        try {
            if(getSessionAccount() != null) {
                return "admin";
            }
            
            return "login";
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return "redirect:/main";
    }
    
    @PostMapping("/login")
    protected String doLogin(Model model,
                             LoginForm form) {
        
        try {
            
            form.setIpadress(WebUtils.getIpAddress(request));
            Account account = service.doLogin(form);
            
            if(account == null) {
                model.addAttribute("error", "Invalid username/password");
                throw new Exception("Invalid username/password. LoginForm: " + form);
            }
            
            HttpSession session = request.getSession(true);
            session.setAttribute("account", account);
            return "redirect:/admin";
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return "redirect:/login";
    }
}
