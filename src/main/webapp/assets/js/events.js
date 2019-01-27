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
                                                '<img src="'+Product.url+'/admin/image/' + v.path + '"  class="form-control-file product-image-view">' +
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
                                                '<img src="'+Product.url+'/admin/image/' + v.path + '"  class="form-control-file product-image-view">' +
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

        $('body').on('click', '.add-service', function () {
            $('body .active-file-div').addClass('hidden');
            $('body #service-form')[0].reset();
            $('body .active-file-type').removeClass('hidden');
            $('body .service_modal').modal('show');
            $('body .btn-ndu-service').attr('data-type', 'add');
        })

        $('body').on('click', '.add-achievement', function () {
            
            $('body .active-file-div').addClass('hidden');
            $('body #achievement-form')[0].reset();
            $('body .active-file-type').removeClass('hidden');
            $('body .achievement_modal').modal('show');
            $('body .btn-ndu-achievement').attr('data-type', 'add');
        })

        $('body').on('click', '.add-promotation', function () {
            
            $('body .active-file-div').addClass('hidden');
            $('body #promotation-form')[0].reset();
            $('body .active-file-type').removeClass('hidden');
            $('body .promotation_modal').modal('show');
            $('body .btn-ndu-promotation').attr('data-type', 'add');
        })

        $('body').on('click', '.add-career', function () {
            
            $('body .career_status').attr('data-type', 'check');
            $('body .career_status').attr('checked', true);
            $('body .career_status').val(47);
            $('body .active-file-div').addClass('hidden');
            $('body #career-form')[0].reset();
            $('body .active-file-type').removeClass('hidden');
            $('body .career_modal').modal('show');
            $('body .btn-ndu-career').attr('data-type', 'add');
        })
        
        

        $('body').on('click', '.btn-ndu-service', function () {
            var form = new FormData();
            var type = $(this).attr('data-type');
            var id = $(this).attr('data-id');
            var typeId = $('body .sub_service_type').val();
            var titleAz = $('body #titleAz').val();
            var titleEn = $('body #titleEn').val();
            var titleRu = $('body #titleRu').val();
            var descriptionAz = $('body #descriptionAz').val();
            var descriptionEn = $('body #descriptionEn').val();
            var descriptionRu = $('body #descriptionRu').val();
            var fileId = $('body #product_files').attr('data-id');
            
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
            
            var service = {
                id: id ? id : 0,
                typeId: typeId,
                titleAz: titleAz,
                titleEn: titleEn,
                titleRu: titleRu,
                descriptionAz: descriptionAz,
                descriptionEn: descriptionEn,
                descriptionRu: descriptionRu,
                fileId: fileId ? fileId : 0
            }
            
            form.append('form', new Blob([JSON.stringify(service)], {
                type: "application/json"
            }))

            Product.Proxy.nduService(form, function (data) {
                if (data) {
                    Product.Proxy.getServiceList('', function (data) {
                        if (data && data.data) {
                            var html = '';
                            $.each(data.data, function (i, v) {
                                var descriptionLength = v.descriptionAz.length;
                                var description = v.descriptionAz;
                                if(descriptionLength > 60) {
                                    description = v.descriptionAz.substring(0,60) + '...';
                                } 
                                html += '<tr>' +
                                        '<td>' + v.typeId.value.az + '</th>' +
                                        '<td>' + v.titleAz + '</td>' +
                                        '<td>' + description + '</td>' +
                                        '<td><i class="fa fa-remove remove-service" data-id="' + v.id + '"></i>' +
                                        '<i class="fa fa-edit edit-service" data-id = "' + v.id + '"></i></td>' +
                                        '</tr>'
                            })
                            $('#service_list tbody').html(html);
                            $('#service_list').DataTable();
                            $('body .service_modal').modal('hide');
                        }

                    })
                }
            })
//        $('body .product_modal').modal('show');
        })
        $('body').on('click', '.btn-ndu-achievement', function () {
            var form = new FormData();
            var type = $(this).attr('data-type');
            var id = $(this).attr('data-id');
            var titleAz = $('body #titleAz').val();
            var titleEn = $('body #titleEn').val();
            var titleRu = $('body #titleRu').val();
            var achievementDate = $('body #achievementDate').val();
            var descriptionAz = $('body #descriptionAz').val();
            var descriptionEn = $('body #descriptionEn').val();
            var descriptionRu = $('body #descriptionRu').val();
            var fileId = $('body #product_files').attr('data-id');
            
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
            
            var achievement = {
                id: id ? id : 0,
                createDate: achievementDate,
                titleAz: titleAz,
                titleEn: titleEn,
                titleRu: titleRu,
                descriptionAz: descriptionAz,
                descriptionEn: descriptionEn,
                descriptionRu: descriptionRu,
                fileId: fileId ? fileId : 0
            }
            
            form.append('form', new Blob([JSON.stringify(achievement)], {
                type: "application/json"
            }))

            Product.Proxy.nduAchievement(form, function (data) {
                if (data) {
                    Product.Proxy.getAchievementList('', function (data) {
                        if (data && data.data) {
                            var html = '';
                            $.each(data.data, function (i, v) {
                                var descriptionLength = v.descriptionAz.length;
                                var description = v.descriptionAz;
                                if(descriptionLength > 60) {
                                    description = v.descriptionAz.substring(0,60) + '...';
                                } 
                                html += '<tr>' +
                                        '<td>' + v.achievementDate + '</th>' +
                                        '<td>' + v.titleAz + '</td>' +
                                        '<td>' + description + '</td>' +
                                        '<td><i class="fa fa-remove remove-achievement" data-id="' + v.id + '"></i>' +
                                        '<i class="fa fa-edit edit-achievement" data-id = "' + v.id + '"></i></td>' +
                                        '</tr>'
                            })
                            $('#achievement_list tbody').html(html);
                            $('#achievement_list').DataTable();
                            $('body .achievement_modal').modal('hide');
                        }

                    })
                }
            })
//        $('body .product_modal').modal('show');
        })
        $('body').on('click', '.btn-ndu-promotation', function () {
            var form = new FormData();
            var type = $(this).attr('data-type');
            var id = $(this).attr('data-id');
            var titleAz = $('body #titleAz').val();
            var titleEn = $('body #titleEn').val();
            var titleRu = $('body #titleRu').val();
            var startDate = $('body #startDate').val();
            var endDate = $('body #endDate').val();
            var descriptionAz = $('body #descriptionAz').val();
            var descriptionEn = $('body #descriptionEn').val();
            var descriptionRu = $('body #descriptionRu').val();
            var fileId = $('body #product_files').attr('data-id');
            
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
            
            var promotation = {
                id: id ? id : 0,
                startDate: startDate,
                endDate: endDate,
                titleAz: titleAz,
                titleEn: titleEn,
                titleRu: titleRu,
                descriptionAz: descriptionAz,
                descriptionEn: descriptionEn,
                descriptionRu: descriptionRu,
                fileId: fileId ? fileId : 0
            }
            
            form.append('form', new Blob([JSON.stringify(promotation)], {
                type: "application/json"
            }))

            Product.Proxy.nduPromotation(form, function (data) {
                if (data) {
                    Product.Proxy.getPromotationList('', function (data) {
                        if (data && data.data) {
                            var html = '';
                            $.each(data.data, function (i, v) {
                                var descriptionLength = v.descriptionAz.length;
                                var description = v.descriptionAz;
                                if(descriptionLength > 60) {
                                    description = v.descriptionAz.substring(0,60) + '...';
                                } 
                                html += '<tr>' +
                                        '<td>' + v.startDate + '</th>' +
                                        '<td>' + v.endDate + '</th>' +
                                        '<td>' + v.titleAz + '</td>' +
                                        '<td>' + description + '</td>' +
                                        '<td><i class="fa fa-remove remove-promotation" data-id="' + v.id + '"></i>' +
                                        '<i class="fa fa-edit edit-promotation" data-id = "' + v.id + '"></i></td>' +
                                        '</tr>'
                            })
                            $('#promotation_list tbody').html(html);
                            $('#promotation_list').DataTable();
                            $('body .promotation_modal').modal('hide');
                        }

                    })
                }
            })
//        $('body .product_modal').modal('show');
        })
        $('body').on('click', '.btn-ndu-career', function () {
            var form = new FormData();
            var type = $(this).attr('data-type');
            var id = $(this).attr('data-id');
            var titleAz = $('body #titleAz').val();
            var titleEn = $('body #titleEn').val();
            var titleRu = $('body #titleRu').val();
            var startDate = $('body #startDate').val();
            var endDate = $('body #endDate').val();
            var startSalary = $('body #startSalary').val();
            var endSalary = $('body #endSalary').val();
            var descriptionAz = $('body #descriptionAz').val();
            var descriptionEn = $('body #descriptionEn').val();
            var descriptionRu = $('body #descriptionRu').val();
            var fileId = $('body #product_files').attr('data-id');
            var status = $('body .career_status').val();
            
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
            
            var career = {
                id: id ? id : 0,
                startSalary: startSalary,
                endSalary: endSalary,
                startDate: startDate,
                endDate: endDate,
                titleAz: titleAz,
                titleEn: titleEn,
                titleRu: titleRu,
                descriptionAz: descriptionAz,
                descriptionEn: descriptionEn,
                descriptionRu: descriptionRu,
                fileId: fileId ? fileId : 0,
                status: status
            }
            
            form.append('form', new Blob([JSON.stringify(career)], {
                type: "application/json"
            }))

            Product.Proxy.nduCareer(form, function (data) {
                if (data) {
                    Product.Proxy.getCareerList('', function (data) {
                        if (data && data.data) {
                            var html = '';
                            $.each(data.data, function (i, v) {
                                var descriptionLength = v.descriptionAz ? v.descriptionAz.length : 0;
                                var description = v.descriptionAz;
                                if(descriptionLength > 20) {
                                    description = v.descriptionAz.substring(0,20) + '...';
                                } 
                                html += '<tr>' +
                                        '<td>' + v.titleAz + '</th>' +
                                        '<td>' + (v.startDate +' - '+ v.endDate) + '</td>' +
                                        '<td>' + (v.startSalary +' - '+ v.endSalary) + '</td>' +
                                        '<td>' + (v.status.value.az) + '</td>' +
                                        '<td>' + description + '</td>' +
                                        '<td><i class="fa fa-remove remove-career" data-id="' + v.id + '"></i>' +
                                        '<i class="fa fa-edit edit-career" data-id = "' + v.id + '"></i></td>' +
                                        '</tr>'
                            })
                            $('#career_list tbody').html(html);
                            $('#career_list').DataTable();
                            $('body .career_modal').modal('hide');
                        }

                    })
                }
            })
//        $('body .product_modal').modal('show');
        })

        $('body').on('click', '.edit-service', function () {

            var id = $(this).attr('data-id');
            var type = $(this).attr('data-type');
            $('body .btn-ndu-service').attr('data-type', 'edit');
            $('body .btn-ndu-service').attr('data-id', id);
            Product.Proxy.getServiceDetails(id, function (data) {
                if (data && data.data) {
                    $('body .super_service_type').val(data.data.typeId.parentId);
                    
                    Product.Proxy.getDictionariesByParent(data.data.typeId.parentId, function(data2) {
                        if(data2) {
                            var html = "";
                            $.each(data2, function(i, v){
                                    html += '<option value = '+v.id+'>'+v.value.az+'</option>'
                            })

                            $('.sub_service_type').html(html);
                             $('body .sub_service_type').val(data.data.typeId.id);
                        }
                    })
                    
                   
                    $('body #titleAz').val(data.data.titleAz);
                    $('body #titleEn').val(data.data.titleEn);
                    $('body #titleRu').val(data.data.titleRu);
                    $('body #descriptionAz').val(data.data.descriptionAz);
                    $('body #descriptionEn').val(data.data.descriptionEn);
                    $('body #descriptionRu').val(data.data.descriptionRu);
                    $('body #product_files').attr('data-id', data.data.fileId);

//                    if (data.data.priority == 1) {
//                        $('body .edit_product_priority').attr('data-type', 'check');
//                        $('body .edit_product_priority').attr('checked', 'true');
//                    } else {
//                        $('body .edit_product_priority').attr('data-type', 'uncheck');
//                        $('body .edit_product_priority').remmoveAttr('checked');
//                    }

                    if (data.data.fileId && data.data.fileId > 0) {
                        $('body .active-file-div').removeClass('hidden');
                        $('body .active-file-type').addClass('hidden');
                        var html =  '<div class="image-div">' +
                                    '<img src="'+Product.url+'/admin/image/' + data.data.filePath + '"  class="form-control-file product-image-view">' +
                                    '<i class="fa fa-remove remove-image-btn" data-path="' + data.data.filePath + '"></i>' +
                                    '</div>'
                    }

                    $('body .image-content-div').html(html);

                }
            })

            $('body .service_modal').modal('show');
        })

        $('body').on('click', '.edit-achievement', function () {

            var id = $(this).attr('data-id');
            var type = $(this).attr('data-type');
            $('body .btn-ndu-achievement').attr('data-type', 'edit');
            $('body .btn-ndu-achievement').attr('data-id', id);
            Product.Proxy.getAchievementDetails(id, function (data) {
                if (data && data.data) {
                    $('body #titleAz').val(data.data.titleAz);
                    $('body #achievementDate').val(data.data.achievementDate);
                    $('body #titleEn').val(data.data.titleEn);
                    $('body #titleRu').val(data.data.titleRu);
                    $('body #descriptionAz').val(data.data.descriptionAz);
                    $('body #descriptionEn').val(data.data.descriptionEn);
                    $('body #descriptionRu').val(data.data.descriptionRu);
                    $('body #product_files').attr('data-id', data.data.fileId);

                    if (data.data.fileId && data.data.fileId > 0) {
                        $('body .active-file-div').removeClass('hidden');
                        $('body .active-file-type').addClass('hidden');
                        var html =  '<div class="image-div">' +
                                    '<img src="'+Product.url+'/admin/image/' + data.data.filePath + '"  class="form-control-file product-image-view">' +
                                    '<i class="fa fa-remove remove-image-btn" data-path="' + data.data.filePath + '"></i>' +
                                    '</div>'
                    }

                    $('body .image-content-div').html(html);

                }
            })

            $('body .achievement_modal').modal('show');
        })

        $('body').on('click', '.edit-promotation', function () {

            var id = $(this).attr('data-id');
            var type = $(this).attr('data-type');
            $('body .btn-ndu-promotation').attr('data-type', 'edit');
            $('body .btn-ndu-promotation').attr('data-id', id);
            Product.Proxy.getPromotationDetails(id, function (data) {
                if (data && data.data) {
                    $('body #titleAz').val(data.data.titleAz);
                    $('body #startDate').val(data.data.startDate);
                    $('body #endDate').val(data.data.endDate);
                    $('body #titleEn').val(data.data.titleEn);
                    $('body #titleRu').val(data.data.titleRu);
                    $('body #descriptionAz').val(data.data.descriptionAz);
                    $('body #descriptionEn').val(data.data.descriptionEn);
                    $('body #descriptionRu').val(data.data.descriptionRu);
                    $('body #product_files').attr('data-id', data.data.fileId);

                    if (data.data.fileId && data.data.fileId > 0) {
                        $('body .active-file-div').removeClass('hidden');
                        $('body .active-file-type').addClass('hidden');
                        var html =  '<div class="image-div">' +
                                    '<img src="'+Product.url+'/admin/image/' + data.data.filePath + '"  class="form-control-file product-image-view">' +
                                    '<i class="fa fa-remove remove-image-btn" data-path="' + data.data.filePath + '"></i>' +
                                    '</div>'
                    }

                    $('body .image-content-div').html(html);

                }
            })

            $('body .promotation_modal').modal('show');
        })
        $('body').on('click', '.edit-career', function () {

            var id = $(this).attr('data-id');
            var type = $(this).attr('data-type');
            var status = $('body .career_status').val();
            
            $('body .btn-ndu-career').attr('data-type', 'edit');
            $('body .btn-ndu-career').attr('data-id', id);
            
            Product.Proxy.getCareerDetails(id, function (data) {
                if (data && data.data) {
                    $('body #titleAz').val(data.data.titleAz);
                    $('body #startDate').val(data.data.startDate);
                    $('body #endDate').val(data.data.endDate);
                    $('body #startSalary').val(data.data.startSalary);
                    $('body #endSalary').val(data.data.endSalary);
                    $('body #titleEn').val(data.data.titleEn);
                    $('body #titleRu').val(data.data.titleRu);
                    $('body #descriptionAz').val(data.data.descriptionAz);
                    $('body #descriptionEn').val(data.data.descriptionEn);
                    $('body #descriptionRu').val(data.data.descriptionRu);
                    $('body #product_files').attr('data-id', data.data.fileId);
//                    if (data.data.status.id == 47) {
//                        $('body .career_status').change();
//                    }
                    
                    if (data.data.status.id == 48) {
                        $('body .career_status').val(48);
                        $('body .career_status').removeAttr('checked');
                        
                        $('body .career_status').change();
                    }
                    if (data.data.status.id == 47) {
                        $('body .career_status').val(47);
                        $('body .career_status').prop('checked', 'checked');
                        $('body .career_status').change();
                    }
                    
                    if (data.data.fileId && data.data.fileId > 0) {
                        $('body .active-file-div').removeClass('hidden');
                        $('body .active-file-type').addClass('hidden');
                        var html =  '<div class="image-div">' +
                                    '<img src="'+Product.url+'/admin/image/' + data.data.filePath + '"  class="form-control-file product-image-view">' +
                                    '<i class="fa fa-remove remove-image-btn" data-path="' + data.data.filePath + '"></i>' +
                                    '</div>'
                    }
                    $('body .image-content-div').html(html);

                }
            })

            $('body .career_modal').modal('show');
        })

        $('body').on('click', '.view-corporative', function () {

            var id = $(this).attr('data-id');
            Product.Proxy.getCorporativeDetails(id, function (data) {
                if (data && data.data) {
                    $('body #fullname').val(data.data.fullname);
                    $('body #companyName').val(data.data.companyName);
                    $('body #companyVoen').val(data.data.companyVoen);
                    $('body #position').val(data.data.position);
                    $('body #phone').val(data.data.phone);
                    $('body #email').val(data.data.email);
                    $('body #descriptionAz').val(data.data.descriptionAz);
                    $('body #createDate').val(data.data.createDate);
                    $('body #product_files').attr('data-id', data.data.fileId);

                    if (data.data.fileId && data.data.fileId > 0) {
                        $('body .active-file-div').removeClass('hidden');
                        var html =  '<div class="image-div">' +
                                    '<img src="'+Product.url+'/admin/image/' + data.data.filePath + '"  class="form-control-file product-image-view">' +
                                    '</div>'
                    }

                    $('body .image-content-div').html(html);

                }
            })

            $('body .corporative_modal').modal('show');
        })

        $('body').on('click', '.view-career-apply', function () {

            var id = $(this).attr('data-id');
            Product.Proxy.getCareerApplyDetails(id, function (data) {
                if (data && data.data) {
                    $('body #careerTitle').val(data.data.career.titleAz);
                    $('body #descriptionAz').val(data.data.career.descriptionAz);
                    $('body #fullname').val(data.data.fullname);
                    $('body #phone').val(data.data.phone);
                    $('body #birthdate').val(data.data.birthdate);
                    $('body #experience').val(data.data.experience.value.az);
                    $('body #drivingLicense').val(data.data.drivingLicense.value.az);
                    $('body #createDate').val(data.data.createDate);
                    $('body #product_files').attr('data-id', data.data.fileId);

                    if (data.data.fileId && data.data.fileId > 0) {
                        $('body .active-file-div').removeClass('hidden');
                        var html =  '<div class="image-div">' +
                                    '<img src="../assets/img/cv.jpg"  class="form-control-file product-image-view">' +
                                    '<a class="download-cv" href="'+Product.url+'/admin/file/' + data.data.filePath + '"><i class = "fa fa-download download-cv"></i></a>'
                                    '</div>'
                    }

                    $('body .image-content-div').html(html);

                }
            })

            $('body .career_apply_modal').modal('show');
        })
        
