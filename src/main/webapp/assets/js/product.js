/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var Product = {
    lang: 'az',
    rootUrl: '',
    checkQuestion:[],
    url:'http://localhost:8080/Azcargo188',
    module:[
        {
            home:{
                az:'Əsas səhifə',
                en:'Home page',
                ru:'Главная страница'
            },
            product:{
                az:'Məhsullar',
                en:'Products',
                ru:'Продукты'
            },
            about:{
                az:'Haqqında',
                en:'About',
                ru:'Около'
            },
            contact:{
                az:'Əlaqə',
                en:'Contact',
                ru:'Kонтакт'
            },
            footer_contact:{
                az:'Bizimlə əlaqə',
                en:'Contact with us',
                ru:'Cвязаться с нами'
            }
        }
    ],
    statusCodes: {
        OK: 'OK',
        ERROR: 'ERROR',
        UNAUTHORIZED: 'UNAUTHORIZED',
        INVALID_PARAMS: 'INVALID_PARAMS'
    },
    REGEX: {
        email: /\S+@\S+\.\S+/,
        number: /^\d+$/,
        decimalNumber: /^\d+(\.\d+)?$/,
        phone: /\(\+\d{3}\)-\d{2}-\d{3}-\d{2}-\d{2}/,
        IMAGE_EXPRESSION: 'image\/jpeg|image\/png',
    },
    MASK: {
        phone: '(+000)-00-000-00-00'
    },
    Proxy: {
        getDictionariesByType: function(type, callback) {
            $.ajax({
                url: Product.rootUrl + 'dictionary',
                type: 'GET',
                data: {
                    dicTypeId: type
                },
                success: function(data) {
                    if(data && data.code === Product.statusCodes.OK && callback) {
                        callback(data.data);
                    }
                }
            });
        },
        getDictionariesByParent: function(id, callback) {
            $.ajax({
                url: Product.rootUrl + 'dictionary',
                type: 'GET',
                data: {
                    dicTypeId: 0,
                    parentId:id
                },
                success: function(data) {
                    if(data && data.code === Product.statusCodes.OK && callback) {
                        callback(data.data);
                    }
                }
            });
        },
        getDictionariesType: function(callback) {
            $.ajax({
                url: Product.rootUrl + 'dictionary/type',
                type: 'GET',
                success: function(data) {
                    if(data && data.code === Product.statusCodes.OK && callback) {
                        callback(data.data);
                    }
                }
            });
        },
        getRoleList: function(callback) {
            $.ajax({
                url: Product.rootUrl + 'roles',
                type: 'GET',
                success: function(data) {
                    if(data && data.code === Product.statusCodes.OK && callback) {
                        callback(data.data);
                    }
                }
            });
        },
        getModuleList: function(callback) {
            $.ajax({
                url: Product.rootUrl + 'modules',
                type: 'GET',
                success: function(data) {
                    if(data && data.code === Product.statusCodes.OK && callback) {
                        callback(data.data);
                    }
                }
            });
        },
        getRoleDetails: function(id,callback) {
            $.ajax({
                url: Product.rootUrl + 'role/' + id,
                type: 'GET',
                success: function(data) {
                    if(data && data.code === Product.statusCodes.OK && callback) {
                        callback(data.data);
                    }
                }
            });
        },
        nduDictinary: function(form, callback) {
            $.ajax({
                url: Product.rootUrl + 'dictionary/ndu',
                type: 'POST',
                data:form,
                success: function(result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            });
        },
        nduUserGroup: function(form, callback) {
            $.ajax({
                url: Product.rootUrl + 'role/ndu',
                type: 'POST',
                data:form,
                success: function(result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            });
        },
        nduAccount: function(form, callback) {
            $.ajax({
                url: Product.rootUrl + 'account/ndu',
                type: 'POST',
                data:form,
                beforeSend: function (xhr) {
                    $('body .btn-ndu-account').attr('disabled', 'disabled');
                },
                success: function(result) {
                    if (result) {
                        $('body .btn-ndu-account').removeAttr('disabled');
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            });
        },
        getAccountList: function(callback) {
            $.ajax({
                url: Product.rootUrl + 'accounts',
                type: 'GET',
                success: function(result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            });
        },
        getAccountDetails: function(id, callback) {
            $.ajax({
                url: Product.rootUrl + 'account/' +id,
                type: 'GET',
                success: function(result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            });
        },
        
        addProductFiles: function (productId, formData, callback) {
            
            $.ajax({
                url: Product.rootUrl + "product/" + productId + '/file/add',
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        nduService: function (formData, callback) {
            
            $.ajax({
                url: Product.rootUrl + "service/ndu",
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    alert(result.message.az) 
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        nduAchievement: function (formData, callback) {
            
            $.ajax({
                url: Product.rootUrl + "achievement/ndu",
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    alert(result.message.az) 
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        nduPromotation: function (formData, callback) {
            
            $.ajax({
                url: Product.rootUrl + "promotation/ndu",
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    alert(result.message.az) 
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        nduCareer: function (formData, callback) {
            
            $.ajax({
                url: Product.rootUrl + "career/ndu",
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    alert(result.message.az) 
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getServiceList: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "services",
                type: 'GET',
                data: form,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getAchievementList: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "achievements",
                type: 'GET',
                data: form,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getCareerList: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "careers",
                type: 'GET',
                data: form,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getCorporativeList: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "corporatives",
                type: 'GET',
                data: form,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getCommonApplyList: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "commonApplyes",
                type: 'GET',
                data: form,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getCareerApplyList: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "careerApplyes",
                type: 'GET',
                data: form,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getPromotationList: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "promotations",
                type: 'GET',
                data: form,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getFavoriteProductList: function (callback) {
            
            $.ajax({
                url: Product.rootUrl + "admin/products?priority=1&pageCount=6",
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getServiceDetails: function (id, callback) {
            
            $.ajax({
                url: Product.rootUrl + "service/"+id,
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getAchievementDetails: function (id, callback) {
            
            $.ajax({
                url: Product.rootUrl + "achievement/"+id,
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getPromotationDetails: function (id, callback) {
            
            $.ajax({
                url: Product.rootUrl + "promotation/"+id,
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getCareerDetails: function (id, callback) {
            
            $.ajax({
                url: Product.rootUrl + "career/"+id,
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getCorporativeDetails: function (id, callback) {
            
            $.ajax({
                url: Product.rootUrl + "corporative/"+id,
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getCareerApplyDetails: function (id, callback) {
            
            $.ajax({
                url: Product.rootUrl + "careerApply/"+id,
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getCommonApplyDetails: function (id, callback) {
            
            $.ajax({
                url: Product.rootUrl + "commonApply/"+id,
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        removeProductImage: function (path, callback) {
            
            $.ajax({
                url: Product.rootUrl + "image/"+path+"/remove",
                type: 'POST',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getAbout: function (callback) {
            
            $.ajax({
                url: Product.rootUrl + "about",
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        nduAbout: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "about/ndu",
                type: 'POST',
                data:form,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        nduContact: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "contact/ndu",
                type: 'POST',
                data:form,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        addOtherFiles: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "other/file/add",
                type: 'POST',
                data: form,
                contentType: false,
                processData: false,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getOtherFiles: function (callback) {
            
            $.ajax({
                url: Product.rootUrl + "other/files",
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getOtherFilesForMain: function (callback) {
            
            $.ajax({
                url: Product.rootUrl + "admin/other/files",
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        getContactList: function (callback) {
            
            $.ajax({
                url: Product.rootUrl + "contacts",
                type: 'GET',
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback(result);
                                }
                                break;

                            case Product.statusCodes.ERROR:
                                if (result.message) {
                                    
                                } else {
                                   alert('Xeta bas verdi') 
                                }
                                break;

                        }
                    }
                }
            })
        },
        
        
    },
    Service: {
        parseDictionary: function (data) {
            var html = '<option value = "0">Seçin</option>'

            $.each(data, function (i, v) {
                html += '<option value = "' + v.id + '">' + v.value[Product.lang] + '</option>'
            });

            return html;
        },
    },
    Validation: {
        checkFile: function (contentType, fileType) {
            var result = contentType.match(fileType);
            if (result) {
                return true;
            } else {

                return false;
            }
        }
    }
    
};
var fileTypes = {
    IMAGE_CONTENT_TYPE: '^(' + Product.REGEX.IMAGE_EXPRESSION + ')$'
    
}