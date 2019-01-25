<%-- 
    Document   : header
    Created on : Sep 1, 2018, 11:35:34 AM
    Author     : otahmadov
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

        <!--<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>-->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"/>
        <link rel="stylesheet" href="<c:url value="/assets/main/css/build.min.css" />">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/azcargo.css" />">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/shortcode_timeline2.css" />">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/profile.css" />">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/app.css" />">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/bootstrap.min.css" />">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/blocks.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/plugins.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/ie8.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/css/font-awesome.min.css" />">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/plugins/style-switcher.css" />">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/plugins/owl.carousel.css" />">
        <link rel="stylesheet" href="<c:url value="/assets/main/css/flexicel.css" />">
        
        
        

        <c:choose>
            <c:when test="${pageContext.response.locale eq 'az' or pageContext.response.locale eq 'en' or pageContext.response.locale eq 'ru'}">
                <c:set scope="request" var="lcl" value="${pageContext.response.locale}" />
            </c:when>
            <c:otherwise>
                <c:set scope="request" var="lcl" value="az" />
            </c:otherwise>
        </c:choose> 

</head>
<body style="overflow-x: hidden">

        <div id="app">
            
            <div class="MainContent--flex">
                <!-- Header -->
                <header id="Header" class="Header--height position-absolute z-index-3 w-100">
                    <div class="Header__content  h-100p w-100 fixed-header" style="display: none">

                         <div class="container h-100">
                            <div class="row align-items-center h-100">
                                <div class="col-md-2 HeaderLeft--col logo-1">
                                    <img src="<c:url value="/assets/main/img/icons/svgs/azcargo-logo1.png?v=2" />"  alt="movex" class="" />
                                </div>
                                <div class="col-md-2 HeaderLeft--col other-logo">
                                    <img src="<c:url value="/assets/main/img/icons/svgs/azcargo-call.png?v=2" />"  alt="movex" class="w-100" />
                                </div>
                                <div class="col-md-8 HeaderRight--col h-100 py-15">
                                    <div class="HeaderRight h-100">
                                        <div class="HeaderRightTop">
                                            <!-- HeaderRightTop -->


                                            <ul class="list-s-none d-flex align-items-center p-0 justify-content-end mb-15 main-lang">

                                                <li class="pl-15">
                                                    <select class="lang font-mp-bold">
                                                        <option value="az">AZ</option>
                                                        <option value="en">EN</option>
                                                        <option value="ru">RU</option>
                                                    </select>
                                                </li>
                                                <li class="pl-15">
                                                    <!--<a href="#" class="d-block" >-->
                                                    <span class="font-mp-bold font-12 d-block do-order menu-item-li-span" data-type="hide">Sifariş et</span>
                                                    <div class="dialog order-modal" id="">
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Ad
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Telefon
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Sifariş tipi
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Ödəniş tipi
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Haradan
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Hara
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Qeyd
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <textarea type="text" ></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Şəkil
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="file" >
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div align="center">
                                                                <input type="button" value="Ok" class="btnOK">
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Bağla" class="btnCancel">
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!--</a>-->
                                                </li>
                                                <li class="pl-15"><span style="color: white">|</span>
                                                    <!--<img src="./assets/img/icons/svgs/line.svg?v=1"  alt="movex" class="w-100" />-->
                                                </li>
                                                <li class="pl-15">
                                                    <!--<a href="/" class="d-block">-->
                                                    <span class="font-mp-bold font-12 d-block do-payment menu-item-li-span" data-type="hide">Ödəniş et</span>
                                                    <div class="dialog payment-modal" id="payment-modal">
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Sifariş nömrəsi
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Sifariş məbləği
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Nömrə
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Email
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Kartın növü
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>

                                                            </div>

                                                            <div align="center">
                                                                <input type="button" value="Ok" class="btnPaymentOK">
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Bağla" class="btnPaymentCancel">
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!--</a>-->
                                                </li>
                                                <li class="pl-15">
                                                    <span style="color: white">|</span>
                                                    <!--<img src="./assets/img/icons/svgs/line.svg?v=1"  alt="movex" class="w-100" />-->
                                                </li>
                                                <li class="pl-15">
                                                    <!--<a href="/" class="d-block">-->
                                                    <span class="font-mp-bold font-12 d-block do-login menu-item-li-span" data-type="hide">Daxil ol</span>
                                                    <div class="dialog login-modal" id="" >
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Username
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text">
                                                                    </div>
                                                                    
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Password
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="password" >
                                                                    </div>
                                                                </div>

                                                            </div>

                                                            <div align="left">
                                                                <input type="button" value="Qeydiyyat" class="do-registr btnLoginRegister">
                                                            </div>
                                                            <div align="left">
                                                                <a href="/" class="d-block underline-none text-green-hover btnForgetpassword" id="">
                                                                        <i class="text-white font-mp-bold font-12">Şifrəni unutmusan?</i>
                                                                    </a>
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Ok" class="btnLoginOK">
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Bağla" class="btnLoginCancel">
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="dialog" id="registr-modal" >
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Ad
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text">
                                                                    </div>
                                                                    
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Soyad
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Email
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Əlaqə nömrəsi
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Şifrə
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="password" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Təkrar şifrə
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="password" >
                                                                    </div>
                                                                </div>

                                                            </div>

                                                            <div align="center">
                                                                <input type="button" value="Ok" class="btnRegistrOK">
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Bağla" class="btnRegistrCancel">
                                                            </div>
                                                            
                                                        </form>
                                                    </div>
                                                    <!--</a>-->
                                                </li>
