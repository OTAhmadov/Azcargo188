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
        <title>Nailiyyətlər</title>
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
                Nailiyyətlər
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
            <div class="profile-body">
                    <!--Timeline-->
                    <ul class="timeline-v2">
                        <li>
                            <time class="cbp_tmtime" datetime=""><span>04/01/2019</span> <span>January</span></time>
                            <i class="cbp_tmicon rounded-x hidden-xs"></i>
                            <div class="cbp_tmlabel">
                                <h2>Our first step</h2>
                                <div class="row">
                                    <div class="col-md-4">
                                        <img class="img-responsive" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="">
                                        <div class="md-margin-bottom-20"></div>
                                    </div>
                                    <div class="col-md-8">
                                        <p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. 
                                            Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape...</p>
                                        <p>Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato.</p>
                                        <a href="<c:url value="/achievement/1"/>" style="color: #72c02c">Ətraflı</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <time class="cbp_tmtime" datetime=""><span>12/5/2018</span> <span>May</span></time>
                            <i class="cbp_tmicon rounded-x hidden-xs"></i>
                            <div class="cbp_tmlabel">
                                <h2>Our second step</h2>
                                <div class="row">
                                    <div class="col-md-4">
                                        <img class="img-responsive" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="">
                                        <div class="md-margin-bottom-20"></div>
                                    </div>
                                    <div class="col-md-8">
                                        <p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. 
                                            Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape...</p>
                                        <p>Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato.</p>
                                        <a href="<c:url value="/achievement/1"/>" style="color: #72c02c">Ətraflı</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <time class="cbp_tmtime" datetime=""><span>10/11/2017</span> <span>November</span></time>
                            <i class="cbp_tmicon rounded-x hidden-xs"></i>
                            <div class="cbp_tmlabel">
                                <h2>Our third step</h2>
                                <div class="row">
                                    <div class="col-md-4">
                                        <img class="img-responsive" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="">
                                        <div class="md-margin-bottom-20"></div>
                                    </div>
                                    <div class="col-md-8">
                                        <p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape.</p>
                                        <p>Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato.</p>
                                        <a href="<c:url value="/achievement/1"/>" style="color: #72c02c">Ətraflı</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <time class="cbp_tmtime" datetime=""><span>10/11/2017</span> <span>November</span></time>
                            <i class="cbp_tmicon rounded-x hidden-xs"></i>
                            <div class="cbp_tmlabel">
                                <h2>Our third step</h2>
                                <div class="row">
                                    <div class="col-md-4">
                                        <img class="img-responsive" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="">
                                        <div class="md-margin-bottom-20"></div>
                                    </div>
                                    <div class="col-md-8">
                                        <p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape.</p>
                                        <p>Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato.</p>
                                       <a href="<c:url value="/achievement/1"/>" style="color: #72c02c">Ətraflı</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <time class="cbp_tmtime" datetime=""><span>10/11/2017</span> <span>November</span></time>
                            <i class="cbp_tmicon rounded-x hidden-xs"></i>
                            <div class="cbp_tmlabel">
                                <h2>Our third step</h2>
                                <div class="row">
                                    <div class="col-md-4">
                                        <img class="img-responsive" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="">
                                        <div class="md-margin-bottom-20"></div>
                                    </div>
                                    <div class="col-md-8">
                                        <p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape.</p>
                                        <p>Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato.</p>
                                        <a href="<c:url value="/achievement/1"/>" style="color: #72c02c">Ətraflı</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <time class="cbp_tmtime" datetime=""><span>10/11/2017</span> <span>November</span></time>
                            <i class="cbp_tmicon rounded-x hidden-xs"></i>
                            <div class="cbp_tmlabel">
                                <h2>Our third step</h2>
                                <div class="row">
                                    <div class="col-md-4">
                                        <img class="img-responsive" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="">
                                        <div class="md-margin-bottom-20"></div>
                                    </div>
                                    <div class="col-md-8">
                                        <p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape.</p>
                                        <p>Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato.</p>
                                        <a href="<c:url value="/achievement/1"/>" style="color: #72c02c">Ətraflı</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <time class="cbp_tmtime" datetime=""><span>10/11/2017</span> <span>November</span></time>
                            <i class="cbp_tmicon rounded-x hidden-xs"></i>
                            <div class="cbp_tmlabel">
                                <h2>Our third step</h2>
                                <div class="row">
                                    <div class="col-md-4">
                                        <img class="img-responsive" src="<c:url value="assets/main/img/content/banners/bannerwt.png?v=1" />" alt="">
                                        <div class="md-margin-bottom-20"></div>
                                    </div>
                                    <div class="col-md-8">
                                        <p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape.</p>
                                        <p>Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato.</p>
                                        <a href="<c:url value="/achievement/1" />" style="color: #72c02c">Ətraflı</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                    <!--End Timeline-->
                </div>
        </div>
    
    </div>
    
    <!-- ./CompanyBanner with-text -->    <div class="py-30"></div>
    <div class="py-15"></div>
    <!-- CompanyBanner with-text -->
    
    
    <!-- ./CompanyBanner with-text -->
</div>
<!--<div class="py-25"></div>-->
<div class="py-25"></div>
                        <%@include file="include/footer.jsp" %>