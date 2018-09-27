/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.controller;

import com.product.web.domain.MultilanguageString;
import com.product.web.domain.OperationResponse;
import com.product.web.enums.ResultCode;
import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author otahmadov
 */
@Controller
public class MainController extends SkeletonController {
    private static final Logger log = Logger.getLogger(MainController.class);
    
    @GetMapping("/index")
    protected String showHomePage(Model model) {
        List<MultilanguageString> string = new ArrayList<>();
        
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        model.addAttribute("test", "test");
        model.addAttribute("language", string);
        return "index";
    }
    
    @GetMapping("/about")
    protected String showAboutPage(Model model) {
        List<MultilanguageString> string = new ArrayList<>();
        
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        model.addAttribute("test", "test");
        model.addAttribute("language", string);
        return "about";
    }
    
    @GetMapping("/contact")
    protected String showContactPage(Model model) {
        List<MultilanguageString> string = new ArrayList<>();
        
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        model.addAttribute("test", "test");
        model.addAttribute("language", string);
        return "contact";
    }
    
    @GetMapping("/product")
    protected String showProductPage(Model model) {
        List<MultilanguageString> string = new ArrayList<>();
        
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        model.addAttribute("test", "test");
        model.addAttribute("language", string);
        return "products";
    }
    
    @GetMapping("/product/{id:\\d+}")
    protected String showProductDetailsPage(Model model,
                                            @PathVariable int id) {
        List<MultilanguageString> string = new ArrayList<>();
        
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        string.add(new MultilanguageString("az", "en", "ru"));
        model.addAttribute("test", "test");
        model.addAttribute("language", string);
        return "product_details";
    }
}
