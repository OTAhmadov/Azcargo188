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
import com.product.web.domain.FileWrapper;
import com.product.web.domain.MultilanguageString;
import com.product.web.domain.OperationResponse;
import com.product.web.domain.Product;
import com.product.web.enums.ResultCode;
import com.product.web.form.ProductForm;
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
        ProductForm form = new ProductForm();
        form.setPriority(1);
        form.setPageCount(6);
        List<Product> favoriteProducts = service.getProductList(form);
        List<FileWrapper> fileList = service.getOtherFile();
        model.addAttribute("favorite", favoriteProducts);
        model.addAttribute("titleImage", fileList);
        return "index";
    }
    
    @GetMapping("/about")
    protected String showAboutPage(Model model) {
        
        About about = service.getAbout();
        model.addAttribute("pagename", "about");
        model.addAttribute("about", about);
        return "about";
    }
    
    @GetMapping("/contact")
    protected String showContactPage(Model model) {
        Company company = service.getCompanyInfo();
        List<Contact> contacts = service.getContactList();
        model.addAttribute("pagename", "contact");
        model.addAttribute("company", company);
        model.addAttribute("contacts", contacts);
        return "contact";
    }
    
    @GetMapping("/product")
    protected String showProductPage(Model model,
                                        ProductForm form) {
        
        form.setPage(form.getPage() < 1 ? 1 : form.getPage());
        List<DictionaryWrapper> categoryList = service.getCategoryListWithCount();
        List<Product> productList = service.getProductList(form);
        int count = service.getProductCount(form.getTypeId(), form.getName());
        model.addAttribute("productList", productList);
        model.addAttribute("count", count);
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("page", form.getPage());
        model.addAttribute("type", form.getTypeId());
        model.addAttribute("pagename", "product");
        return "products";
    }
    
    @GetMapping("/product/{id:\\d+}")
    protected String showProductDetailsPage(Model model,
                                            @PathVariable int id) {
        
        Product product = service.getProductDetails(id);
        ProductForm form = new ProductForm();
        form.setPageCount(4);
        form.setTypeId(product.getType().getId());
        List<Product> reletedProduct = service.getProductList(form);
        model.addAttribute("product", product);
        model.addAttribute("releted", reletedProduct);
        return "product_details";
    }
}