<!--                                                <li class="pl-15 menu-img">
                                                    Button 
                                                    <img src="assets/img/icons/svgs/vector.svg?v=1"  alt="movex" class="w-100" />

                                                    Button     
                                                </li>-->

                                            </ul>


                                            <ul class="list-s-none d-flex align-items-center p-0 justify-content-end menu-item">

                                                <!--<li style="width: 94px;">-->
                                                <li>
                                                    <a href="<c:url value="/index" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="index"><spring:message code="page1" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/about" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="about"><spring:message code="page2" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/service" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="service"><spring:message code="page3" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/achievement" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="achievement"><spring:message code="page4" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/promotion" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="promotion"><spring:message code="page5" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/corporative" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="corporative"><spring:message code="page6" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/career" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="career"><spring:message code="page7" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/contact" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" style="" data-type="contact"><spring:message code="page8" /></span>
                                                    </a>
                                                </li>

                                            </ul>


                                            <!-- /HeaderRightTop -->                        </div>

                                    </div>
                                </div>
                                
                                <div class="col-md-12 HeaderRight--col h-100 py-15">
                                    <div class="HeaderRight h-100">
                                        <div class="HeaderRightTop">
                                            <ul class="list-s-none d-flex  p-0 menu-ul" style="position: absolute; margin-left: 34%;">

                                                
                                            </ul>
                                        </div>
                                    </div>
                                    
                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="Header__content  h-100p w-100 normal-header">

                        <div class="container h-100">
                            <div class="row align-items-center h-100">
                                <div class="col-md-2 HeaderLeft--col logo-1">
                                    <img src="<c:url value="/assets/main/img/icons/svgs/azcargo-logo.png?v=2" />"  alt="movex" class="" />
                                </div>
                                <div class="col-md-2 HeaderLeft--col other-logo">
                                    <img src="<c:url value="/assets/main/img/icons/svgs/azcargo-call1.png?v=2" />"  alt="movex" class="w-100" />
                                </div>
                                <div class="col-md-8 HeaderRight--col h-100 py-15">
                                    <div class="HeaderRight h-100">
                                        <div class="HeaderRightTop">
                                            <!-- HeaderRightTop -->


                                            <ul class="list-s-none d-flex align-items-center p-0 justify-content-end mb-15 main-lang">

                                                <li class="pl-15">
                                                    <select class="lang font-mp-bold">
                                                        <option value="az">AZ</option>
                                                        <option value="en">EN</option>
                                                        <option value="ru">RU</option>
                                                    </select>
                                                </li>
                                                <li class="pl-15">
                                                    <!--<a href="#" class="d-block" >-->
                                                    <span class="font-mp-bold font-12 d-block do-order menu-item-li-span" data-type="hide">Sifariş et</span>
                                                    <div class="dialog order-modal" id="order-modal">
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Ad
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Telefon
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Sifariş tipi
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Ödəniş tipi
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Haradan
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Hara
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Qeyd
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <textarea type="text" ></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Şəkil
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="file" >
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div align="center">
                                                                <input type="button" value="Ok" class="btnOK">
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Bağla" class="btnCancel">
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!--</a>-->
                                                </li>
                                                <li class="pl-15">
                                                    <span style="color: #2058A0">|</span>
                                                    <!--<img src="./assets/img/icons/svgs/line.svg?v=1"  alt="movex" class="w-100" />-->
                                                </li>
                                                <li class="pl-15">
                                                    <!--<a href="/" class="d-block">-->
                                                    <span class="font-mp-bold font-12 d-block do-payment menu-item-li-span" data-type="hide">Ödəniş et</span>
                                                    <div class="dialog payment-modal" id="payment-modal">
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Sifariş nömrəsi
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Sifariş məbləği
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Nömrə
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Email
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Kartın növü
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>

                                                            </div>

                                                            <div align="center">
                                                                <input type="button" value="Ok" class="btnPaymentOK">
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Bağla" class="btnPaymentCancel">
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!--</a>-->
                                                </li>
                                                <li class="pl-15"><span style="color: #2058A0">|</span>
                                                    <!--<img src="./assets/img/icons/svgs/line.svg?v=1"  alt="movex" class="w-100" />-->
                                                </li>
                                                <li class="pl-15">
                                                    <!--<a href="/" class="d-block">-->
                                                    <span class="font-mp-bold font-12 d-block do-login menu-item-li-span" data-type="hide">Daxil ol</span>
                                                    <div class="dialog login-modal" id="login-modal" >
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Username
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                    
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Password
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="password" >
                                                                    </div>
                                                                </div>

                                                            </div>

                                                            <div align="left">
                                                                <input type="button" value="Qeydiyyat" class="do-registr btnLoginRegister">
                                                            </div>
                                                            <div align="left">
                                                                <a href="/" class="d-block underline-none text-green-hover btnForgetpassword">
                                                                        <i class="text-white font-mp-bold font-12">Şifrəni unutmusan?</i>
                                                                    </a>
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Ok" class="btnLoginOK">
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Bağla" class="btnLoginCancel">
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="dialog registr-modal" id="registr-modal" >
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Ad
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                    
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Soyad
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Email
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Əlaqə nömrəsi
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="text" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Şifrə
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="password" >
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label >
                                                                        Təkrar şifrə
                                                                    </label>
                                                                    <div class="form-group">

                                                                        <input type="password" >
                                                                    </div>
                                                                </div>

                                                            </div>

                                                            <div align="center">
                                                                <input type="button" value="Ok" class="btnRegistrOK">
                                                            </div>
                                                            <div align="center">
                                                                <input type="button" value="Bağla" class="btnRegistrCancel">
                                                            </div>
                                                            
                                                        </form>
                                                    </div>
                                                    <!--</a>-->
                                                </li>
