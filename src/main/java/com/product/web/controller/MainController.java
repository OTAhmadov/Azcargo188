/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.controller;

import com.product.web.domain.About;
import com.product.web.domain.Company;
import com.product.web.domain.Contact;
import com.product.web.domain.DictionaryWrapper;
import com.product.web.domain.Product;
import com.product.web.form.ProductForm;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author otahmadov
 */
@Controller
public class MainController extends SkeletonController {
    private static final Logger log = Logger.getLogger(MainController.class);
    
    @GetMapping("/index")
    protected String showHomePage(Model model) {
//        ProductForm form = new ProductForm();
//        form.setPriority(1);
//        form.setPageCount(6);
//        List<Product> favoriteProducts = service.getProductList(form);
//        List<FileWrapper> fileList = service.getOtherFile();
//        model.addAttribute("favorite", favoriteProducts);
//        model.addAttribute("titleImage", fileList);
        return "index";
    }
    
    @GetMapping("/about")
    protected String showAboutPage(Model model) {
        
//        About about = service.getAbout();
//        model.addAttribute("pagename", "about");
//        model.addAttribute("about", about);
        return "about";
    }
    
    @GetMapping("/contact")
    protected String showContactPage(Model model) {
//        Company company = service.getCompanyInfo();
//        List<Contact> contacts = service.getContactList();
//        model.addAttribute("pagename", "contact");
//        model.addAttribute("company", company);
//        model.addAttribute("contacts", contacts);
        return "contact";
    }
    
    @GetMapping("/promotion")
    protected String showPromotionPage(Model model) {
        return "promotion";
    }
    
    @GetMapping("/achievement")
    protected String showAchievementPage(Model model) {
        return "achievement";
    }
    
    @GetMapping("/career")
    protected String showCareerPage(Model model) {
        return "career";
    }
    
    @GetMapping("/corporative")
    protected String showCorporativePage(Model model) {
        return "corporative";
    }
    
    @GetMapping("/service")
    protected String showServicePage(Model model) {
        
       
        return "service";
    }
    
    @GetMapping("/service/{id:\\d+}")
    protected String showServiceDetailsPage(Model model,
                                            @PathVariable int id) {
        
        return "service_details";
    }
}
