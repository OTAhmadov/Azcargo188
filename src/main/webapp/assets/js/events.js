/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function (e) {
    try {
        $('body').on('change', '.add_file', function() {
            var files = $(this)[0].files;
            var length = files.length;
            var inFor = 0;
            
            
            if(length > 5) {
                alert('Şəkillərin sayı 5 - dən çox ola bilməz')
                return false;
            }
            
            var formData = new FormData();
            for (var i = 0; i < length; i++) {
                if(inFor == 0) {
                    if (Product.Validation.checkFile(files[i].type, fileTypes.IMAGE_CONTENT_TYPE)) {
                        formData.append("image", files[i]);
                   
                    } else {
                        alert('Faylın tipi səhv seçilib');
                        inFor = 1;
                    }
                }
                
            }
            
            if(inFor == 0) {
                Product.Proxy.addProductFiles(1, formData, function(data) {
                    
                })
            } 
        })
    }
    catch (err) {
        console.error(err);
    }
});
