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
                <li class="current-menu-item"><a href="<c:url value="/about"/>"><spring:message code="page3"/></a></li>
              <li><a href="<c:url value="/contact"/>"><spring:message code="page4"/></a></li>
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
    </style>
    <!-- Home banner-->
    <div class="ps-hero bg--cover" data-background="assets/index/images/hero/about.jpg">
      <div class="ps-hero__content">
          <h1><spring:message code="page3"/></h1>
        <div class="ps-breadcrumb">
          <ol class="breadcrumb">
            <li><a href="<c:url value="/index"/>"><spring:message code="page1"/></a></li>
            <li class="active"><spring:message code="page3"/></li>
          </ol>
        </div>
      </div>
    </div>
    <!-- About Intro-->
    <div class="ps-about-intro">
      <div class="ps-block--signature">
        <div class="ps-block__thumbnail"><img src="assets/index/images/signature.png" alt=""></div>
        <div class="ps-block__content">
          <!--<small>${about.title}</small>-->
          <p>${about.content[lcl]}</p><img src="images/signature-2.png" alt="">
        </div>
      </div>
      <div class="ps-about-number">
        <div class="ps-container">
          <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-block--countdown"><i class="ba-biscuit-1"></i><span class="number ps-block__number" data-from="0" data-to="165"> 165</span>
                  <h4><spring:message code="about.chef"/></h4>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-block--countdown"><i class="ba-mixer"></i><span class="number ps-block__number" data-from="0" data-to="2130"> 2130</span>
                <h4><spring:message code="about.recepies"/></h4>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-block--countdown"><i class="ba-bread-2"></i><span class="number ps-block__number" data-from="0" data-to="3450"> 3450</span>
                <h4><spring:message code="about.bread"/></h4>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-block--countdown"><i class="ba-flour"></i><span class="number ps-block__number" data-from="0" data-to="345"> 345</span>
                <h4><spring:message code="about.flour"/></h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Testimonials-->
    <div class="ps-testimonials bg--parallax" data-background="assets/index/images/bg/testimonials.jpg">
      <div class="ps-container">
        <div class="ps-carousel--testimonial owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="false" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="off" data-owl-animate-in="fadeIn" data-owl-animate-out="fadeOut">
          <div class="ps-block--tesimonial">
            <div class="ps-block__user"><img src="assets/index/images/user/1.jpg" alt=""></div>
            <div class="ps-block__content">

              <p>?Dessert pudding dessert jelly beans cupcake sweet caramels gingerbread. Fruitcake biscuit cheesecake. Cookie topping sweet muffin pudding tart bear claw sugar plum croissant.?</p>
            </div>
            <div class="ps-block__footer">
              <p><strong>Logan May</strong>  - CEO & Founder Invision</p>
            </div>
          </div>
          <div class="ps-block--tesimonial">
            <div class="ps-block__user"><img src="assets/index/images/user/2.jpg" alt=""></div>
            <div class="ps-block__content">

              <p>?Dessert pudding dessert jelly beans cupcake sweet caramels gingerbread. Fruitcake biscuit cheesecake. Cookie topping sweet muffin pudding tart bear claw sugar plum croissant.?</p>
            </div>
            <div class="ps-block__footer">
              <p><strong>Logan May</strong>  - CEO & Founder Invision</p>
            </div>
          </div>
          <div class="ps-block--tesimonial">
            <div class="ps-block__user"><img src="assets/index/images/user/3.jpg" alt=""></div>
            <div class="ps-block__content">

              <p>?Dessert pudding dessert jelly beans cupcake sweet caramels gingerbread. Fruitcake biscuit cheesecake. Cookie topping sweet muffin pudding tart bear claw sugar plum croissant.?</p>
            </div>
            <div class="ps-block__footer">
              <p><strong>Logan May</strong>  - CEO & Founder Invision</p>
            </div>
          </div>
          <div class="ps-block--tesimonial">
            <div class="ps-block__user"><img src="assets/index/images/user/4.jpg" alt=""></div>
            <div class="ps-block__content">

              <p>?Dessert pudding dessert jelly beans cupcake sweet caramels gingerbread. Fruitcake biscuit cheesecake. Cookie topping sweet muffin pudding tart bear claw sugar plum croissant.?</p>
            </div>
            <div class="ps-block__footer">
              <p><strong>Logan May</strong>  - CEO & Founder Invision</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <%@include file="include/footer.jsp" %>
  </body>

</html>