//        $('body').on('click', '.download-cv', function() {
//            var path = $(this).attr('data-path');
//            
//            
//            
//        })

        $('body').on('click', '.view-common-apply', function () {

            var id = $(this).attr('data-id');
            Product.Proxy.getCommonApplyDetails(id, function (data) {
                if (data && data.data) {
                    $('body #descriptionAz').val(data.data.description);
                    $('body #name').val(data.data.name);
                    $('body #email').val(data.data.email);
                    $('body #createDate').val(data.data.createDate);

                }
            })

            $('body .common_apply_modal').modal('show');
        })

        $('body').on('click', '.remove-service', function () {
            var id = $(this).attr('data-id');
            var form = new FormData();
            var product = {
                id: id * (-1)
            }
            form.append('form', new Blob([JSON.stringify(product)], {
                type: "application/json"
            }))
            if (confirm('Silmək istədiyinizə əminsiniz?')) {
                Product.Proxy.nduService(form, function (data) {
                    if (data) {
                        Product.Proxy.getServiceList('', function (data) {
                            if (data && data.data) {
                                var html = '';
                                $.each(data.data, function (i, v) {
                                    var descriptionLength = v.descriptionAz.length;
                                    var description = v.descriptionAz;
                                    if(descriptionLength > 60) {
                                        description = v.descriptionAz.substring(0,60) + '...';
                                    } 
                                    html += '<tr>' +
                                            '<td>' + v.typeId.value.az + '</th>' +
                                            '<td>' + v.titleAz + '</td>' +
                                            '<td>' + description + '</td>' +
                                            '<td><i class="fa fa-remove remove-service" data-id="' + v.id + '"></i>' +
                                            '<i class="fa fa-edit edit-service" data-id = "' + v.id + '"></i></td>' +
                                            '</tr>'
                                })
                                $('#service_list tbody').html(html);
                                $('#service_list').DataTable();
                            }

                        })
                    }
                })
            }

        })

        $('body').on('click', '.remove-achievement', function () {
            var id = $(this).attr('data-id');
            var form = new FormData();
            var product = {
                id: id * (-1)
            }
            form.append('form', new Blob([JSON.stringify(product)], {
                type: "application/json"
            }))
            if (confirm('Silmək istədiyinizə əminsiniz?')) {
                Product.Proxy.nduAchievement(form, function (data) {
                    if (data) {
                        Product.Proxy.getAchievementList('', function (data) {
                            if (data && data.data) {
                                var html = '';
                                $.each(data.data, function (i, v) {
                                    var descriptionLength = v.descriptionAz ? v.descriptionAz.length : 0;
                                    var description = v.descriptionAz ? v.descriptionAz : "";
                                    if(descriptionLength > 60) {
                                        description = v.descriptionAz.substring(0,60) + '...';
                                    } 
                                    html += '<tr>' +
                                            '<td>' + v.achievementDate + '</th>' +
                                            '<td>' + v.titleAz + '</td>' +
                                            '<td>' + description + '</td>' +
                                            '<td><i class="fa fa-remove remove-achievement" data-id="' + v.id + '"></i>' +
                                            '<i class="fa fa-edit edit-achievement" data-id = "' + v.id + '"></i></td>' +
                                            '</tr>'
                                })
                                $('#achievement_list tbody').html(html);
                                $('#achievement_list').DataTable();
                                $('body .service_modal').modal('hide');
                            }

                        })
                    }
                })
            }

        })

        $('body').on('click', '.remove-promotation', function () {
            var id = $(this).attr('data-id');
            var form = new FormData();
            var product = {
                id: id * (-1)
            }
            form.append('form', new Blob([JSON.stringify(product)], {
                type: "application/json"
            }))
            if (confirm('Silmək istədiyinizə əminsiniz?')) {
                Product.Proxy.nduPromotation(form, function (data) {
                    if (data) {
                        Product.Proxy.getPromotationList('', function (data) {
                            if (data && data.data) {
                                var html = '';
                                $.each(data.data, function (i, v) {
                                    var descriptionLength = v.descriptionAz ? v.descriptionAz.length : 0;
                                    var description = v.descriptionAz ? v.descriptionAz : "";
                                    if(descriptionLength > 60) {
                                        description = v.descriptionAz.substring(0,60) + '...';
                                    } 
                                    html += '<tr>' +
                                            '<td>' + v.startDate + '</th>' +
                                            '<td>' + v.endDate + '</th>' +
                                            '<td>' + v.titleAz + '</td>' +
                                            '<td>' + description + '</td>' +
                                            '<td><i class="fa fa-remove remove-promotation" data-id="' + v.id + '"></i>' +
                                            '<i class="fa fa-edit edit-promotation" data-id = "' + v.id + '"></i></td>' +
                                            '</tr>'
                                })
                                $('#promotation_list tbody').html(html);    
                                $('#promotation_list').DataTable();
                                $('body .promotation_modal').modal('hide');
                            }

                        })
                    }
                })
            }

        })

        $('body').on('click', '.remove-career', function () {
            var id = $(this).attr('data-id');
            var form = new FormData();
            var product = {
                id: id * (-1)
            }
            form.append('form', new Blob([JSON.stringify(product)], {
                type: "application/json"
            }))
            if (confirm('Silmək istədiyinizə əminsiniz?')) {
                Product.Proxy.nduCareer(form, function (data) {
                    if (data) {
                        Product.Proxy.getCareerList('', function (data) {
                            if (data && data.data) {
                                var html = '';
                                $.each(data.data, function (i, v) {
                                    var descriptionLength = v.descriptionAz ? v.descriptionAz.length : 0;
                                    var description = v.descriptionAz;
                                    if(descriptionLength > 20) {
                                        description = v.descriptionAz.substring(0,20) + '...';
                                    } 
                                    html += '<tr>' +
                                            '<td>' + v.titleAz + '</th>' +
                                            '<td>' + (v.startDate +' - '+ v.endDate) + '</td>' +
                                            '<td>' + (v.startSalary +' - '+ v.endSalary) + '</td>' +
                                            '<td>' + (v.status.value.az) + '</td>' +
                                            '<td>' + description + '</td>' +
                                            '<td><i class="fa fa-remove remove-career" data-id="' + v.id + '"></i>' +
                                            '<i class="fa fa-edit edit-career" data-id = "' + v.id + '"></i></td>' +
                                            '</tr>'
                                })
                                $('#career_list tbody').html(html);
                                $('#career_list').DataTable();
                                $('body .career_modal').modal('hide');
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
                    $('body .active-file-div').addClass('hidden');
                    $('body .active-file-type').removeClass('hidden');
                    $('body .active-file-type').find('input[type="file"]').val('');
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

        $('body').on('click', '#user_group_list tbody tr .for-view', function () {
            var id = $(this).parents('tr').attr('data-id');
            var html='';
            Product.Proxy.getRoleDetails(id, function(data2) {
                $.each(data2.modules, function(i, v){
                    html += '<tr data-id="'+v.id+'">'+
                                '<td>'+(++i)+'</td>'+
                                '<td>'+v.name[Product.lang]+'</td>'+

                            '</tr>';
                })
                $('#user_group_module_list tbody').html(html); 
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
        
        $('body').on('click','.add-user-group', function() {
            $('body .btn-ndu-usergroup').attr('data-type', 'add');
            $('body #user_group_form')[0].reset();
            $('body input[name="id"]').val(0);
            $('body .user_group_modal').modal('show');
        })
        
        $('body').on('click','.edit-user-group', function() {
            var id = $(this).parents('tr').attr('data-id');
            $('body .btn-ndu-usergroup').attr('data-type', 'edit');
            $('body #user_group_form')[0].reset();
            $('body input[name="id"]').val(id);
            Product.Proxy.getRoleDetails(id, function(data2) {
                $('body #nameAz').val(data2.name.az);
                
                $.each(data2.modules, function(i, v){
                    $('body #user_group_module_operation tbody tr td input[value="'+v.id+'"]').prop('checked', true)
                })
                $('body .user_group_modal').modal('show');
            })
        })
        
        $('body').on('click','.remove-user-group', function() {
            var id = $(this).parents('tr').attr('data-id');
            var obj = $(this).parents('tr');
            $('body input[name="id"]').val((-1) * id)
            var form = $('body #user_group_form').serialize() + '&moduleId=1';
            if(confirm('Silmək istədiyinizə əminsiniz?')){
                Product.Proxy.nduUserGroup(form, function(result) {
                    if(result) {

                        obj.remove();
                    }
                })
            }
        })
        
        $('body').on('click','.btn-ndu-usergroup', function() {
            var form = $('body #user_group_form').serialize();
            Product.Proxy.nduUserGroup(form, function(result) {
                if(result) {
                    
                    Product.Proxy.getRoleList(function(data) {
                        if(data) {
                            var html ='';
                            var count = 0;
                            var roleId = 0;
                            $.each(data, function(i, v){
                                if(count < 1) {
                                    roleId = v.id;
                                    ++count;
                                }
                                html += '<tr data-id="'+v.id+'">'+
                                            '<td>'+(++i)+'</td>'+
                                            '<td>'+v.name[Product.lang]+'</td>'+
                                            '<td><i class="fa fa-remove remove-user-group" data-id="'+v.id+'"></i>'+
                                                '<i class="fa fa-edit edit-user-group" data-id="'+v.id+'"></i></td>'+
                                        '</tr>';
                            })
                            $('#user_group_list tbody').html(html);
                            html='';
                            Product.Proxy.getRoleDetails(roleId, function(data2) {
                                $.each(data2.modules, function(i, v){
                                    html += '<tr data-id="'+v.id+'">'+
                                                '<td>'+(++i)+'</td>'+
                                                '<td>'+v.name[Product.lang]+'</td>'+

                                            '</tr>';
                                })
                                $('#user_group_module_list tbody').html(html); 
                                $('body .user_group_modal').modal('hide');
                            })

                        }
                    })
                }
            })
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
            var roleId = $('#roleId').val();
            
            var form = {
                username: username,
                id: id,
                fname:fname,
                lname:lname,
                mname:mname,
                newPassword:newPassword,
                oldPassword:oldPassword,
                roleId: roleId
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
                                        '<td>'+(v.role.name.az)+'</td>'+
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
                     $('#roleId').val(data.data.role.id);
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
                                            '<td>'+(v.role.name.az)+'</td>'+
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

    $('body').on('click', '.career_status', function() {
        var id = $(this).val();
        if (id == 47) {
            $(this).attr('data-type', 'uncheck');
            $(this).removeAttr('checked');
            $(this).val(48);
        } else {
            $(this).attr('data-type', 'check');
            $(this).attr('checked', true);
            $(this).val(47);
        }
    })

    $('body').on('change', '.career_status', function() {
            if($(this).is(":checked")) {
               //'checked' event code
               return;
            }
            //'unchecked' event code
    })


});
