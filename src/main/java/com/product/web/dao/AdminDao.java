/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.dao;

import com.product.web.db.DbConnect;
import com.product.web.domain.About;
import com.product.web.domain.Account;
import com.product.web.domain.Company;
import com.product.web.domain.Contact;
import com.product.web.domain.DictionaryWrapper;
import com.product.web.domain.FileWrapper;
import com.product.web.domain.MultilanguageString;
import com.product.web.domain.OperationResponse;
import com.product.web.domain.Product;
import com.product.web.enums.ResultCode;
import com.product.web.form.AboutForm;
import com.product.web.form.AccountForm;
import com.product.web.form.ContactForm;
import com.product.web.form.DictionaryWrapperForm;
import com.product.web.form.FileWrapperForm;
import com.product.web.form.LoginForm;
import com.product.web.form.ProductForm;
import com.product.web.util.Crypto;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author otahmadov
 */
@Repository
public class AdminDao implements IAdminDao {
    private static final Logger log = Logger.getLogger(AdminDao.class);

    @Autowired
    private DbConnect dbConnect;
    
    @Override
    public Account doLogin(LoginForm form) {
        
        try(Connection connection = dbConnect.getPostgresConnection()) {
            connection.setAutoCommit(false);
            try(CallableStatement callableStatement = connection.prepareCall("{? = call do_login(?,?,?,?)}")) {
                callableStatement.registerOutParameter(1, Types.OTHER);
                callableStatement.setString(2, form.getUsername());
                callableStatement.setString(3, Crypto.base64Encode(form.getPassword()));
                callableStatement.setString(4, form.getIpadress());
                callableStatement.setString(5, form.getDevice());
                callableStatement.execute();
                connection.commit();
                try(ResultSet resultSet = (ResultSet) callableStatement.getObject(1)) {
                    if(resultSet.next()) {
                        return new Account(resultSet.getInt("id"), 
                                            resultSet.getString("user_name"), 
                                            resultSet.getString("first_name"), 
                                            resultSet.getString("last_name"), 
                                            resultSet.getString("middle_name"));
                    }
                }
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    @Override
    public List<DictionaryWrapper> getDictionaryTypeList() {
        List<DictionaryWrapper> list = new ArrayList<>();
        String query = "Select * from dictionary_type d where d.protect is null";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query);
                ResultSet resultSet = preparedStatement.executeQuery()) {
            
            while(resultSet.next()) {
                list.add(new DictionaryWrapper(resultSet.getInt("id"), 
                                                new MultilanguageString(resultSet.getString("name"), 
                                                                        resultSet.getString("name"), 
                                                                        resultSet.getString("name"))));
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public List<DictionaryWrapper> getDictionaryList(int dicTypeId) {
        List<DictionaryWrapper> list = new ArrayList<>();
        String query = "Select * from dictionary d where d.dic_type_id = ? and d.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query)
                ) {
                preparedStatement.setInt(1, dicTypeId);
                
                try(ResultSet resultSet = preparedStatement.executeQuery()) {
                    while(resultSet.next()) {
                        list.add(new DictionaryWrapper(resultSet.getInt("id"), 
                                                        resultSet.getInt("dic_type_id"),
                                                new MultilanguageString(resultSet.getString("name_az"), 
                                                                        resultSet.getString("name_en"), 
                                                                        resultSet.getString("name_ru")),
                                                new MultilanguageString(resultSet.getString("about_az"), 
                                                                        resultSet.getString("about_en"), 
                                                                        resultSet.getString("about_ru")),
                                                resultSet.getInt("parent_id"),
                                                resultSet.getString("icon")));
                }
            
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public OperationResponse NDUDictionary(DictionaryWrapperForm form, int accountId) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        String query = "{call ndu_dictionary(?,?,?,?,?,?,?)}";
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall(query)) {
            callableStatement.setInt(1, accountId);
            callableStatement.setInt(2, form.getId());
            callableStatement.setInt(3, form.getParentId());
            callableStatement.setInt(4, form.getDicTypeId());
            callableStatement.setString(5, form.getNameAz());
            callableStatement.setString(6, form.getNameEn());
            callableStatement.setString(7, form.getNameRu());
            
            callableStatement.executeUpdate();
            operationResponse.setCode(ResultCode.OK);
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }

    @Override
    public List<Contact> getContactList() {
        List<Contact> list = new ArrayList<>();
        String query = "Select c.*, d.name_az, d.name_en, d.name_ru, d.icon from contacts c "
                        + "join dictionary d on d.id = c.type_id and d.active = 1 "
                        + "where c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query);
                ResultSet resultSet = preparedStatement.executeQuery()
                ) {
                    while(resultSet.next()) {
                        list.add(new Contact(resultSet.getInt("id"), 
                                              new Company(1, null, null, null),
                                              new DictionaryWrapper(resultSet.getInt("type_id"), 
                                                                    new MultilanguageString(resultSet.getString("name_az"), 
                                                                                            resultSet.getString("name_en"), 
                                                                                            resultSet.getString("name_ru")),
                                                                    resultSet.getString("icon")),
                                              resultSet.getString("contact")));
                }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public Contact getContactDetails(int id) {
        String query = "Select c.*, d.name_az, d.name_en, d.name_ru from contacts c "
                        + "join dictionary d on d.id = c.type_id and d.active = 1 "
                        + "where c.id = ? and c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query)
                
                ) {
                preparedStatement.setInt(1, id);
            
                try(ResultSet resultSet = preparedStatement.executeQuery()){
                    while(resultSet.next()) {
                        return new Contact(resultSet.getInt("id"), 
                                              new Company(1, null, null, null),
                                              new DictionaryWrapper(resultSet.getInt("type_id"), 
                                                                    new MultilanguageString(resultSet.getString("name_az"), 
                                                                                            resultSet.getString("name_en"), 
                                                                                            resultSet.getString("name_ru"))),
                                              resultSet.getString("contact"));
                    }
                }
                    
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    @Override
    public OperationResponse NDUContact(ContactForm form, int accountId) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        String query = "{call ndu_contact(?,?,?,?)}";
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall(query)) {
            callableStatement.setInt(1, accountId);
            callableStatement.setInt(2, form.getId());
            callableStatement.setInt(3, form.getTypeId());
            callableStatement.setString(4, form.getContact());
            
            callableStatement.executeUpdate();
            operationResponse.setCode(ResultCode.OK);
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }

    @Override
    public About getAbout() {
        String query = "Select * from about c where c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query);
                ResultSet resultSet = preparedStatement.executeQuery()
                
                ) {
                    if(resultSet.next()) {
                        return new About(resultSet.getInt("id"), 
                                            new MultilanguageString(resultSet.getString("title_az"), 
                                                                    resultSet.getString("title_en"), 
                                                                    resultSet.getString("title_ru")),
                                            new MultilanguageString(resultSet.getString("content_az"), 
                                                                    resultSet.getString("content_en"), 
                                                                    resultSet.getString("content_ru")));
                    }
                    
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    @Override
    public OperationResponse NDUAbout(AboutForm form, int accountId) {
         OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
            String query = "{call ndu_about(?,?,?,?,?,?,?,?)}";
            try(Connection connection = dbConnect.getPostgresConnection();
                CallableStatement callableStatement = connection.prepareCall(query)) {
                callableStatement.setInt(1, accountId);
                callableStatement.setInt(2, form.getId());
                callableStatement.setString(3, form.getTitleAz());
                callableStatement.setString(4, form.getTitleEn());
                callableStatement.setString(5, form.getTitleRu());
                callableStatement.setString(6, form.getContentAz());
                callableStatement.setString(7, form.getContentEn());
                callableStatement.setString(8, form.getContentRu());

                callableStatement.executeUpdate();
                operationResponse.setCode(ResultCode.OK);
            } 
            catch (Exception e) {
                log.error(e.getMessage(), e);
            }
        return operationResponse;
    }
    
    @Override
    public List<Account> getAccountList() {
        List<Account> list = new ArrayList<>();
        String query = "Select * from accounts c where c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query);
                ResultSet resultSet = preparedStatement.executeQuery()
                ) {
                    while(resultSet.next()) {
                        list.add(new Account(resultSet.getInt("id"), 
                                                resultSet.getString("user_name"), 
                                                resultSet.getString("first_name"), 
                                                resultSet.getString("last_name"), 
                                                resultSet.getString("middle_name")));
                }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public Account getAccountDetails(int id) {
        String query = "Select * from accounts c where c.id = ? and c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
                PreparedStatement preparedStatement = connection.prepareCall(query)
                
                ) {
                preparedStatement.setInt(1, id);
            
                try(ResultSet resultSet = preparedStatement.executeQuery()){
                    while(resultSet.next()) {
                        return new Account(resultSet.getInt("id"), 
                                                resultSet.getString("user_name"), 
                                                resultSet.getString("first_name"), 
                                                resultSet.getString("last_name"), 
                                                resultSet.getString("middle_name"));
                    }
                }
                    
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    @Override
    public OperationResponse NDUAccount(AccountForm form, int accountId) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        System.out.println(Crypto.base64Encode(form.getNewPassword()) + "  " + Crypto.base64Encode(form.getOldPassword()));
        String query = "{call ndu_account(?,?,?,?,?,?,?,?)}";
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall(query)) {
            callableStatement.setInt(1, accountId);
            callableStatement.setInt(2, form.getId());
            callableStatement.setString(3, form.getUsername());
            callableStatement.setString(4, Crypto.base64Encode(form.getNewPassword()));
            callableStatement.setString(5, form.getOldPassword() != null && !form.getOldPassword().isEmpty() ? Crypto.base64Encode(form.getOldPassword()) : "");
            callableStatement.setString(6, form.getFname());
            callableStatement.setString(7, form.getLname());
            callableStatement.setString(8, form.getMname());
            
            callableStatement.executeUpdate();
            operationResponse.setCode(ResultCode.OK);
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }

    @Override
    public FileWrapper getFileByPath(String path) {
        String query = "select * from files f where f.path like '%'|| ? ||'%' and f.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, path);
            
            try(ResultSet resultSet = preparedStatement.executeQuery()) {
                if(resultSet.next()) {
                    return new FileWrapper(resultSet.getString("path"), resultSet.getString("path"), resultSet.getString("original_name"), resultSet.getString("file_type"));
                }
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    @Override
    public OperationResponse addProductFile(Account account, int productId, FileWrapperForm form) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall("{call add_product_files(?,?,?,?,?)}")) {
            callableStatement.setInt(1, account.getId());
            callableStatement.setInt(2, productId);
            callableStatement.setString(3, form.getPath());
            callableStatement.setString(4, form.getOriginalName());
            callableStatement.setString(5, form.getContentType());
            
            callableStatement.executeUpdate();
            operationResponse.setCode(ResultCode.OK);
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }
    @Override
    public OperationResponse addOtherFile(Account account, FileWrapperForm form) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall("{call add_other_files(?,?,?,?)}")) {
            callableStatement.setInt(1, account.getId());
            callableStatement.setString(2, form.getPath());
            callableStatement.setString(3, form.getOriginalName());
            callableStatement.setString(4, form.getContentType());
            
            callableStatement.executeUpdate();
            operationResponse.setCode(ResultCode.OK);
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }
    @Override
    public List<FileWrapper> getOtherFile() {
        List<FileWrapper> list = new ArrayList<>();
        String query = "select * from files f where f.active = 1 and f.place_type = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery()) {
            while(resultSet.next()) {
                String path = resultSet.getString("path").split("\\.")[0];
                    list.add(new FileWrapper(path, resultSet.getString("path"), resultSet.getString("original_name"), resultSet.getString("file_type")));
             
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public OperationResponse NDUProduct(Account account, ProductForm form) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall("{? = call ndu_product(?,?,?,?,?,?,?,?,?,?)}")) {
            callableStatement.registerOutParameter(1, Types.INTEGER);
            callableStatement.setInt(2, account.getId());
            callableStatement.setInt(3, form.getId());
            callableStatement.setInt(4, form.getCompanyId());
            callableStatement.setInt(5, form.getTypeId());
            callableStatement.setString(6, form.getName());
            callableStatement.setString(7, form.getDescription());
            callableStatement.setString(8, form.getReceiptDescription());
            callableStatement.setInt(9, form.getCount());
            callableStatement.setString(10, form.getPrice());
            callableStatement.setInt(11, form.getPriority());
            callableStatement.execute();
            
            int id = callableStatement.getInt(1);
            
            if(form.getId() == 0 && id > 0) {
                if(form.getFiles() != null && form.getFiles().length > 0) {
                    for(FileWrapperForm f: form.getFiles()) {
                        operationResponse = this.addProductFile(account, id, f);
                        if(operationResponse.getCode() != ResultCode.OK) {
                            connection.setAutoCommit(false);
                            connection.rollback();
                            throw new Exception("Error add file");
                        }
                    }
                        
                }
            }
            operationResponse.setCode(ResultCode.OK);
            
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }

    @Override
    public OperationResponse removeFile(int accountId, String path) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall("{call remove_files(?,?)}")) {
            callableStatement.setInt(1, accountId);
            callableStatement.setString(2, path);
            callableStatement.executeUpdate();
            
            operationResponse.setCode(ResultCode.OK);
            
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return operationResponse;
    }

    @Override
    public List<Product> getProductList(ProductForm form) {
        List<Product> list = new ArrayList<>();
        
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall("{? = call get_product_list(?,?,?,?,?,?,?,?)}")) {
            connection.setAutoCommit(false);
            
            callableStatement.registerOutParameter(1, Types.OTHER);
            callableStatement.setInt(2, form.getTypeId());
            callableStatement.setInt(3, form.getCompanyId() );
            callableStatement.setString(4, form.getName() != null ? form.getName() : "");
            callableStatement.setInt(5, form.getPriority());
            callableStatement.setString(6, form.getStartPrice() != null ? form.getStartPrice() : "");
            callableStatement.setString(7, form.getEndPrice() != null ? form.getEndPrice() : "");
            callableStatement.setInt(8, form.getPage());
            callableStatement.setInt(9, form.getPageCount());
            callableStatement.execute();
            
            try(ResultSet resultSet = (ResultSet) callableStatement.getObject(1)) {
                while(resultSet.next()) {
                    list.add(new Product(resultSet.getInt("id"), 
                                         new Company(resultSet.getInt("company_id"), 
                                                     resultSet.getString("company_name"), null, null), 
                                         new DictionaryWrapper(resultSet.getInt("type_id"), 
                                                               new MultilanguageString(resultSet.getString("type_az"), 
                                                                                        resultSet.getString("type_en"), 
                                                                                        resultSet.getString("type_ru"))), 
                                         resultSet.getString("name"), 
                                         resultSet.getString("description"), 
                                         resultSet.getString("recept_description"), 
                                         resultSet.getInt("count"), 
                                         resultSet.getString("price"), 
                                         this.getProductFileList(resultSet.getInt("id")), 
                                         resultSet.getInt("priority")));
                }
            }
            
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }
    @Override
    public Product getProductDetails(int productId) {
        
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall("{? = call get_product_details(?)}")) {
            connection.setAutoCommit(false);
            callableStatement.registerOutParameter(1, Types.OTHER);
            callableStatement.setInt(2, productId);
            callableStatement.execute();
            try(ResultSet resultSet = (ResultSet) callableStatement.getObject(1)) {
                if(resultSet.next()) {
                  return new Product(resultSet.getInt("id"), 
                                         new Company(resultSet.getInt("company_id"), 
                                                     resultSet.getString("company_name"), null, null), 
                                         new DictionaryWrapper(resultSet.getInt("type_id"), 
                                                               new MultilanguageString(resultSet.getString("type_az"), 
                                                                                        resultSet.getString("type_en"), 
                                                                                        resultSet.getString("type_ru"))), 
                                         resultSet.getString("name"), 
                                         resultSet.getString("description"), 
                                         resultSet.getString("recept_description"), 
                                         resultSet.getInt("count"), 
                                         resultSet.getString("price"), 
                                         this.getProductFileList(resultSet.getInt("id")), 
                                         resultSet.getInt("priority"));
                    
                }
            }
            
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }
    
    @Override
    public List<FileWrapper> getProductFileList(int productId) {
        List<FileWrapper> list = new ArrayList<>();
        String query = "select " +
                        "  f.* " +
                        "  from product_files pf " +
                        "  join files f on f.id = pf.file_id and f.active = 1 " +
                        "  where pf.product_id = ? and pf.active = 1";
        
        try(Connection connection = dbConnect.getPostgresConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            
            preparedStatement.setInt(1, productId);
            
            try(ResultSet resultSet = preparedStatement.executeQuery()) {
                while(resultSet.next()) {
                    String path = resultSet.getString("path").split("\\.")[0];
                    list.add(new FileWrapper(path, resultSet.getString("path"), resultSet.getString("original_name"), resultSet.getString("file_type")));
                }
            }
            
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }
    
    @Override
    public List<DictionaryWrapper> getCategoryListWithCount() {
        List<DictionaryWrapper> list = new ArrayList<>();
        
        try(Connection connection = dbConnect.getPostgresConnection();
            CallableStatement callableStatement = connection.prepareCall("{? = call get_category_list_with_count()}")) {
            connection.setAutoCommit(false);
            callableStatement.registerOutParameter(1, Types.OTHER);
            callableStatement.execute();
            try(ResultSet resultSet = (ResultSet) callableStatement.getObject(1)) {
                int count = 0;
                while(resultSet.next()) {
                    count += resultSet.getInt("count_category");
                    list.add(new DictionaryWrapper(resultSet.getInt("type_id"), 
                                                   new MultilanguageString(resultSet.getString("name_az"), 
                                                                            resultSet.getString("name_en"), 
                                                                            resultSet.getString("name_ru")),
                                                    resultSet.getInt("count_category")));
                }
                DictionaryWrapper dw = new DictionaryWrapper(0, 
                                                             new MultilanguageString("Hamısı", 
                                                                            "All", 
                                                                            "Все"),
                                                              count);
                list.add(0, dw);
            }
            
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return list;
    }

    @Override
    public int getProductCount(int typeId, String name) {
        
        String query = "select count(*) count from products p "+
                       "where p.active = 1 and p.type_id = case when ? > 0 then ? else p.type_id end "+
                       "and lower(p.name) like case when length(trim(?)) > 0 then '%' || lower(?) ||'%' else lower(p.name) end";
        try(Connection connection = dbConnect.getPostgresConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, typeId);
            preparedStatement.setInt(2, typeId);
            preparedStatement.setString(3, name != null ? name : "");
            preparedStatement.setString(4, name != null ? name : "");
            
            try(ResultSet resultSet = preparedStatement.executeQuery()) {
                if(resultSet.next()) {
                    int count = resultSet.getInt("count");
                    return count;
                }
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return 0;
    }

    @Override
    public Company getCompanyInfo() {
        
        String query = "select c.*, d.name_az from company c "
                        + "join dictionary d on d.id = c.city_id and c.active = 1 where c.active = 1";
        try(Connection connection = dbConnect.getPostgresConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            
            try(ResultSet resultSet = preparedStatement.executeQuery()) {
                if(resultSet.next()) {
                    return new Company(0, resultSet.getString("name"), null, 
                                        resultSet.getString("name_az") + " " + resultSet.getString("address"), 
                                        resultSet.getString("langitude"), 
                                        resultSet.getString("latitude"));
                }
            }
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }
    
}
