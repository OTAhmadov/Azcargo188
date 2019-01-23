<%-- 
    Document   : index
    Created on : Jan 22, 2019, 5:14:45 PM
    Author     : otahmadov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Karyera</title>
        <%@include file="include/header.jsp" %>
        
         <main id="CompanyPage" class="ChildContent--flex ">


                    <!-- COMPANY PAGE  -->

                    <div class="py-25"></div>
                    <div class="py-25"></div>

                    <!-- CompanyBanner wide -->

                    <div id="CompanyBanner--wide">

                        <div class="CompanyBanner--wide--img w-100 h-220" style="background-image:url('assets/main/img/content/banners/widebanner.png?v=1')">
                            <div class="w-100 h-100 d-flex align-items-center justify-content-center">
                                <h1 class="m-0 font-60 font-mp-bold text-white">
                                    Karyera
                                </h1>
                            </div>
                        </div>

                    </div>

                    <!-- /CompanyBanner wide -->
                    <div class="py-30"></div>

                    <div class="container">


                        <!-- CompanyBanner with-text -->

                        <div id="CompanyBannerWithText">

                            <div class="row flex-row-">
                                <div class="">
                                    <div class="profile-bio">
                                        <div class="row">
                                            <div class="col-md-5 about-img">
                                                <img class="img-responsive md-margin-bottom-10" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="">
                                                
                                            </div>
                                            <div class="col-md-7">
                                                <h2>Niyə biz?</h2>
                                                <!--<hr>-->
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget massa nec turpis congue bibendum. Integer nulla felis, porta suscipit nulla et, dignissim commodo nunc. Morbi a semper nulla.</p>
                                                <p>Proin mauris odio, pharetra quis ligula non, vulputate vehicula quam. Nunc in libero vitae nunc ultricies tincidunt ut sed leo. Sed luctus dui ut congue consequat. Cras consequat nisl ante, nec malesuada velit pellentesque ac. Pellentesque nec arcu in ipsum iaculis convallis.</p>
                                                <p>Proin mauris odio, pharetra quis ligula non, vulputate vehicula quam. Nunc in libero vitae nunc ultricies tincidunt ut sed leo. Sed luctus dui ut congue consequat. Cras consequat nisl ante, nec malesuada velit pellentesque ac. Pellentesque nec arcu in ipsum iaculis convallis.</p>
                                                <p>Proin mauris odio, pharetra quis ligula non, vulputate vehicula quam. Nunc in libero vitae nunc ultricies tincidunt ut sed leo. Sed luctus dui ut congue consequat. Cras consequat nisl ante, nec malesuada velit pellentesque ac. Pellentesque nec arcu in ipsum iaculis convallis.</p>
                                                <p>Proin mauris odio, pharetra quis ligula non, vulputate vehicula quam. Nunc in libero vitae nunc ultricies tincidunt ut sed leo. Sed luctus dui ut congue consequat. Cras consequat nisl ante, nec malesuada velit pellentesque ac. Pellentesque nec arcu in ipsum iaculis convallis.</p>
                                                <p>Proin mauris odio, pharetra quis ligula non, vulputate vehicula quam. Nunc in libero vitae nunc ultricies tincidunt ut sed leo. Sed luctus dui ut congue consequat. Cras consequat nisl ante, nec malesuada velit pellentesque ac. Pellentesque nec arcu in ipsum iaculis convallis.</p>
                                                <p>Proin mauris odio, pharetra quis ligula non, vulputate vehicula quam. Nunc in libero vitae nunc ultricies tincidunt ut sed leo. Sed luctus dui ut congue consequat. Cras consequat nisl ante, nec malesuada velit pellentesque ac. Pellentesque nec arcu in ipsum iaculis convallis.</p>
                                                <p>Proin mauris odio, pharetra quis ligula non, vulputate vehicula quam. Nunc in libero vitae nunc ultricies tincidunt ut sed leo. Sed luctus dui ut congue consequat. Cras consequat nisl ante, nec malesuada velit pellentesque ac. Pellentesque nec arcu in ipsum iaculis convallis.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <!--<h4>Vakansiyalar</h4>-->
                                    <div class="panel panel-profile">
                                        <div class="panel-heading overflow-h">
                                            <h2 class="pull-left">Vakansiyalar</h2>
                                        </div>
                                        
                                        <div class="panel-body">
                                            
                                            <div class="row">
                                                <div class="col-sm-12 vacancy-div">
                                                    <hr>
                                                    <div class="profile-blog blog-border">
                                                            <h4><strong>Водитель-экспедитор на личном эвакуаторе</strong></h4>
                                                            <small class="pull-left">12.19.2018 - 12.01.2019</small>
                                                        <div class="clearfix margin-bottom-20"></div>
                                                        <p>«ГрузовичкоФ» — лидер отрасли грузоперевозок, задающий её стандарты и правила. Мы создаём сервис нового типа: современный, технологичный, учитывающий ожидания потребителей, привыкших пользоваться продуктами и услугами высшего качества. Достижение этой амбициозной цели невозможно без формирования команды, каждый член которой стремится к личному развитию и успеху, сохраняя при этом верность общим идеям и принципам.</p>
                                                        <a href="<c:url value="/career/1"/>">Ətraflı</a>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 vacancy-div">
                                                    <hr>
                                                    <div class="profile-blog blog-border">
                                                            <h4><strong>Водитель-экспедитор на личном эвакуаторе</strong></h4>
                                                            <small class="pull-left">12.19.2018 - 12.01.2019</small>
                                                        <div class="clearfix margin-bottom-20"></div>
                                                        <p>«ГрузовичкоФ» — лидер отрасли грузоперевозок, задающий её стандарты и правила. Мы создаём сервис нового типа: современный, технологичный, учитывающий ожидания потребителей, привыкших пользоваться продуктами и услугами высшего качества. Достижение этой амбициозной цели невозможно без формирования команды, каждый член которой стремится к личному развитию и успеху, сохраняя при этом верность общим идеям и принципам.</p>
                                                        <a href="<c:url value="/career/1"/>">Ətraflı</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                                
                                
                            </div>

                        </div>

                        <!-- ./CompanyBanner with-text -->    <div class="py-30"></div>
                        <div class="py-15"></div>
                        <!-- CompanyBanner with-text -->


                        <!-- ./CompanyBanner with-text -->
                    </div>
                    <div class="py-25"></div>
                    <div class="py-25"></div>
                        <%@include file="include/footer.jsp" %>