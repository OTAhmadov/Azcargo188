/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function (e) {
    try {
        $('body').on('change', '#edit_product_files', function () {
            var files = $(this)[0].files;
            var length = files.length;
            var productId = $(this).attr('data-id');
            var inFor = 0;
            var obj = $(this);

            if (length > 5) {
                alert('Şəkillərin sayı 5 - dən çox ola bilməz')
                return false;
            }

            var formData = new FormData();
            for (var i = 0; i < length; i++) {
                if (inFor == 0) {
                    if (Product.Validation.checkFile(files[i].type, fileTypes.IMAGE_CONTENT_TYPE)) {
                        formData.append("image", files[i]);

                    } else {
                        alert('Faylın tipi səhv seçilib');
                        inFor = 1;
                    }
                }

            }

            if (inFor == 0) {
                Product.Proxy.addProductFiles(productId, formData, function (result) {
                    if (result) {
                        obj.val('');
                        Product.Proxy.getProductDetails(productId, function (data) {
                            if (data && data.data) {

                                if (data.data.images && data.data.images.length > 0) {
                                    var html = '';
                                    $.each(data.data.images, function (i, v) {
                                        html += '<div class="image-div">' +
                                                '<img src="http://dadliteatr.az/admin/image/' + v.path + '"  class="form-control-file product-image-view">' +
                                                '<i class="fa fa-remove remove-image-btn" data-path="' + v.path + '"></i>' +
                                                '</div>'
                                    })
                                }

                                $('body .image-content-div').html(html);

                            }
                        })
                    }
                })
            }
        })
        $('body').on('change', '#add_common_files', function () {
            var files = $(this)[0].files;
            var length = files.length;
            var inFor = 0;
            var obj = $(this);

            if (length > 5) {
                alert('Şəkillərin sayı 5 - dən çox ola bilməz')
                return false;
            }

            var formData = new FormData();
            for (var i = 0; i < length; i++) {
                if (inFor == 0) {
                    if (Product.Validation.checkFile(files[i].type, fileTypes.IMAGE_CONTENT_TYPE)) {
                        formData.append("image", files[i]);

                    } else {
                        alert('Faylın tipi səhv seçilib');
                        inFor = 1;
                    }
                }

            }

            if (inFor == 0) {
                Product.Proxy.addOtherFiles(formData, function (result) {
                    if (result) {
                        obj.val('');
                        Product.Proxy.getOtherFiles(function (data) {
                            if (data && data.data) {

                                if (data.data && data.data.length > 0) {
                                    var html = '';
                                    $.each(data.data, function (i, v) {
                                        html += '<div class="image-div">' +
                                                '<img src="http://dadliteatr.az/admin/image/' + v.path + '"  class="form-control-file product-image-view">' +
                                                '<i class="fa fa-remove remove-image-btn" data-path="' + v.path + '"></i>' +
                                                '</div>'
                                    })
                                }

                                $('body .image-content-div').html(html);

                            }
                        })
                    }
                })
            }
        })

        $('body').on('click', '.add-product', function () {
            $('body .product_modal').modal('show');
        })

        $('body').on('change', '.product_priority, .edit_product_priority', function () {
            var type = $(this).attr('data-type')

            if (type === 'check') {
                $(this).attr('data-type', 'uncheck')
            } else if (type === 'uncheck') {
                $(this).attr('data-type', 'check')
            }
        })

        $('body').on('click', '.btn-ndu-product', function () {
            var form = new FormData();

            var typeId = $('body #product_type').val();
            var name = $('body #product_name').val();
            var count = $('body #product_count').val();
            var price = $('body #product_price').val();
            var description = $('body #product_note').val();
            var receiptDescription = $('body #product_reciept').val();
            var priority = $('body .product_priority').attr('data-type') === 'check' ? 1 : 0;
            var files = $('body #product_files')[0].files;
            var length = files.length;
            var inFor = 0;
            if (length > 5) {
                alert('Şəkillərin sayı 5 - dən çox ola bilməz')
                return false;
            }
            for (var i = 0; i < length; i++) {
                if (inFor == 0) {
                    if (Product.Validation.checkFile(files[i].type, fileTypes.IMAGE_CONTENT_TYPE)) {
                        form.append("image", files[i]);

                    } else {
                        alert('Faylın tipi səhv seçilib');
                        inFor = 1;
                    }
                }

            }
            var product = {
                typeId: typeId,
                name: name,
                count: count,
                price: price,
                description: description,
                receiptDescription: receiptDescription,
                priority: priority,
                companyId: 1
            }

            form.append('form', new Blob([JSON.stringify(product)], {
                type: "application/json"
            }))

            Product.Proxy.nduProduct(form, function (data) {
                if (data) {
                    Product.Proxy.getProductList('', function (data) {
                        if (data && data.data) {
                            var html = '';
                            $.each(data.data, function (i, v) {
                                html += '<tr>' +
                                        '<td>' + v.type.value[Product.lang] + '</th>' +
                                        '<td>' + v.name + '</td>' +
                                        '<td>' + v.count + '</td>' +
                                        '<td>' + v.price + '</td>' +
                                        '<td><i class="fa fa-remove remove-product" data-id="' + v.id + '"></i>' +
                                        '<i class="fa fa-edit edit-product" data-id = "' + v.id + '"></i></td>' +
                                        '</tr>'
                            })
                            $('#product_list tbody').html(html);
                            $('#product_list').DataTable();
                            $('body .product_modal').modal('hide');
                        }

                    })
                }
            })
//        $('body .product_modal').modal('show');
        })
        $('body').on('click', '.btn-edit-ndu-product', function () {
            var form = new FormData();
            var id = $(this).attr('data-id');
            var typeId = $('body #edit_product_type').val();
            var name = $('body #edit_product_name').val();
            var count = $('body #edit_product_count').val();
            var price = $('body #edit_product_price').val();
            var description = $('body #edit_product_note').val();
            var receiptDescription = $('body #edit_product_reciept').val();
            var priority = $('body .edit_product_priority').attr('data-type') === 'check' ? 1 : 0;

            var product = {
                id: id,
                typeId: typeId,
                name: name,
                count: count,
                price: price,
                description: description,
                receiptDescription: receiptDescription,
                priority: priority,
                companyId: 1
            }

            form.append('form', new Blob([JSON.stringify(product)], {
                type: "application/json"
            }))

            Product.Proxy.nduProduct(form, function (result) {
                if (result) {
                    Product.Proxy.getProductList('', function (data) {
                        if (data && data.data) {
                            var html = '';
                            $.each(data.data, function (i, v) {
                                html += '<tr>' +
                                        '<td>' + v.type.value[Product.lang] + '</th>' +
                                        '<td>' + v.name + '</td>' +
                                        '<td>' + v.count + '</td>' +
                                        '<td>' + v.price + '</td>' +
                                        '<td><i class="fa fa-remove remove-product" data-id="' + v.id + '"></i>' +
                                        '<i class="fa fa-edit edit-product" data-id = "' + v.id + '"></i></td>' +
                                        '</tr>'
                            })
                            $('#product_list tbody').html(html);
                            $('#product_list').DataTable();
                            $('body .product_edit_modal').modal('hide');
                        }

                    })
                }
            })
//        $('body .product_modal').modal('show');
        })

        $('body').on('click', '.edit-product', function () {

            var id = $(this).attr('data-id');

            Product.Proxy.getProductDetails(id, function (data) {
                if (data && data.data) {
                    $('body #edit_product_type').val(data.data.type.id);
                    $('body #edit_product_name').val(data.data.name);
                    $('body #edit_product_count').val(data.data.count);
                    $('body #edit_product_price').val(data.data.price);
                    $('body #edit_product_note').val(data.data.description);
                    $('body #edit_product_reciept').val(data.data.receiptDescription);
                    $('body #edit_product_files').attr('data-id', data.data.id);
                    $('body .btn-edit-ndu-product').attr('data-id', data.data.id);

                    if (data.data.priority == 1) {
                        $('body .edit_product_priority').attr('data-type', 'check');
                        $('body .edit_product_priority').attr('checked', 'true');
                    } else {
                        $('body .edit_product_priority').attr('data-type', 'uncheck');
                        $('body .edit_product_priority').remmoveAttr('checked');
                    }

                    if (data.data.images && data.data.images.length > 0) {
                        var html = '';
                        $.each(data.data.images, function (i, v) {
                            html += '<div class="image-div">' +
                                    '<img src="http://dadliteatr.az/admin/image/' + v.path + '"  class="form-control-file product-image-view">' +
                                    '<i class="fa fa-remove remove-image-btn" data-path="' + v.path + '"></i>' +
                                    '</div>'
                        })
                    }

                    $('body .image-content-div').html(html);

                }
            })

            $('body .product_edit_modal').modal('show');
        })

        $('body').on('click', '.remove-product', function () {
            var id = $(this).attr('data-id');
            var form = new FormData();
            var product = {
                id: id * (-1)
            }
            form.append('form', new Blob([JSON.stringify(product)], {
                type: "application/json"
            }))
            if (confirm('Silmək istədiyinizə əminsiniz?')) {
                Product.Proxy.nduProduct(form, function (data) {
                    if (data) {
                        Product.Proxy.getProductList('', function (result) {
                            if (result && result.data) {
                                var html = '';
                                $.each(result.data, function (i, v) {
                                    html += '<tr>' +
                                            '<td>' + v.type.value[Product.lang] + '</th>' +
                                            '<td>' + v.name + '</td>' +
                                            '<td>' + v.count + '</td>' +
                                            '<td>' + v.price + '</td>' +
                                            '<td><i class="fa fa-remove remove-product" data-id="' + v.id + '"></i>' +
                                            '<i class="fa fa-edit edit-product" data-id = "' + v.id + '"></i></td>' +
                                            '</tr>'
                                })
                                $('#product_list tbody').html(html);
                                $('#product_list').DataTable();
                            }

                        })
                    }
                })
            }

        })

        $('body').on('click', '.remove-image-btn', function () {
            var path = $(this).attr('data-path');
            var obj = $(this)
            Product.Proxy.removeProductImage(path, function (data) {
                if (data) {
                    obj.parents('.image-div').remove();
                }
            })
        })

        $('body').on('click', '#dictionary_type tbody tr', function () {
            var id = $(this).attr('data-id');
            $('body .add-dictionary').attr('data-id', id);
            Product.Proxy.getDictionariesByType(id, function(data) {
                if(data) {
                    var html = '';
                    $.each(data, function(i, v) {
                        html += '<tr data-az="'+v.value.az+'" data-en="'+v.value.en+'" data-ru="'+v.value.ru+'">'+
                                '<td>'+(++i)+'</td>'+
                                '<td>'+v.value.az+'</td>'+
                                '<td>'+v.value.en+'</td>'+
                                '<td>'+v.value.ru+'</td>'+
                                '<td><i class="fa fa-remove remove-dictionary" data-id="'+v.id+'"></i>'+
                                '<i class="fa fa-edit edit-dictionary" data-id="'+v.id+'"></i></td>'+
                                '</tr>'
                    })
                    $('body #dictinary_list tbody').html(html);
                }
            })
        })
        
        $('body').on('change', '#dictionary_type_list', function () {
            var id = $(this).val();
                var html='<option value="0">Asılılıq yoxdur</option>'
                Product.Proxy.getDictionariesByType(id, function(data) {
                    if(data) {
                        $.each(data, function(i, v) {
                            html += '<option value="'+v.id+'">'+v.value[Product.lang]+'</option>'
                        })
                        $('body #dictionary_list_by_type').html(html);
                    }
                })
        })
        
        $('body').on('click','.add-dictionary', function() {
            var id = $(this).attr('data-id');
            $('body .btn-ndu-dictionary').removeAttr('data-id');
            $('body #dictionary_list_by_type').html('');
            $('#dictionary_type_list').val(0);
            $('#name_az').val('');
            $('#name_en').val('');
            $('#name_ru').val('');
            $('body .dictionary_modal').modal('show');
        })
        
        $('body').on('click','.btn-ndu-dictionary', function() {
            var id = $(this).attr('data-id') &&  $(this).attr('data-id') > 0 ? $(this).attr('data-id') : 0 ;
            
            var nameAz = $('#name_az').val();
            var nameEn = $('#name_en').val();
            var nameRu = $('#name_ru').val();
            var parentId = $('body #dictionary_list_by_type').val() && $('body #dictionary_list_by_type').val() > 0 ? $('body #dictionary_list_by_type').val() : 0;
            var dicTypeId = $('.add-dictionary').attr('data-id')
            var form = {
                id:id,
                dicTypeId: dicTypeId,
                nameAz:nameAz,
                nameEn:nameEn,
                nameRu:nameRu,
                parentId: parentId,
                
            }
            console.log(form)
            Product.Proxy.nduDictinary(form, function(result) {
                if(result) {
                    
                    Product.Proxy.getDictionariesByType(dicTypeId, function(data) {
                        if(data) {
                            var html = '';
                            $.each(data, function(i, v) {
                                html += '<tr data-az="'+v.value.az+'" data-en="'+v.value.en+'" data-ru="'+v.value.ru+'">'+
                                        '<td>'+(++i)+'</td>'+
                                        '<td>'+v.value.az+'</td>'+
                                        '<td>'+v.value.en+'</td>'+
                                        '<td>'+v.value.ru+'</td>'+
                                        '<td><i class="fa fa-remove remove-dictionary" data-id="'+v.id+'"></i>'+
                                        '<i class="fa fa-edit edit-dictionary" data-id="'+v.id+'"></i></td>'+
                                        '</tr>'
                            })
                            $('body #dictinary_list tbody').html(html);
                            $('body .dictionary_modal').modal('hide');
                        }
                    })
                }
            })
        })
        $('body').on('click', '.edit-dictionary', function() {
            var nameAz = $(this).parents('tr').attr('data-az');
            var nameEn = $(this).parents('tr').attr('data-en');
            var nameRu = $(this).parents('tr').attr('data-ru');
            var id = $(this).attr('data-id');
            var dicTypeId = $('.add-dictionary').attr('data-id')
            
            $('body .btn-ndu-dictionary').attr('data-id', id);
            $('body #name_az').val(nameAz);
            $('body #name_en').val(nameEn);
            $('body #name_ru').val(nameRu);
            
            $('body .dictionary_modal').modal('show');
        })
        $('body').on('click', '.remove-dictionary', function() {
            var id = $(this).attr('data-id');
            var dicTypeId = $('.add-dictionary').attr('data-id')
            var obj = $(this);
            var form = {
                dicTypeId: dicTypeId,
                id: id * (-1)
            }
            if(confirm('Silmək istədiyinizə əminsiniz?')){
                Product.Proxy.nduDictinary(form, function(result) {
                    if(result) {

                        obj.parents('tr').remove();
                    }
                })
            }
        })
        $('body').on('click', '.add-account', function() {
            
            $('#username').val('');
            $('#fname').val('');
            $('#mname').val('');
            $('#lname').val('');
            $('#old_password').val('');
            $('#new_password').val('');
            $('.btn-ndu-account').removeAttr('data-id');
            $('#old_password').parent('div').parent('div').addClass('hidden');
            $('.user_modal').modal('show');
            
        })
        $('body').on('click','.btn-ndu-account', function() {
            var id = $(this).attr('data-id');
            var username = $('#username').val();
            var fname = $('#fname').val();
            var mname = $('#mname').val();
            var lname = $('#lname').val();
            var newPassword = $('#new_password').val();
            var oldPassword = $('#old_password').val();
            
            var form = {
                username: username,
                id: id,
                fname:fname,
                lname:lname,
                mname:mname,
                newPassword:newPassword,
                oldPassword:oldPassword
            }
            
            Product.Proxy.nduAccount(form, function(data) {
                if(data) {
                    Product.Proxy.getAccountList(function(data) {
                        if(data && data.data) {
                            var html='';
                            $.each(data.data, function(i, v){
                                html += '<tr data-id="'+v.id+'">'+
                                        '<td>'+(++i)+'</td>'+
                                        '<td>'+(v.lastname + ' ' + v.firstname + ' ' + v.middlename)+'</td>'+
                                        '<td>'+(v.username)+'</td>'+
                                        '<td><i class="fa fa-remove remove-account"></i>'+
                                        '<i class="fa fa-edit edit-account"></i>'+
                                        '</td>'+
                                        '</tr>'
                            })

                            $('#user_list tbody').html(html);
                            $('.user_modal').modal('hide');
                        }
                    })
                }
            })
        })
        
        $('body').on('click', '.edit-account', function() {
            var id = $(this).parents('tr').attr('data-id');
            $('.btn-ndu-account').attr('data-id', id);
            $('#old_password').parents('div').removeClass('hidden');
            Product.Proxy.getAccountDetails(id, function(data) {
                if(data && data.data) {
                     $('#username').val(data.data.username);
                     $('#fname').val(data.data.firstname);
                     $('#mname').val(data.data.middlename);
                     $('#lname').val(data.data.lastname);
                     $('#old_password').val('');
                     $('#new_password').val('');
                    $('.user_modal').modal('show');
                }
            })
        })
        $('body').on('click', '.remove-account', function() {
            var id = $(this).parents('tr').attr('data-id');
            var form = {
                id: id * (-1),
                newPassword:'',
                oldPassword:''
            }
            if(confirm('Silmək istədiyinizə əminsiniz?')) {
               Product.Proxy.nduAccount(form, function(data) {
                    if(data) {
                        Product.Proxy.getAccountList(function(data) {
                            if(data && data.data) {
                                var html='';
                                $.each(data.data, function(i, v){
                                    html += '<tr data-id="'+v.id+'">'+
                                            '<td>'+(++i)+'</td>'+
                                            '<td>'+(v.lastname + ' ' + v.firstname + ' ' + v.middlename)+'</td>'+
                                            '<td>'+(v.username)+'</td>'+
                                            '<td><i class="fa fa-remove remove-account"></i>'+
                                            '<i class="fa fa-edit edit-account"></i>'+
                                            '</td>'+
                                            '</tr>'
                                })

                                $('#user_list tbody').html(html);
                            }
                        })
                    }
                }) 
            }
                
                
        })
        
        $('body').on('click', '.btn-edit-about', function(){
            var form = {
                id: 1,
                titleAz:$('#title_az').val(),
                titleEn:$('#title_en').val(),
                titleRu:$('#title_ru').val(),
                contentAz: $('#content_az').val(),
                contentEn: $('#content_en').val(),
                contentRu: $('#content_ru').val()                
            }
            
            Product.Proxy.nduAbout(form, function(data) {
                if(data) {
                    alert('Məlumat yeniləndi!!')
                }
            })
                    
        })
        
        $('body').on('click', '.add-contact', function(){
            
            $('body .contact_modal').modal("show");
                    
        })
        
        $('body').on('click', '.btn-ndu-contact', function(){
            var form = {
                id: 0,
                companyId:1,
                typeId: $('#contact_type').val(),
                contact: $('#contact').val()                
            }
            
            Product.Proxy.nduContact(form, function(result) {
                if(result) {
                    Product.Proxy.getContactList(function(data) {
                        if(data && data.data) {
                            var html='';

                            $.each(data.data, function(i, v) {
                                html += '<tr data-id="'+v.id+'">'+
                                        '<td>'+(++i)+'</td>'+
                                        '<td>'+(v.type.value[Product.lang])+'</td>'+
                                        '<td>'+(v.contact)+'</td>'+
                                        '<td><i class="fa fa-remove remove-contact"></i></td>'+
                                        '</tr>'
                            })
                            console.log(html)
                            $('#contact_list tbody').html(html);
                            $('body .contact_modal').modal('hide');
                            
                        }
                    })
                }
            })
                    
        })
        $('body').on('click', '.remove-contact', function() {
            var id = $(this).parents('tr').attr('data-id');
            var obj = $(this)
            var form = {
                id: id * (-1),
                companyId:1                
            }
            if(confirm('Silmək istədiyinizə əminsiniz?')) {
                Product.Proxy.nduContact(form, function(result) {
                    if(result) {
                        obj.parents('tr').remove();
                    }
                })
            }
           
        })
        
    }
    catch (err) {
        console.error(err);
    }


});
