/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.domain;

import java.util.List;
import lombok.Data;

/**
 *
 * @author otahmadov
 */
@Data
public class Product {
    private int id;
    private Company company;
    private DictionaryWrapper type;
    private String name;
    private String description;
    private String receiptDescription;
    private int count;
    private String price;
    private List<FileWrapper> images;
    private int priority;
    public Product() {
    }

    public Product(int id, Company company, DictionaryWrapper type, String name, String description, String receiptDescription, int count, String price, List<FileWrapper> images, int priority) {
        this.id = id;
        this.company = company;
        this.type = type;
        this.name = name;
        this.description = description;
        this.receiptDescription = receiptDescription;
        this.count = count;
        this.price = price;
        this.images = images;
        this.priority = priority;
    }
    
}
