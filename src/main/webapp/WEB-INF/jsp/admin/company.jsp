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
                        <h1>Məhsullar</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li class="active"><span class="fa fa-plus" style="cursor: pointer;"></span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3" >
            <div class="row">
                
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Data Table</strong>
                        </div>
                        <div class="card-body">
                            <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                <thead>
                                  <tr>
                                    <th>Name</th>
                                    <th>Position</th>
                                    <th>Office</th>
                                    <th>Salary</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td>Tiger Nixon</td>
                                    <td>System Architect</td>
                                    <td>Edinburgh</td>
                                    <td>$320,800</td>
                                  </tr>
                                  <tr>
                                    <td>Garrett Winters</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>$170,750</td>
                                  </tr>
                                  <tr>
                                    <td>Ashton Cox</td>
                                    <td>Junior Technical Author</td>
                                    <td>San Francisco</td>
                                    <td>$86,000</td>
                                  </tr>

                                </tbody>
                              </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                  <div class="card">
                    <div class="card-header">
                      <strong>Product add template</strong>
                    </div>
                    <div class="card-body card-block">
                      <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                        <div class="row form-group">
                            <p class="col pull-right" style="font-weight: 700;padding-right: 15px;">
                                <span style="display: inline-block;margin-right: 10px;">Favorite</span>
                                <label class="switch switch-3d switch-danger mr-3"><input type="checkbox" class="switch-input" checked="true"> <span class="switch-label"></span> <span class="switch-handle"></span></label>
                            </p>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label class=" form-control-label">Static</label></div>
                          <div class="col-12 col-md-9">
                            <p class="form-control-static">Username</p>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="text-input" class=" form-control-label">Text Input</label></div>
                          <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="Text" class="form-control"><small class="form-text text-muted">This is a help text</small></div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="email-input" class=" form-control-label">Email Input</label></div>
                          <div class="col-12 col-md-9"><input type="email" id="email-input" name="email-input" placeholder="Enter Email" class="form-control"><small class="help-block form-text">Please enter your email</small></div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="number-input" class=" form-control-label">number input</label></div>
                          <div class="col-12 col-md-9"><input type="number" id="number-input" name="password-input" placeholder="number" class="form-control"><small class="help-block form-text">Please enter a number</small></div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="disabled-input" class=" form-control-label">Disabled Input</label></div>
                          <div class="col-12 col-md-9"><input type="text" id="disabled-input" name="disabled-input" placeholder="Disabled" disabled="" class="form-control"></div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Textarea</label></div>
                          <div class="col-12 col-md-9"><textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Content..." class="form-control"></textarea></div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="select" class=" form-control-label">Select</label></div>
                          <div class="col-12 col-md-9">
                            <select name="select" id="select" class="form-control">
                              <option value="0">Please select</option>
                              <option value="1">Option #1</option>
                              <option value="2">Option #2</option>
                              <option value="3">Option #3</option>
                            </select>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="selectLg" class=" form-control-label">Select Large</label></div>
                          <div class="col-12 col-md-9">
                            <select name="selectLg" id="selectLg" class="form-control-lg form-control">
                              <option value="0">Please select</option>
                              <option value="1">Option #1</option>
                              <option value="2">Option #2</option>
                              <option value="3">Option #3</option>
                            </select>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="selectSm" class=" form-control-label">Select Small</label></div>
                          <div class="col-12 col-md-9">
                            <select name="selectSm" id="SelectLm" class="form-control-sm form-control">
                              <option value="0">Please select</option>
                              <option value="1">Option #1</option>
                              <option value="2">Option #2</option>
                              <option value="3">Option #3</option>
                              <option value="4">Option #4</option>
                              <option value="5">Option #5</option>
                            </select>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="disabledSelect" class=" form-control-label">Disabled Select</label></div>
                          <div class="col-12 col-md-9">
                            <select name="disabledSelect" id="disabledSelect" disabled="" class="form-control">
                              <option value="0">Please select</option>
                              <option value="1">Option #1</option>
                              <option value="2">Option #2</option>
                              <option value="3">Option #3</option>
                            </select>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="multiple-select" class=" form-control-label">Multiple select</label></div>
                          <div class="col col-md-9">
                            <select name="multiple-select" id="multiple-select" multiple="" class="form-control">
                              <option value="1">Option #1</option>
                              <option value="2">Option #2</option>
                              <option value="3">Option #3</option>
                              <option value="4">Option #4</option>
                              <option value="5">Option #5</option>
                              <option value="6">Option #6</option>
                              <option value="7">Option #7</option>
                              <option value="8">Option #8</option>
                              <option value="9">Option #9</option>
                              <option value="10">Option #10</option>
                            </select>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label class=" form-control-label">Radios</label></div>
                          <div class="col col-md-9">
                            <div class="form-check">
                              <div class="radio">
                                <label for="radio1" class="form-check-label ">
                                  <input type="radio" id="radio1" name="radios" value="option1" class="form-check-input">Option 1
                                </label>
                              </div>
                              <div class="radio">
                                <label for="radio2" class="form-check-label ">
                                  <input type="radio" id="radio2" name="radios" value="option2" class="form-check-input">Option 2
                                </label>
                              </div>
                              <div class="radio">
                                <label for="radio3" class="form-check-label ">
                                  <input type="radio" id="radio3" name="radios" value="option3" class="form-check-input">Option 3
                                </label>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label class=" form-control-label">Inline Radios</label></div>
                          <div class="col col-md-9">
                            <div class="form-check-inline form-check">
                              <label for="inline-radio1" class="form-check-label ">
                                <input type="radio" id="inline-radio1" name="inline-radios" value="option1" class="form-check-input">One
                              </label>
                              <label for="inline-radio2" class="form-check-label ">
                                <input type="radio" id="inline-radio2" name="inline-radios" value="option2" class="form-check-input">Two
                              </label>
                              <label for="inline-radio3" class="form-check-label ">
                                <input type="radio" id="inline-radio3" name="inline-radios" value="option3" class="form-check-input">Three
                              </label>
                            </div>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label class=" form-control-label">Checkboxes</label></div>
                          <div class="col col-md-9">
                            <div class="form-check">
                              <div class="checkbox">
                                <label for="checkbox1" class="form-check-label ">
                                  <input type="checkbox" id="checkbox1" name="checkbox1" value="option1" class="form-check-input">Option 1
                                </label>
                              </div>
                              <div class="checkbox">
                                <label for="checkbox2" class="form-check-label ">
                                  <input type="checkbox" id="checkbox2" name="checkbox2" value="option2" class="form-check-input"> Option 2
                                </label>
                              </div>
                              <div class="checkbox">
                                <label for="checkbox3" class="form-check-label ">
                                  <input type="checkbox" id="checkbox3" name="checkbox3" value="option3" class="form-check-input"> Option 3
                                </label>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label class=" form-control-label">Inline Checkboxes</label></div>
                          <div class="col col-md-9">
                            <div class="form-check-inline form-check">
                              <label for="inline-checkbox1" class="form-check-label ">
                                <input type="checkbox" id="inline-checkbox1" name="inline-checkbox1" value="option1" class="form-check-input">One
                              </label>
                              <label for="inline-checkbox2" class="form-check-label ">
                                <input type="checkbox" id="inline-checkbox2" name="inline-checkbox2" value="option2" class="form-check-input">Two
                              </label>
                              <label for="inline-checkbox3" class="form-check-label ">
                                <input type="checkbox" id="inline-checkbox3" name="inline-checkbox3" value="option3" class="form-check-input">Three
                              </label>
                            </div>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="file-input" class=" form-control-label">File input</label></div>
                          <div class="col-12 col-md-9"><input type="file" id="file-input" name="file-input" class="form-control-file"></div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3"><label for="file-multiple-input" class=" form-control-label">Multiple File input</label></div>
                          <div class="col-12 col-md-9"><input type="file" id="file-multiple-input" name="file-multiple-input" multiple="" class="form-control-file"></div>
                        </div>
                      </form>
                    </div>
                    <div class="card-footer">
                      <button type="submit" class="btn btn-primary btn-sm">
                        <i class="fa fa-dot-circle-o"></i> Submit
                      </button>
                      <button type="reset" class="btn btn-danger btn-sm">
                        <i class="fa fa-ban"></i> Reset
                      </button>
                    </div>
                  </div>
            </div>

        </div> <!-- .content -->
    </div><!-- /#right-panel -->
    <%@include file="../include/admin_footer.jsp" %>
    <script>
        $(function() {
            
            $('#main-menu a i[data-type="user"]').parents('li').addClass('active');

            
        })
        
    </script>
    

    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
        } );
    </script>

</body>
</html>
