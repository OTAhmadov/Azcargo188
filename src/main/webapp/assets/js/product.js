/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var Product = {
    lang: 'en',
    rootUrl: '',
    checkQuestion:[],
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
                url: Product.rootUrl + 'dictionaries',
                type: 'GET',
                data: {
                    typeId: type
                },
                success: function(data) {
                    if(data && data.code === Product.statusCodes.OK && callback) {
                        callback(data.data);
                    }
                }
            });
        },
        
        addProductFiles: function (productId, formData, callback) {
            
            $.ajax({
                url: Product.rootUrl + "admin/product/" + productId + '/file/ndu',
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function (result) {
                    if (result) {
                        switch (result.code) {
                            case Product.statusCodes.OK:

                                if (callback) {
                                    callback();
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
            var html = '<option value = "0">Select</option>'

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