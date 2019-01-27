<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User group</title>
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
                        <h1>İstifadəçi qrupları</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li class="active"><span class="fa fa-plus add-user-group" style="cursor: pointer;"></span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3" >
            <div class="row">
                
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">İstifadəçi qrupları</strong>
                            
                        </div>
                        <div class="card-body">
                            <table id="user_group_list" class="table table-striped table-bordered">
                                <thead>
                                  <tr>
                                    <th>No</th>
                                    <th>Adı</th>
                                    <th></th>
                                  </tr>
                                </thead>
                                <tbody>
                                    
                                </tbody>
                              </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-md-offset-1">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Modullar</strong>
                        </div>
                        <div class="card-body">
                            <table id="user_group_module_list" class="table table-striped table-bordered">
                                <thead>
                                  <tr>
                                    <th>No</th>
                                    <th>Adı</th>
                                  </tr>
                                </thead>
                                <tbody>

                                </tbody>
                              </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade bs-example-modal-lg user_group_modal" tabicommon_selling_modalndex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="myLargeModalLabel">İstifadəçi qrupu</h4>
                    </div>
                    <div class="modal-body">
                        <form id="user_group_form">
                            <input class="hidden" value="0" name="id" />
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="product_name" class=" form-control-label">Adı</label></div>
                                <div class="col-12 col-md-9"><input type="text" id="nameAz" name="nameAz" placeholder="" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                              <div class="col col-md-12"><label for="product_name" class=" form-control-label">Modullar</label></div>
                              <div class="col-12 col-md-12">
                                  <table id="user_group_module_operation" class="table table-striped table-bordered">
                                    <thead>
                                      <tr>
                                        <th>No</th>
                                        <th>Adı</th>
                                        <th></th>
                                      </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                  </table>

                              </div>
                            </div>
                        </form>
                        
                    </div>
                    <div class="modal-footer">
                        
                        <button type="button" class="btn btn-default" data-dismiss="modal">Bağla</button>
                        <button type="button" class="btn btn-primary btn-ndu-usergroup">Təsdiq et</button>

                    </div>
                </div>
            </div>
        </div> 
    </div><!-- /#right-panel -->
    <%@include file="../include/admin_footer.jsp" %>
    <script>
        $(function() {
            
            $('#main-menu a i[data-type="userGroup"]').parents('li').addClass('active');
            
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
                                    '<td class="for-view">'+(++i)+'</td>'+
                                    '<td class="for-view">'+v.name[Product.lang]+'</td>'+
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
                    })
                    
                }
            })
            
            Product.Proxy.getModuleList(function(data) {
                if(data) {
                    var html ='';
                    $.each(data, function(i, v){
                        html += '<tr data-id="'+v.id+'">'+
                                    '<td>'+(++i)+'</td>'+
                                    '<td>'+v.name[Product.lang]+'</td>'+
                                    '<td><input type="checkbox" name="moduleId" value="'+v.id+'"/></td>'+
                                '</tr>';
                    })
                    $('#user_group_module_operation tbody').html(html);
                }
            })
            
        })
        
    </script>
 

</body>
</html>
