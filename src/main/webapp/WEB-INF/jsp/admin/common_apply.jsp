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
                        <h1>Ümumi müraciətlər</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <!--<li class="active add-achievement"><span class="fa fa-plus" style="cursor: pointer;"></span></li>-->
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
                            <table id="common_apply_list" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Ad</th>
                                        <th>Email</th>
                                        <th>Tarix</th>
                                        <th>Qeyd</th>
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

            <div class="modal fade bs-example-modal-lg common_apply_modal" tabicommon_selling_modalndex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                        <div class="modal-header">
                            <!--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>-->
                            <h4 class="modal-title" id="myLargeModalLabel">Müraciət haqqında məlumat</h4>
                        </div>
                        <div class="modal-body">
                            <form id="common-apply-form">

                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_name" class=" form-control-label">Adı</label></div>
                                    <div class="col-12 col-md-9"><input disabled type="text" id="name" name="text-input" placeholder="" class="form-control"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_name" class=" form-control-label">Email</label></div>
                                    <div class="col-12 col-md-9"><input disabled type="text" id="email" name="text-input" placeholder="" class="form-control"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_note" class=" form-control-label">Tarix</label></div>
                                    <div class="col-12 col-md-9"><input type="text" id="createDate" class="form-control" /></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="product_note" class=" form-control-label">Qeyd</label></div>
                                    <div class="col-12 col-md-9"><textarea disabled id="descriptionAz" rows="6" class="form-control"></textarea></div>
                                </div>
                                
                            </form>
                        </div>
                        <div class="modal-footer">

                            <button type="button" class="btn btn-default" data-dismiss="modal">Bağla</button>

                        </div>
                    </div>
                </div>
            </div>    
        </div><!-- /#right-panel -->
        <%@include file="../include/admin_footer.jsp" %>
        <script>
            $(function () {

                $('#main-menu a i[data-type="commonApply"]').parents('li').addClass('active');
                
                
                Product.Proxy.getCommonApplyList('', function (data) {
                    if (data && data.data) {
                        var html = '';
                            $.each(data.data, function (i, v) {
                                
                                html += '<tr>' +
                                        '<td>' + v.name + '</th>' +
                                        '<td>' + v.email + '</td>' +
                                        '<td>' + v.createDate + '</td>' +
                                        '<td>' + v.description + '</td>' +
                                        '<td><i class="fa fa-eye view-common-apply" data-id="' + v.id + '"></i>' +
                                        '</tr>'
                            })
                            $('#common_apply_list tbody').html(html);
                            $('#common_apply_list').DataTable();
                    }

                })

            })

        </script>


</body>
</html>
