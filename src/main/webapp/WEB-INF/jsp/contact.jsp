<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
  
 
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="yandex-verification" content="27e5b7e636c95396" />
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="apple-touch-icon.png" rel="apple-touch-icon">
    <link href="assets/index/images/logo-light.png" rel="icon">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Dadlı Teatr</title>
    <%@include file="include/header.jsp" %>

  </head>
  <body>
    <div class="ps-search">
      <div class="ps-search__content"><a class="ps-search__close" href="#"><span></span></a>
        <form class="ps-form--search-2" action="<c:url value="/product?typeId=${type}&page=1" />" method="get">
            <h3><spring:message code="search.key" /></h3>
          <div class="form-group">
              <input class="form-control" type="text" placeholder="" name="name">
            <button class="ps-btn active ps-btn--fullwidth"><spring:message code="search" /></button>
          </div>
        </form>
      </div>
    </div>
    <!-- Header-->
    <header class="header header--1">
      <div class="container-fluid" style="padding: 5px 15px;">
        <div class="row">
          <div class="col-sm-6 hidden-xs">
            +994 55 215 79 36 <a href="<c:url value="/contact"/>" style="margin-left: 10px">Find us on map!</a>
          </div>
          <div class="col-sm-6">
            <div class="lang-block text-right">
              <a tabindex="-1" href="<c:url value="?lang=az" />" style="margin-left: 10px;"><spring:message code="label.header.azerbaijan"/></a>
              <a tabindex="-1" href="<c:url value="?lang=en" />" style="margin-left: 10px;"><spring:message code="label.header.english"/></a>
              <a tabindex="-1" href="<c:url value="?lang=ru" />" style="margin-left: 10px;"><spring:message code="label.header.russian"/></a>
            </div>
          </div>
        </div>
      </div>

      <nav class="navigation">
        <div class="ps-container">
          <div class="navigation__left">
            <ul class="menu">
              <li class="menu-item-has-children "><a href="<c:url value="/index"/>"><spring:message code="page1"/></a></li>
              
              <li class=""><a href="<c:url value="/product"/>"><spring:message code="page2"/></a></li>
            </ul>
          </div>
          <div class="navigation__center"><a class="ps-logo" href="index.html"><img src="assets/index/images/logo-light.png" alt=""></a></div>
          <div class="navigation__right">
            <ul class="menu">
                <li class=""><a href="<c:url value="/about"/>"><spring:message code="page3"/></a></li>
                <li class="current-menu-item"><a href="<c:url value="/contact"/>"><spring:message code="page4"/></a></li>
            </ul>
            <div class="header__actions">
              <a class="ps-search-btn" href="#"><i class="ba-magnifying-glass"></i></a>
            </div>
          </div>
        </div>
      </nav>
      <nav class="navigation--mobile">
        <div class="ps-container"><a class="ps-logo" href="#"><img src="assets/index/images/logo-light.png" alt=""></a>
          <ul class="menu menu--mobile">
            <li><a href="<c:url value="/index"/>"><spring:message code="page1"/></a></li>
            <li><a href="<c:url value="/product"/>"><spring:message code="page2"/></a></li>
            <li><a href="<c:url value="/about"/>"><spring:message code="page3"/></a></li>
            <li><a href="<c:url value="/contact"/>"><spring:message code="page4"/></a></li>
          </ul>
          <div class="menu-toggle"><span></span></div>
          <div class="header__actions">
            <a class="ps-search-btn" href="#"><i class="ba-magnifying-glass"></i></a>
          </div>
        </div>
      </nav>
    </header>
    <style>
      .ps-hero{
        min-height: 1px;
      }
      .ps-hero__content{
        padding-top: 50px;
      }
      .ps-about-intro{
        padding-top: 0;
      }
      .ps-contact {
          padding: 50px 0 50px;
      }
    </style>
    <!-- Home banner-->
    <div class="ps-hero bg--cover" data-background="assets/index/images/hero/contact.jpg">
      <div class="ps-hero__content">
          <h1><spring:message code="page4"/></h1>
        <div class="ps-breadcrumb">
          <ol class="breadcrumb">
              <li><a href="<c:url value="/index"/>"><spring:message code="page1" /></a></li>
            <li class="active"><spring:message code="page4"/></li>
          </ol>
        </div>
      </div>
    </div>
    <div class="ps-contact">
      <div class="ps-container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
            <div class="ps-contact__info">
              <div class="row">
                <div class="col-xs-12 ">
                  <div class="ps-block--contact-2 text-center">
                    <h3>${company.name}</h3>
                    <h4>${company.address}</h4>
                    <c:forEach items="${contacts}" var="contact">
                    <p><i class="${contact.type.icon}"></i><a href="#">${contact.contact}</a></p>    
                    </c:forEach>
<!--                    <p><i class="fa fa-envelope-o"></i><a href="#">hello@example.com</a></p>
                    <p><i class="fa fa-phone"></i> +1 650-253-0000</p>-->
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="contact-map" data-address="Baku, Azerbaijan" data-title="" data-zoom="17"></div>

    
    <%@include file="include/footer.jsp" %>
  </body>

</html>