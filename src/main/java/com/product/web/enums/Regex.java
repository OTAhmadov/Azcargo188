/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.enums;

/**
 *
 * @author shasanov
 */
public class Regex {
    public static final String EMAIL = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    public static final String DATE = "^[0-3][0-9]\\.[0-1][0-9]\\.[1-2][0-9]{3}$";
    public static final String NUMBER = "[0-9]+";
    public static final String IMAGE_CONTENT_TYPE = "^(image\\/jpeg|image\\/png)$";
    public static final String PDF = "application\\/pdf";
    public static final String TXT = "text\\/plain";
    public static final String DOC = "application/msword";
    public static final String DOCX = "application\\/vnd\\.openxmlformats-officedocument\\.wordprocessingml\\.document";
    public static final String XLS = "application\\/vnd\\.ms-excel";
    public static final String XLSX ="application\\/vnd\\.openxmlformats-officedocument\\.spreadsheetml\\.sheet";
    public static final String FILE_CONTENT_TYPE ="^(" + Regex.PDF + "|" + Regex.TXT + "|" + Regex.DOC + "|" + Regex.DOCX +"|" + Regex.XLS + "|" + Regex.XLSX + "|image\\/jpeg|image\\/png)$";
}
