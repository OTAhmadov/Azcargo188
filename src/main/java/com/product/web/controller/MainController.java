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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author shasanov
 */
@Controller
public class MainController extends SkeletonController {
    private static final Logger log = Logger.getLogger(MainController.class);
    
    @GetMapping("/main")
    protected String showHomePage(Model model) {
        List<MultilanguageString> string = new ArrayList<>();
        
        string.add(new MultilanguageString("az", "az", "az"));
        string.add(new MultilanguageString("en", "en", "en"));
        string.add(new MultilanguageString("ru", "ru", "ru"));
        model.addAttribute("test", "test");
        model.addAttribute("language", string);
        return "main";
    }
}