<!--                                                <li class="pl-15 menu-img">
                                                    Button 
                                                    <img src="assets/img/icons/svgs/vector.svg?v=1"  alt="movex" class="w-100" />

                                                    Button     
                                                </li>-->

                                            </ul>


                                            <ul class="list-s-none d-flex align-items-center p-0 justify-content-end menu-item">

                                                <!--<li style="width: 94px;">-->
                                                <li>
                                                    <a href="<c:url value="/index" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12 " data-type="index"><spring:message code="page1" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/about" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="about"><spring:message code="page2" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/service" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="service"><spring:message code="page3" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/achievement" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="achievement"><spring:message code="page4" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/promotion" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="promotion"><spring:message code="page5" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/corporative" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="corporative"><spring:message code="page6" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/career" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" data-type="career"><spring:message code="page7" /></span>
                                                    </a>
                                                </li>
                                                <li class="pl-15">
                                                    <a href="<c:url value="/contact" />" class="d-block underline-none text-green-hover">
                                                        <span class="text-white font-mp-bold font-12" style="" data-type="contact"><spring:message code="page8" /></span>
                                                    </a>
                                                </li>

                                            </ul>


                                            <!-- /HeaderRightTop -->                        </div>

                                    </div>
                                </div>
                                
                                <div class="col-md-12 HeaderRight--col h-100 py-15">
                                    <div class="HeaderRight h-100">
                                        <div class="HeaderRightTop">
                                            <ul class="list-s-none d-flex  p-0 menu-ul" style="position: absolute; margin-left: 34%;">

                                                
                                            </ul>
                                        </div>
                                    </div>
                                    
                                </div>

                            </div>
                        </div>

                    </div>


                </header>
