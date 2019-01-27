<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin page</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="../include/admin_header.jsp" %>
</head>
<body>


        <!-- Left Panel -->

    <%@include file="../include/admin_modules.jsp" %><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
<!--                     <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>
                    </div> -->
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <form action="<c:url value="/admin/logout" />" method="post">
                                <input type="submit" class="btn btn-default" value="Çıxış"/>
                            </form>
                        </a>

                        <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                                <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span class="count">13</span></a>

                                <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                                <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>

                </div>
            </div>

        </header><!-- /header -->
        <!-- Header-->

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Ümumi məlumatlar</h1>
                    </div>
                </div>
            </div>
<!--            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li class="active"><span class="fa fa-plus" style="cursor: pointer;"></span></li>
                        </ol>
                    </div>
                </div>
            </div>-->
        </div>

        <div class="content mt-3" >
            <div class="row">
                
                <div class="col-md-12" style="border-bottom: 1px solid;">
                    <div class="card">
                        <div class="card-body">
                            <div class="row form-group">
                                <div class="col col-md-2"><label for="disabled-input" class=" form-control-label">Başlıq-AZ</label></div>
                                <div class="col-12 col-md-10"><input type="text" id="title_az" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-2"><label for="disabled-input" class=" form-control-label">Başlıq-EN</label></div>
                                <div class="col-12 col-md-10"><input type="text" id="title_en" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-2"><label for="disabled-input" class=" form-control-label">Başlıq-RU</label></div>
                                <div class="col-12 col-md-10"><input type="text" id="title_ru" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-2"><label for="textarea-input" class=" form-control-label">Haqqında-AZ</label></div>
                                <div class="col-12 col-md-10"><textarea name="textarea-input" id="content_az" rows="9" class="form-control"></textarea></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-2"><label for="textarea-input" class=" form-control-label">Haqqında-EN</label></div>
                                <div class="col-12 col-md-10"><textarea name="textarea-input" id="content_en" rows="9" class="form-control"></textarea></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-2"><label for="textarea-input" class=" form-control-label">Haqqında-RU</label></div>
                                <div class="col-12 col-md-10"><textarea name="textarea-input" id="content_ru" rows="9" class="form-control"></textarea></div>
                            </div>
                            <div class="row form-group">
                                <button class="btn btn-primary btn-edit-about">Təsdiq et</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12" style="border-bottom: 1px solid;">
                    <div class="card">
                        <div class="card-header">
                            <h3 style="width: 200px;">Əlaqə vasitələri</h3>
                            <i class="fa fa-plus add-contact pull-right"></i>
                        </div>
                        <div class="card-body">
                            <table id="contact_list" class="table table-striped table-bordered">
                                <thead>
                                  <tr>
                                    <th>No</th>
                                    <th>Tipi</th>
                                    <th>Kontakt</th>
                                    <th></th>
                                  </tr>
                                </thead>
                                <tbody>

                                </tbody>
                              </table>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-12" style="border-bottom: 1px solid;">
                    <div class="card">
                        <div class="card-header">
                            <h3>Başlıq şəkillər</h3>
                            
                        </div>
                        <div class="card-body">
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="product_files" class=" form-control-label">Şəkil</label></div>
                                <div class="col-12 col-md-9 image-content-div">


                                </div>
                            </div>
                            <div class="row form-group">
                                <!--<div class="col col-md-3"><label for="product_files" class=" form-control-label">Şəkil</label></div>-->
                                <div class="col-12 col-md-9"><input type="file" id="add_common_files"  multiple="" class="form-control-file"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="modal fade bs-example-modal-lg contact_modal" tabicommon_selling_modalndex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="myLargeModalLabel">Əlaqə vasitələri</h4>
                    </div>
                    <div class="modal-body">
                        
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="contact_type" class=" form-control-label">Tipi</label></div>
                          <div class="col-12 col-md-9">
                            <select id="contact_type" class="form-control">
                              
                            </select>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="product_name" class=" form-control-label">Kontakt</label></div>
                          <div class="col-12 col-md-9"><input type="text" id="contact" name="text-input" placeholder="" class="form-control"></div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        
                        <button type="button" class="btn btn-default" data-dismiss="modal">Bağla</button>
                        <button type="button" class="btn btn-primary btn-ndu-contact">Təsdiq et</button>

                    </div>
                </div>
            </div>
        </div> 
            
    </div><!-- /#right-panel -->
    <%@include file="../include/admin_footer.jsp" %>
    <script>
        $(function() {
                
            $('#main-menu a i[data-type="common"]').parents('li').addClass('active');
            Product.Proxy.getAbout(function(data) {
                if(data && data.data) {
                    var id = data.data.id;
                    var titleAz = data.data.title.az;
                    var titleEn = data.data.title.en;
                    var titleRu = data.data.title.ru;
                    var contentAz = data.data.content.az;
                    var contentEn = data.data.content.en;
                    var contentRu = data.data.content.ru;
                    
                    $('#title_az').val(titleAz)
                    $('#title_en').val(titleEn)
                    $('#title_ru').val(titleRu)
                    $('#content_az').val(contentAz)
                    $('#content_en').val(contentEn)
                    $('#content_ru').val(contentRu)
                }
            })
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
                }
            })
            
            Product.Proxy.getDictionariesByType(4, function(data) {
                if(data) {
                    var html='<option value="1">Seçin</option>';
                    $.each(data, function(i, v) {
                        html += '<option value="'+v.id+'">'+v.value[Product.lang]+'</option>'
                    })
                    
                    $('#contact_type').html(html);
                }
            })
            Product.Proxy.getOtherFiles(function (data) {
                            if (data && data.data) {

                                if (data.data && data.data.length > 0) {
                                    var html = '';
                                    $.each(data.data, function (i, v) {
                                        html += '<div class="image-div">' +
                                                '<img src="http://localhost:8080/Azcargo188/admin/image/' + v.path + '"  class="form-control-file product-image-view">' +
                                                '<i class="fa fa-remove remove-image-btn" data-path="' + v.path + '"></i>' +
                                                '</div>'
                                    })
                                }

                                $('body .image-content-div').html(html);

                            }
                        })
            
        })
        
    </script>

</body>
</html>
