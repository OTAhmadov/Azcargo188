/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var Product = {
    lang: 'az',
    rootUrl: '',
    checkQuestion:[],
    url:'http://dadliteatr.az/ProductSite',
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
        nduProduct: function (formData, callback) {
            
            $.ajax({
                url: Product.rootUrl + "product/ndu",
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
        getProductList: function (form, callback) {
            
            $.ajax({
                url: Product.rootUrl + "products",
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
        getProductDetails: function (id, callback) {
            
            $.ajax({
                url: Product.rootUrl + "product/"+id,
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