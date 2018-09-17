/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.form;

/**
 *
 * @author otahmadov
 */
public class ProductForm {
    private int id;
    private int companyId;
    private int typeId;
    private String name;
    private String description;
    private String receiptDescription;
    private int count;
    private int priority;
    private String price;
    private FileWrapperForm[] files;

    public ProductForm() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getReceiptDescription() {
        return receiptDescription;
    }

    public void setReceiptDescription(String receiptDescription) {
        this.receiptDescription = receiptDescription;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public FileWrapperForm[] getFiles() {
        return files;
    }

    public void setFiles(FileWrapperForm[] files) {
        this.files = files;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    @Override
    public String toString() {
        return "ProductForm{" + "id=" + id + ", companyId=" + companyId + ", typeId=" + typeId + ", name=" + name + ", description=" + description + ", receiptDescription=" + receiptDescription + ", count=" + count + ", priority=" + priority + ", price=" + price + ", files=" + files + '}';
    }

}
