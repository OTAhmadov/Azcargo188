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
        <title>Kampaniyalar</title>
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
                Kampaniyalar
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
            <div class="col-md-6">
                <img class="w-100" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="People with text" />
            </div>
            <div class="col-md-6">
                <div>
                    <h2 class="text-blue font-mp-bold font-34">Yay mövsümündə təmizlik xidmətinə 50% endirim</h2>
                    <div class="pt-20"></div>
                    <p class="text-black font-14 font-mp">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra mauris eget tortor imperdiet vehicula. Proin
                        egestas diam ac mauris molestie hendrerit. Quisque nec nisi tortor. Etiam at mauris sit amet magna suscipit
                        hend rerit non sed ligula. Vivamus purus odio, mollis ut sagittis vel, feugiat et nulla. Aenean id felis
                        sed ligula volutpat consectetur. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
                        cubilia Curae
                    </p>
                    <a href="#" class="d- text-green font-16 font-mp-bold">
                        Ətraflı məlumat
                    </a>
                </div>
            </div>
        </div>
    
    </div>
    
    <!-- ./CompanyBanner with-text -->    <div class="py-30"></div>
    <div class="py-15"></div>
    <!-- CompanyBanner with-text -->
    
    <div id="CompanyBannerWithText">
    
        <div class="row flex-row-reverse">
            <div class="col-md-6">
                <img class="w-100" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="People with text" />
            </div>
            <div class="col-md-6">
                <div>
                    <h2 class="text-blue font-mp-bold font-34">Yay mövsümündə təmizlik xidmətinə 50% endirim</h2>
                    <div class="pt-20"></div>
                    <p class="text-black font-14 font-mp">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra mauris eget tortor imperdiet vehicula. Proin
                        egestas diam ac mauris molestie hendrerit. Quisque nec nisi tortor. Etiam at mauris sit amet magna suscipit
                        hend rerit non sed ligula. Vivamus purus odio, mollis ut sagittis vel, feugiat et nulla. Aenean id felis
                        sed ligula volutpat consectetur. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
                        cubilia Curae
                    </p>
                    <a href="#" class="d- text-green font-16 font-mp-bold">
                        Ətraflı məlumat
                    </a>
                </div>
            </div>
        </div>
    
    </div>
    
    <!-- ./CompanyBanner with-text -->
</div>
<div class="py-25"></div>
<div class="py-25"></div>
                        <%@include file="include/footer.jsp" %>