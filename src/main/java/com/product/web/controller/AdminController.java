/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.controller;

import com.product.web.domain.Account;
import com.product.web.domain.FileWrapper;
import com.product.web.domain.OperationResponse;
import com.product.web.enums.ResultCode;
import com.product.web.form.AboutForm;
import com.product.web.form.AccountForm;
import com.product.web.form.ContactForm;
import com.product.web.form.DictionaryWrapperForm;
import com.product.web.form.FileWrapperForm;
import com.product.web.form.LoginForm;
import com.product.web.form.ProductForm;
import com.product.web.util.Crypto;
import com.product.web.util.WebUtils;
import com.product.web.validation.FileWrapperFormValidator;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author otahmadov
 */
@Api(description = "Admin panel ucun(AdminController)")
@Controller
@RequestMapping(value = "/admin")
public class AdminController extends SkeletonController {
    private Logger log = Logger.getLogger(AdminController.class);
    
    @GetMapping(value = "/product")
    protected String showAdminProduct() {
        
        try {
            if(getSessionAccount() != null) {
                return "admin/product";
            }
            
            return "login";
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return "redirect:/main";
    }
    
    @GetMapping(value = "/common")
    protected String showAdminLog() {
        
        try {
            if(getSessionAccount() != null) {
                return "admin/common";
            }
            
            return "login";
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return "redirect:/main";
    }
    
    @GetMapping(value = "/dic")
    protected String showAdminDictionary() {
        
        try {
            if(getSessionAccount() != null) {
                return "admin/dictionary";
            }
            
            return "login";
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return "redirect:/main";
    }
    @GetMapping(value = "/user")
    protected String showAdminUser() {
        
        try {
            if(getSessionAccount() != null) {
                return "admin/user";
            }
            
            return "login";
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return "redirect:/main";
    }
    
    @GetMapping(value = "/company")
    protected String showAdminCompany() {
        
        try {
            if(getSessionAccount() != null) {
                return "admin/company";
            }
            
            return "login";
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return "redirect:/main";
    }
    
    @GetMapping
    protected String showLoginPage() {
        
        try {
            if(getSessionAccount() != null) {
                return "admin/product";
            }
            
            return "login";
        } 
        catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return "redirect:/main";
    }
    
    @PostMapping("/login")
    protected String doLogin(Model model,
                             LoginForm form) {
        
        try {
            
            form.setIpadress(WebUtils.getIpAddress(request));
            Account account = service.doLogin(form);
            
            if(account == null) {
                model.addAttribute("error", "Invalid username/password");
                throw new Exception("Invalid username/password. LoginForm: " + form);
            }
            
            HttpSession session = request.getSession(true);
            session.setAttribute("account", account);
            return "redirect:/admin/product";
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return "redirect:/login";
    }
    @ApiOperation(value = "dictionary type larin listini getirir.", notes = "Biz terefden teyin olanan typeler siyahida gelmeyecek")
    @GetMapping("/dictionary/type")
    @ResponseBody
    protected OperationResponse getDictionaryTypeList() {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            operationResponse.setData(service.getDictionaryTypeList());
            operationResponse.setCode(ResultCode.OK);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    @ApiOperation(value = "dictionary lerin listini getirir dic type id ye gore. ", notes = "mes: http://104.248.176.190:8080/admin/dictionary?dicTypeId=1")
    @GetMapping("/dictionary")
    @ResponseBody
    protected OperationResponse getDictionaryTypeList(@RequestParam int dicTypeId) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            
            operationResponse.setData(service.getDictionaryList(dicTypeId));
            operationResponse.setCode(ResultCode.OK);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "dictionary lerin add edit remove - si. ", notes = "parametr siyahisi form packagesinde var hamisinin baxarsan. istifade ucun sessiya teleb olunur, login olmaq lazimdir")
    @PostMapping("/dictionary/ndu")
    @ResponseBody
    protected OperationResponse NDUDictionary(DictionaryWrapperForm form) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            Account account = getSessionAccount(operationResponse);
            operationResponse = service.NDUDictionary(form, account.getId());
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "contactlarin siyahisini getirir", notes = "")
    @GetMapping("/contacts")
    @ResponseBody
    protected OperationResponse getContactList() {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            operationResponse.setData(service.getContactList());
            operationResponse.setCode(ResultCode.OK);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = " id ye gore contactin deteilsini getirir.", notes = "")
    @GetMapping("/contact/{id:\\d+}")
    @ResponseBody
    protected OperationResponse getContactById(@PathVariable int id) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
//            Account account = getSessionAccount(operationResponse);
            operationResponse.setData(service.getContactDetails(id));
            operationResponse.setCode(ResultCode.OK);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "kontactlarin add edit remove si", notes = "parametr siyahisi form packagesinde var hamisinin baxarsan. istifade ucun sessiya teleb olunur, login olmaq lazimdir")
    @PostMapping("/contact/ndu")
    @ResponseBody
    protected OperationResponse NDUContact(ContactForm form) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);  
        try {
            Account account = getSessionAccount(operationResponse);
            operationResponse = service.NDUContact(form, account.getId());
//            operationResponse = service.NDUContact(form, 1);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "about getirir.", notes = "")
    @GetMapping("/about")
    @ResponseBody
    protected OperationResponse getAbout() {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            
            operationResponse.setData(service.getAbout());
            operationResponse.setCode(ResultCode.OK);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "about add edit remove si", notes = "parametr siyahisi form packagesinde var hamisinin baxarsan. istifade ucun sessiya teleb olunur, login olmaq lazimdir. eslinde about ancaq edit olunacaq.")
    @PostMapping("/about/ndu")
    @ResponseBody
    protected OperationResponse NDUAbout(AboutForm form) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            Account account = getSessionAccount(operationResponse);
            operationResponse = service.NDUAbout(form, account.getId());
//            operationResponse = service.NDUAbout(form, 1);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "account listini getirir", notes = "istifade ucun sessiya teleb olunur, login olmaq lazimdir.")
    @GetMapping("/accounts")
    @ResponseBody
    protected OperationResponse getAccountList() {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            Account account = getSessionAccount(operationResponse);
            operationResponse.setData(service.getAccountList());
            operationResponse.setCode(ResultCode.OK);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "accountun id sine gore detail getirir", notes = "istifade ucun sessiya teleb olunur, login olmaq lazimdir.")
    @GetMapping("/account/{id:\\d+}")
    @ResponseBody
    protected OperationResponse getAccountById(@PathVariable int id) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            Account account = getSessionAccount(operationResponse);
            operationResponse.setData(service.getAccountDetails(id));
            operationResponse.setCode(ResultCode.OK);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "accountlarin add edit remove si", notes = "parametr siyahisi form packagesinde var hamisinin baxarsan. istifade ucun sessiya teleb olunur, login olmaq lazimdir.")
    @PostMapping("/account/ndu")
    @ResponseBody
    protected OperationResponse NDUAccount(AccountForm form) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            Account account = getSessionAccount(operationResponse);
            operationResponse = service.NDUAccount(form, account.getId());
//            operationResponse = service.NDUAccount(form, 1);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "productun idsine gore file elave edir", notes = "file sayi max 5 dene qoymusam. istifade ucun sessiya teleb olunur, login olmaq lazimdir.")
    @ResponseBody
    @PostMapping(value = "/product/{id:\\d+}/file/add", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    protected OperationResponse NDUProductFile(@RequestPart(name = "image", required = false) MultipartFile image,
                                                @PathVariable int id,
                                                MultipartHttpServletRequest multipartHttpServletRequest
//                                                BindingResult result
    ) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            Account account = getSessionAccount(operationResponse);
            MultiValueMap<String, MultipartFile> requestParts = multipartHttpServletRequest.getMultiFileMap();
            List<MultipartFile> files;
            
            files = requestParts.get("image");
            
            if (files.size() > 5) {
                throw new Exception("invalid file count");
            }
            
            FileWrapperForm[] fileWrappers = new FileWrapperForm[files.size()];
            
            FileWrapperFormValidator fileWrapperFormValidator = new FileWrapperFormValidator();
            int i = 0;
            
            for (MultipartFile multipartFile : files) {
                if (multipartFile != null && multipartFile.getSize() > 0) {
                    fileWrappers[i] = new FileWrapperForm();
                    fileWrappers[i].setFile(multipartFile);

                    OperationResponse saveFileResponse = ftpService.saveFtpFile("", multipartFile, Crypto.getGuid());

                    if (saveFileResponse.getCode() == ResultCode.OK) {
                        String fullPath = (String) saveFileResponse.getData();
                        fileWrappers[i].setOriginalName(multipartFile.getOriginalFilename());
                        fileWrappers[i].setPath(fullPath);
                        fileWrappers[i].setContentType(multipartFile.getContentType());
                        
                        operationResponse = service.addProductFile(account, id, fileWrappers[i]);
                        
                        if(operationResponse.getCode() != ResultCode.OK) {
                            throw new Exception("Error add file");
                        }
                    }
                }
                i = i + 1;
            }
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "BAsliq ucun sekiller elave edilmesi", notes = "file sayi max 5 dene qoymusam. istifade ucun sessiya teleb olunur, login olmaq lazimdir.")
    @ResponseBody
    @PostMapping(value = "/other/file/add", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    protected OperationResponse addOtherFiles(@RequestPart(name = "image", required = false) MultipartFile image,
                                                MultipartHttpServletRequest multipartHttpServletRequest
//                                                BindingResult result
    ) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            Account account = getSessionAccount(operationResponse);
            MultiValueMap<String, MultipartFile> requestParts = multipartHttpServletRequest.getMultiFileMap();
            List<MultipartFile> files;
            
            files = requestParts.get("image");
            
            if (files.size() > 5) {
                throw new Exception("invalid file count");
            }
            
            FileWrapperForm[] fileWrappers = new FileWrapperForm[files.size()];
            
            FileWrapperFormValidator fileWrapperFormValidator = new FileWrapperFormValidator();
            int i = 0;
            
            for (MultipartFile multipartFile : files) {
                if (multipartFile != null && multipartFile.getSize() > 0) {
                    fileWrappers[i] = new FileWrapperForm();
                    fileWrappers[i].setFile(multipartFile);

                    OperationResponse saveFileResponse = ftpService.saveFtpFile("", multipartFile, Crypto.getGuid());

                    if (saveFileResponse.getCode() == ResultCode.OK) {
                        String fullPath = (String) saveFileResponse.getData();
                        fileWrappers[i].setOriginalName(multipartFile.getOriginalFilename());
                        fileWrappers[i].setPath(fullPath);
                        fileWrappers[i].setContentType(multipartFile.getContentType());
                        
                        operationResponse = service.addOtherFile(account, fileWrappers[i]);
                        
                        if(operationResponse.getCode() != ResultCode.OK) {
                            throw new Exception("Error add file");
                        }
                    }
                }
                i = i + 1;
            }
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    @ApiOperation(value = "basliq ucun sekillerin getirilmesi", notes = "file sayi max 5 dene qoymusam. istifade ucun sessiya teleb olunur, login olmaq lazimdir.")
    @ResponseBody
    @GetMapping(value = "/other/files")
    protected OperationResponse getOtherFiles() {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            operationResponse.setData(service.getOtherFile());
            operationResponse.setCode(ResultCode.OK);
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "productlarin add edit remove si, ", notes = "parametr siyahisi form packagesinde var hamisinin baxarsan. istifade ucun sessiya teleb olunur, login olmaq lazimdir.")
    @ResponseBody
    @PostMapping(value = "/product/ndu", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    protected OperationResponse NDUProduct(@RequestPart(name = "image", required = false) MultipartFile image,
                                            @RequestPart(name = "form", required = false) ProductForm form,
                                            MultipartHttpServletRequest multipartHttpServletRequest
//                                                BindingResult result
    ) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        try {
            Account account = getSessionAccount(operationResponse);
            
            
            
            int i = 0;
            if(form.getId() == 0) {
                MultiValueMap<String, MultipartFile> requestParts = multipartHttpServletRequest.getMultiFileMap();
                List<MultipartFile> files;

                files = requestParts.get("image");

                if (files != null && files.size() > 5) {
                    throw new Exception("invalid file count");
                }

                FileWrapperForm[] fileWrappers = new FileWrapperForm[files.size()];                                                         
                for (MultipartFile multipartFile : files) {
                    if (multipartFile != null && multipartFile.getSize() > 0) {
                        fileWrappers[i] = new FileWrapperForm();
                        fileWrappers[i].setFile(multipartFile);

                        OperationResponse saveFileResponse = ftpService.saveFtpFile("", multipartFile, Crypto.getGuid());

                        if (saveFileResponse.getCode() == ResultCode.OK) {
                            String fullPath = (String) saveFileResponse.getData();
                            fileWrappers[i].setOriginalName(multipartFile.getOriginalFilename());
                            fileWrappers[i].setPath(fullPath);
                            fileWrappers[i].setContentType(multipartFile.getContentType());

                        }
                    }

                    i = i + 1;
                }
                form.setFiles(fileWrappers);
            } else if(form.getId() < 0) {
                List<FileWrapper> imageList = service.getProductFileList(Math.abs(form.getId()));
                if(imageList.size() > 0) {
                
                    for(FileWrapper f: imageList) {
                        OperationResponse removeOperation = ftpService.removeFtpFile(f.getFullPath());
                        if(removeOperation.getCode() != ResultCode.OK) {
                            throw new Exception("Error remove ftp file");
                        
                        }
                    }
                }
            }
                        
            
            operationResponse = service.NDUProduct(account, form);
            
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        
        return operationResponse;
    }
    
    @ApiOperation(value = "path e gore sekli qaytarir", notes = "ftp de olmaqla yanasi bazadada path movcud olmalidir. tehlukesizlik ucun bazadan yoxlayir.")
    @GetMapping(value = "/image/{path}", produces = MediaType.IMAGE_JPEG_VALUE) // OK
    @ResponseBody
    protected byte[] getProductImage(@PathVariable String path,
                                     @RequestParam(defaultValue = "") String size) {

        try {

            FileWrapper image = service.getFileByPath(path);

            if (image != null) {
                
//                String[] splitPath  = image.getPath().split("\\.");
                
                return ftpService.downloadFtpFile(image.getPath());
                
            }
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }

        return null;
    }
    
    @ApiOperation(value = "image nin path ne gore silir", notes = "istifade ucun sessiya teleb olunur, login olmaq lazimdir.")
    @PostMapping(value = "/image/{path}/remove")
    @ResponseBody
    protected OperationResponse removeProductImage(@PathVariable String path) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);

        try {
            Account account = getSessionAccount(operationResponse);

            FileWrapper image = service.getFileByPath(path);

            if (image != null) {
                operationResponse =  ftpService.removeFtpFile(image.getPath());
                
                if(operationResponse.getCode() != ResultCode.OK) {
                    throw new Exception("error remove file");
                }
                
                operationResponse = service.removeFile(account.getId(), path);
            }
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }

        return operationResponse;
    }
    
    @ApiOperation(value = "Productlarin siyahisini getirir", notes = "Filterler: typeId, companyId, name, priority, startPrice, endPrice. Default olaraq page=1 ve pageCount=50 goturulub")
    @GetMapping(value = "/products")
    @ResponseBody
    protected OperationResponse getProductList(ProductForm form) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);

        try {
            
            operationResponse.setData(service.getProductList(form));
            operationResponse.setCode(ResultCode.OK);
            
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }

        return operationResponse;
    }
    
    @ApiOperation(value = "Productin sekillerinin listini qaytarir", notes = "her Ehtimala yazdim lazim olsa istifade edek")
    @GetMapping(value = "/product/{id:\\d+}/files")
    @ResponseBody
    protected OperationResponse getProductFileList(@PathVariable int id) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);

        try {
            
            operationResponse.setData(service.getProductFileList(id));
            operationResponse.setCode(ResultCode.OK);
            
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }

        return operationResponse;
    }
    
    @ApiOperation(value = "Productinin id-sine gore detaillerini qaytarir", notes = "")
    @GetMapping(value = "/product/{id:\\d+}")
    @ResponseBody
    protected OperationResponse getProductDetails(@PathVariable int id) {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);

        try {
            
            operationResponse.setData(service.getProductDetails(id));
            operationResponse.setCode(ResultCode.OK);
            
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }

        return operationResponse;
    }
    
    
}
