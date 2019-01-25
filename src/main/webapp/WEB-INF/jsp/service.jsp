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
        <title>Xidmətlər</title>
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
                                    Xidmətlər
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
<!--                                    <div class="text-center margin-bottom-50">
                                        <h2 class="title-v2 title-center">OUR SERVICES</h2>
                                        <p class="space-lg-hor">If you are going to use a <span class="color-green">passage of Lorem Ipsum</span>, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making <span class="color-green">this the first</span> true generator on the Internet.</p>
                                    </div>-->
                                     <div class="row content-boxes-v5 content-boxes-v5-sm margin-bottom-20">
                                        <div class="col-md-6 margin-bottom-30">
                                            <img src="<c:url value="assets/main/img/icons/svgs/yukdasima.svg" />" width="75" alt="Təmizlik xidməti">
                                            <div class="content-boxes-in-v6">
                                                <h2>Yükdaşıma xidməti</h2>
                                                <p>It is a long established fact that a reader will be distracted by the readable content 
                                                    of a page when looking at its layout.It is a long established fact that a reader will be distracted by...</p>
                                                <a href="<c:url value="/service/32"/>">Ətraflı</a>
                                            </div>
                                        </div>
                                        <div class="col-md-6 margin-bottom-30">
                                            <img src="<c:url value="assets/main/img/icons/svgs/Evakuasiya.svg" />" width="75" alt="Təmizlik xidməti">
                                            <div class="content-boxes-in-v6">
                                                <h2>Evakuasiya xidməti</h2>
                                                <p>It is a long established fact that a reader will be distracted by the readable content 
                                                    of a page when looking at its layout.It is a long established fact that a reader will be distracted by...
                                                </p>
                                                <a href="<c:url value="/service/31"/>">Ətraflı</a>
                                            </div>
                                        </div>
                                         <div class="col-md-6 margin-bottom-30">
                                             <img src="<c:url value="assets/main/img/icons/svgs/cleaner.svg" />" width="50" alt="Təmizlik xidməti">
                                            <div class="content-boxes-in-v6">
                                                <h2>Təmizlik xidməti</h2>
                                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when 
                                                    looking at its layout.It is a long established fact that a reader will be distracted by...</p>
                                                <a href="<c:url value="/service/34"/>">Ətraflı</a>
                                            </div>
                                        </div>
                                        <div class="col-md-6 margin-bottom-30">
                                            <img src="<c:url value="assets/main/img/icons/svgs/anbar_xidmeti.svg"/>" width="75" alt="Təmizlik xidməti">
                                            <div class="content-boxes-in-v6">
                                                <h2>Anbar xidməti</h2>
                                                <p>
                                                    It is a long established fact that a reader will be distracted by the readable content 
                                                    of a page when looking at its layout.It is a long established fact that a reader will be distracted by...
                                                </p>
                                                <a href="<c:url value="/service/33"/>">Ətraflı</a>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6 margin-bottom-30">
                                            <img src="<c:url value="assets/main/img/icons/svgs/email.svg" />" width="60" alt="Təmizlik xidməti">
                                            <div class="content-boxes-in-v6">
                                                <h2>Poçt xidməti</h2>
                                                <p>It is a long established fact that a reader will be distracted by the readable content 
                                                    of a page when looking at its layout.It is a long established fact that a reader will be distracted by...</p>
                                                <a href="<c:url value="/service/35"/>">Ətraflı</a>
                                            </div>
                                        </div>
                                        <div class="col-md-6 margin-bottom-30">
                                            <img src="<c:url value="assets/main/img/icons/svgs/chauffeur.svg" />" width="50" alt="Təmizlik xidməti">
                                            <div class="content-boxes-in-v6">
                                                <h2>Ayıq sürücü xidməti</h2>
                                                <p>It is a long established fact that a reader will be distracted by the readable content 
                                                    of a page when looking at its layout.It is a long established fact that a reader will be distracted by...</p>
                                                <a href="<c:url value="/service/36"/>">Ətraflı</a>
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
            <div class="py-25"></div>
            <div class="py-25"></div>
                        <%@include file="include/footer.jsp" %>