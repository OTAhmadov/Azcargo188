/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.controller;

import com.product.web.domain.About;
import com.product.web.domain.Achievement;
import com.product.web.domain.Career;
import com.product.web.domain.Contact;
import com.product.web.domain.FileWrapper;
import com.product.web.domain.Promotation;
import com.product.web.domain.Service;
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
//        model.addAttribute("favorite", favoriteProducts);
        List<FileWrapper> fileList = service.getOtherFile();
        model.addAttribute("titleImage", fileList);
         model.addAttribute("pagename", "index");
        return "index";
    }
    
    @GetMapping("/about")
    protected String showAboutPage(Model model) {
        //bu hissede About sehifesinin asagisindaki statistik melumatlarin hansilar olacagi deqiqlesdirilib gonderilecek
        About about = service.getAbout();
        model.addAttribute("pagename", "about");
        model.addAttribute("about", about);
        return "about";
    }
    
    @GetMapping("/contact")
    protected String showContactPage(Model model) {
        List<Contact> contacts = service.getContactList();
        model.addAttribute("pagename", "contact");
        model.addAttribute("contacts", contacts);
        return "contact";
    }
    
    @GetMapping("/promotion")
    protected String showPromotionPage(Model model) {
        List<Promotation> list = service.getPromotationListForCommon();
        model.addAttribute("pagename", "promotion");
        model.addAttribute("promotion", list);
        return "promotion";
    }
    
    @GetMapping("/achievement")
    protected String showAchievementPage(Model model) {
        List<Achievement> list = service.getAchievementList();
        model.addAttribute("pagename", "achievement");
        model.addAttribute("promotion", list);
        return "achievement";
    }
    
    @GetMapping("/career")
    protected String showCareerPage(Model model) {
        List<Career> list = service.getCareerListForCommon();
        model.addAttribute("pagename", "career");
        model.addAttribute("promotion", list);
        return "career";
    }
    
    @GetMapping("/corporative")
    protected String showCorporativePage(Model model) {
        model.addAttribute("pagename", "corporative");
        return "corporative";
    }
    
    @GetMapping("/service")
    protected String showServicePage(Model model) {
        
       model.addAttribute("pagename", "service");
        return "service";
    }
    
    @GetMapping("/service/{id:\\d+}")
    protected String showServiceDetailsPage(Model model,
                                            @PathVariable int id) {
        
        List<Service> list = service.getServiceListByParentForCommon(id);
        model.addAttribute("pagename", "service");
        model.addAttribute("service", list);
        return "service_details";
    }
    
    @GetMapping("/career/{id:\\d+}")
    protected String showCareerDetailsPage(Model model,
                                            @PathVariable int id) {
        Career career = service.getCareerDetails(id);
        model.addAttribute("pagename", "career");
        model.addAttribute("career", career);
        return "career_details";
    }
    
    @GetMapping("/achievement/{id:\\d+}")
    protected String showAchievementDetailsPage(Model model,
                                            @PathVariable int id) {
        Achievement achievement = service.getAchievementDetails(id);
        model.addAttribute("pagename", "achievement");
        model.addAttribute("achievement", achievement);
        return "achievement_details";
    }
}
