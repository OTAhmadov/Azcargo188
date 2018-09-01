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
        
        
    },
    Service: {
        parseDictionary: function (data) {
            var html = '<option value = "0">Select</option>'

            $.each(data, function (i, v) {
                html += '<option value = "' + v.id + '">' + v.value[Product.lang] + '</option>'
            });

            return html;
        },
    }
};