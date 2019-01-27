/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.dao;

import com.product.web.domain.About;
import com.product.web.domain.Account;
import com.product.web.domain.Achievement;
import com.product.web.domain.Career;
import com.product.web.domain.CareerApply;
import com.product.web.domain.CommonApply;
import com.product.web.domain.Company;
import com.product.web.domain.Contact;
import com.product.web.domain.Corporative;
import com.product.web.domain.DictionaryWrapper;
import com.product.web.domain.FileWrapper;
import com.product.web.domain.Modules;
import com.product.web.domain.OperationResponse;
import com.product.web.domain.Product;
import com.product.web.domain.Promotation;
import com.product.web.domain.RoleAccess;
import com.product.web.domain.Roles;
import com.product.web.domain.Service;
import com.product.web.form.AboutForm;
import com.product.web.form.AccountForm;
import com.product.web.form.AchievementForm;
import com.product.web.form.CareerApplyForm;
import com.product.web.form.CareerForm;
import com.product.web.form.CommonApplyForm;
import com.product.web.form.ContactForm;
import com.product.web.form.DictionaryWrapperForm;
import com.product.web.form.FileWrapperForm;
import com.product.web.form.LoginForm;
import com.product.web.form.ProductForm;
import com.product.web.form.PromotationForm;
import com.product.web.form.RoleForm;
import com.product.web.form.ServiceForm;
import java.util.List;

/**
 *
 * @author otahmadov
 */
public interface IAdminDao {
    public Account doLogin(LoginForm form);
    
    public List<DictionaryWrapper> getDictionaryTypeList();
    public List<DictionaryWrapper> getDictionaryList(int dicTypeId);
    public List<DictionaryWrapper> getDictionaryListByParent(int parentId);
    public OperationResponse NDUDictionary(DictionaryWrapperForm form, int accountId);
    
    public List<Contact> getContactList();
    public Contact getContactDetails(int id);
    public OperationResponse NDUContact(ContactForm form, int accountId);
    
    public About getAbout();
    public OperationResponse NDUAbout(AboutForm form, int accountId);
    
    public List<Account> getAccountList();
    public Account getAccountDetails(int id);
    public OperationResponse NDUAccount(AccountForm form, int accountId);
    
    public FileWrapper getFileByPath(String path);
    public OperationResponse removeFile(int accountId, String path);
    
    public OperationResponse addProductFile(Account account, int productId, FileWrapperForm form);
    public OperationResponse addOtherFile(Account account, FileWrapperForm form);
    public List<FileWrapper> getOtherFile();
    public List<Product> getProductList(ProductForm form);
    public Product getProductDetails(int productId);
    public List<FileWrapper> getProductFileList(int productId);
    
    public List<DictionaryWrapper> getCategoryListWithCount();
    
    public int getProductCount(int typeId, String name);
    
    public Company getCompanyInfo();
    
    
    public List<Achievement> getAchievementList();
    public Achievement getAchievementDetails(int id);
    public OperationResponse NDUAchievement(AchievementForm form, int accountId);
    
    public List<Career> getCareerList();
    public List<Career> getCareerListForCommon();
    
    public Career getCareerDetails(int id);
    public List<CareerApply> getCareerApplyList();
    public CareerApply getCareerApplyDetails(int id);
    public OperationResponse insertCareerApply(CareerApplyForm form);
    public OperationResponse NDUCareer(CareerForm form, int accountId);
    public OperationResponse ADCareer(CareerForm form, int accountId);
    
    public List<Promotation> getPromotationList();
    public List<Promotation> getPromotationListForCommon();
    public Promotation getPromotationDetails(int id);
    public OperationResponse NDUPromotation(PromotationForm form, int accountId);
    
    public List<Service> getServiceList();
    public List<Service> getServiceListByParentForCommon(int id);
    public Service getServiceDetails(int id);
    public Service getServiceByType(int id, int typeId);
    public OperationResponse NDUService(ServiceForm form, int accountId);
    
    public OperationResponse addFile(FileWrapperForm form);
    
    public List<Corporative> getCorporativeList();
    public Corporative getCorporativeDetails(int id);
    
    
    public OperationResponse insertCommonApply(CommonApplyForm form);
    public List<CommonApply> getCommonApplyList();
    public CommonApply getCommonApplyDetail(int id);
    
    public OperationResponse NDURole(RoleForm form, int accountId);
    public List<Roles> getRoleList();
    public Roles getRoleDetails(int id);
    public List<Modules> getModuleList();
}
