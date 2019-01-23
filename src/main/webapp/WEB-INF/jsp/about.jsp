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
        <title>Haqqında</title>
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
                                    Haqqımızda
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
                                <div class="container content-sm">
                                    <div class="row about-me">
                                        <div class="col-sm-4 shadow-wrapper md-margin-bottom-40">
                                            <div class="box-shadow shadow-effect-2 about-img">
                                                <img class="img-responsive img-bordered full-width" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="">
                                            </div>
                                        </div>

                                        <div class="col-sm-8">
                                            <div class="overflow-h">
                                                <div class="pull-left">
                                                    <h2>Haqqımızda</h2>
                                                    <!--<span>CEO, Director</span>-->
                                                </div>
                                            </div>
                                            <p>Nulla fermentum blandit dolor eu dictum. Nulla faucibus libero eget mi tempus, quis laoreet ante congue. Nullam sed tortor vitae magna auctor vestibulum. Fusce gravida, mauris at vulputate aliquet, arcu nunc scelerisque mi, pellentesque mollis lectus mauris in urna.</p>
                                            <p>Suspendisse non magna sed justo tincidunt pellentesque. Proin sit amet ligula vel orci tempus viverra. Donec massa justo, sodales in leo pretium, adipiscing dictum mi. Nullam sed eleifend purus. Sed eget lacus eget urna venenatis hendrerit sed sit amet dui. Suspendisse lorem velit, tincidunt nec mattis ut, gravida adipiscing sapien.</p><br>
                                            <p>Nulla fermentum blandit dolor eu dictum. Nulla faucibus libero eget mi tempus, quis laoreet ante congue. Nullam sed tortor vitae magna auctor vestibulum. Fusce gravida, mauris at vulputate aliquet, arcu nunc scelerisque mi, pellentesque mollis lectus mauris in urna.</p>
                                            <p>Suspendisse non magna sed justo tincidunt pellentesque. Proin sit amet ligula vel orci tempus viverra. Donec massa justo, sodales in leo pretium, adipiscing dictum mi. Nullam sed eleifend purus. Sed eget lacus eget urna venenatis hendrerit sed sit amet dui. Suspendisse lorem velit, tincidunt nec mattis ut, gravida adipiscing sapien.</p><br>
                                            <p>Nulla fermentum blandit dolor eu dictum. Nulla faucibus libero eget mi tempus, quis laoreet ante congue. Nullam sed tortor vitae magna auctor vestibulum. Fusce gravida, mauris at vulputate aliquet, arcu nunc scelerisque mi, pellentesque mollis lectus mauris in urna.</p>
                                            <p>Suspendisse non magna sed justo tincidunt pellentesque. Proin sit amet ligula vel orci tempus viverra. Donec massa justo, sodales in leo pretium, adipiscing dictum mi. Nullam sed eleifend purus. Sed eget lacus eget urna venenatis hendrerit sed sit amet dui. Suspendisse lorem velit, tincidunt nec mattis ut, gravida adipiscing sapien.</p><br>
                                            <p>Nulla fermentum blandit dolor eu dictum. Nulla faucibus libero eget mi tempus, quis laoreet ante congue. Nullam sed tortor vitae magna auctor vestibulum. Fusce gravida, mauris at vulputate aliquet, arcu nunc scelerisque mi, pellentesque mollis lectus mauris in urna.</p>
                                            <p>Suspendisse non magna sed justo tincidunt pellentesque. Proin sit amet ligula vel orci tempus viverra. Donec massa justo, sodales in leo pretium, adipiscing dictum mi. Nullam sed eleifend purus. Sed eget lacus eget urna venenatis hendrerit sed sit amet dui. Suspendisse lorem velit, tincidunt nec mattis ut, gravida adipiscing sapien.</p><br>
                                            <p>Nulla fermentum blandit dolor eu dictum. Nulla faucibus libero eget mi tempus, quis laoreet ante congue. Nullam sed tortor vitae magna auctor vestibulum. Fusce gravida, mauris at vulputate aliquet, arcu nunc scelerisque mi, pellentesque mollis lectus mauris in urna.</p>
                                            <p>Suspendisse non magna sed justo tincidunt pellentesque. Proin sit amet ligula vel orci tempus viverra. Donec massa justo, sodales in leo pretium, adipiscing dictum mi. Nullam sed eleifend purus. Sed eget lacus eget urna venenatis hendrerit sed sit amet dui. Suspendisse lorem velit, tincidunt nec mattis ut, gravida adipiscing sapien.</p><br>
                                            <p>Nulla fermentum blandit dolor eu dictum. Nulla faucibus libero eget mi tempus, quis laoreet ante congue. Nullam sed tortor vitae magna auctor vestibulum. Fusce gravida, mauris at vulputate aliquet, arcu nunc scelerisque mi, pellentesque mollis lectus mauris in urna.</p>
                                            <p>Suspendisse non magna sed justo tincidunt pellentesque. Proin sit amet ligula vel orci tempus viverra. Donec massa justo, sodales in leo pretium, adipiscing dictum mi. Nullam sed eleifend purus. Sed eget lacus eget urna venenatis hendrerit sed sit amet dui. Suspendisse lorem velit, tincidunt nec mattis ut, gravida adipiscing sapien.</p><br>
                        
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            
                        </div>
                        
                        <!-- ./CompanyBanner with-text -->    <div class="py-30"></div>
                        <!--<div class="py-15"></div>-->
                        <!-- CompanyBanner with-text -->


                        <!-- ./CompanyBanner with-text -->
                    </div>
                    <div class="parallax-counter-v2 parallaxBg1" style="background-position: 50% 346px;">
                                    <div class="container">
                                        <ul class="row list-row">
                                            <li class="col-md-3 col-sm-6 col-xs-12 md-margin-bottom-30">
                                                <div class="counters rounded">
                                                    <span class="counter">1294</span>
                                                    <h4 class="text-transform-normal">Müraciətlər</h4>
                                                </div>
                                            </li>
                                            <li class="col-md-3 col-sm-6 col-xs-12 md-margin-bottom-30">
                                                <div class="counters rounded">
                                                    <span class="counter">28</span>
                                                    <h4 class="text-transform-normal">Nailiyyətlər</h4>
                                                </div>
                                            </li>
                                            <li class="col-md-3 col-sm-6 col-xs-12 sm-margin-bottom-30">
                                                <div class="counters rounded">
                                                    <span class="counter">2</span>
                                                    <h4 class="text-transform-normal">Kompaniyalar</h4>
                                                </div>
                                            </li>
                                            <li class="col-md-3 col-sm-6 col-xs-12">
                                                <div class="counters rounded">
                                                    <span class="counter">10</span>
                                                    <h4 class="text-transform-normal">Xidmətlər</h4>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                    <div class="py-25"></div>
                        <%@include file="include/footer.jsp" %>