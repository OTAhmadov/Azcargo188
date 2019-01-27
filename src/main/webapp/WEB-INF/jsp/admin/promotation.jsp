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

    <!-- /#left-panel -->
    <%@include file="../include/admin_modules.jsp" %>
    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
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

                    <div class="language-select dropdown" id="language-select">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"  id="language" aria-haspopup="true" aria-expanded="true">
                            <i class="flag-icon flag-icon-us"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="language" >
                            <div class="dropdown-item">
                                <a tabindex="-1" href="<c:url value="?lang=az" />"><span class="flag-icon flag-icon-az"></span></a>
                            </div>
                            <div class="dropdown-item">
                                <a tabindex="-1" href="<c:url value="?lang=en" />"><span class="flag-icon flag-icon-en"></span></a>
                            </div>
                            <div class="dropdown-item">
                                <a tabindex="-1" href="<c:url value="?lang=ru" />"><span class="flag-icon flag-icon-ru"></span></a>
                            </div>
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
                        <h1>Kampaniyalar</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li class="active add-promotation"><span class="fa fa-plus" style="cursor: pointer;"></span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3" >
            <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <!--                        <div class="card-header">
                                                    <strong class="card-title">Data Table</strong>
                                                </div>-->
                        <div class="card-body">
                            <table id="promotation_list" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Başlama tarixi</th>
                                        <th>Bitmə tarixi</th>
                                        <th>Başlıq</th>
                                        <th>Kontent</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade bs-example-modal-lg promotation_modal" tabicommon_selling_modalndex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                        <div class="modal-header">
                            <!--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>-->
                            <h4 class="modal-title" id="myLargeModalLabel">Kampaniyalar haqqında məlumat</h4>
                        </div>
                        <div class="modal-body">
                            <form id="promotation-form">
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_name" class=" form-control-label">Başlama tarixi</label></div>
                                    <div class="col-12 col-md-9">
                                        <input type="text" id="startDate" name="text-input" placeholder="" class="form-control" data-format="dd/mm/yyyy">
                                        <!--<input type="text"  value="11-17-2015" id="demo-1">-->

                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_name" class=" form-control-label">Bitmə tarixi</label></div>
                                    <div class="col-12 col-md-9">
                                        <input type="text" id="endDate" name="text-input" placeholder="" class="form-control" data-format="dd/mm/yyyy">
                                        <!--<input type="text"  value="11-17-2015" id="demo-1">-->

                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_name" class=" form-control-label">Başlıq(AZ)</label></div>
                                    <div class="col-12 col-md-9"><input type="text" id="titleAz" name="text-input" placeholder="" class="form-control"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_name" class=" form-control-label">Başlıq(EN)</label></div>
                                    <div class="col-12 col-md-9"><input type="text" id="titleEn" name="text-input" placeholder="" class="form-control"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_name" class=" form-control-label">Başlıq(RU)</label></div>
                                    <div class="col-12 col-md-9"><input type="text" id="titleRu" name="text-input" placeholder="" class="form-control"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_note" class=" form-control-label">Kontent(AZ)</label></div>
                                    <div class="col-12 col-md-9"><textarea id="descriptionAz" rows="6" class="form-control"></textarea></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_note" class=" form-control-label">Kontent(EN)</label></div>
                                    <div class="col-12 col-md-9"><textarea id="descriptionEn" rows="6" class="form-control"></textarea></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_note" class=" form-control-label">Kontent(RU)</label></div>
                                    <div class="col-12 col-md-9"><textarea id="descriptionRu" rows="6" class="form-control"></textarea></div>
                                </div>
                                <div class="row form-group hidden active-file-div">
                                    <div class="col col-md-3"><label for="product_files" class=" form-control-label">Şəkil</label></div>
                                    <div class="col-12 col-md-9 image-content-div">


                                    </div>
                                </div>
                                <div class="row form-group active-file-type">
                                    <div class="col col-md-3"><label for="product_files" class=" form-control-label">Şəkil</label></div>
                                    <div class="col-12 col-md-9"><input type="file" id="product_files" class="form-control-file"></div>
                                </div>
                            </form>
                            
                            
<!--                            <div class="row form-group">
                                <p class="col pull-right" style="font-weight: 700;padding-right: 15px;">
                                    <span style="display: inline-block;margin-right: 10px;">Seçilmiş</span>
                                    <label class="switch switch-3d switch-danger mr-3"><input data-type='uncheck' type="checkbox" class="switch-input product_priority"> <span class="switch-label"></span> <span class="switch-handle"></span></label>
                                </p>
                            </div>-->
                        </div>
                        <div class="modal-footer">

                            <button type="button" class="btn btn-default" data-dismiss="modal">Bağla</button>
                            <button type="button" class="btn btn-primary btn-ndu-promotation">Təsdiq et</button>

                        </div>
                    </div>
                </div>
            </div>    
        </div><!-- /#right-panel -->
        <%@include file="../include/admin_footer.jsp" %>
        <script>
            $(function () {

                $('#main-menu a i[data-type="promotation"]').parents('li').addClass('active');
                
                
                $('#startDate').fdatepicker({format: 'dd/mm/yyyy'});
                $('#endDate').fdatepicker({format: 'dd/mm/yyyy'});
                
                Product.Proxy.getPromotationList('', function (data) {
                    if (data && data.data) {
                        var html = '';
                            $.each(data.data, function (i, v) {
                                var descriptionLength = v.descriptionAz ? v.descriptionAz.length : 0;
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
                    }

                })

            })

        </script>


</body>
</html>
