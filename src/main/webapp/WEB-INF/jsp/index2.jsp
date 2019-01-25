<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  
<!-- Mirrored from warethemes.com/html/bready/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Sep 2018 16:36:26 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="yandex-verification" content="27e5b7e636c95396" />
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="apple-touch-icon.png" rel="apple-touch-icon">
    <link href="favicon.png" rel="icon">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Bready</title>
    <%@include file="include/header.jsp" %>

  </head>
<!--  <body>
    <div class="ps-search">
      <div class="ps-search__content"><a class="ps-search__close" href="#"><span></span></a>
        <form class="ps-form--search-2" action="<c:url value="/product" />" method="get">
            <h3><spring:message code="search.key" /></h3>
          <div class="form-group">
              <input class="form-control" type="text" placeholder="" name="name">
            <button class="ps-btn active ps-btn--fullwidth"><spring:message code="search" /></button>
          </div>
        </form>
      </div>
    </div>
     Header
    <%--<%@include file="include/main_modules.jsp" %>--%>
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
              <li class="menu-item-has-children current-menu-item"><a href="<c:url value="/index"/>"><spring:message code="page1"/></a></li>
              
              <li class=""><a href="<c:url value="/product"/>"><spring:message code="page2"/></a></li>
            </ul>
          </div>
          <div class="navigation__center"><a class="ps-logo" href="index.html"><img src="assets/index/images/logo-light.png" alt=""></a></div>
          <div class="navigation__right">
            <ul class="menu">
              <li><a href="<c:url value="/about"/>"><spring:message code="page3"/></a></li>
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
     Home banner
    <div class="pb-80" id="slider">
      <div class="ps-carousel--animate ps-carousel--1st">
          <c:forEach items="${titleImage}" var="image">
              <div class="item">
                <div class="ps-product--banner"><img src="http://dadliteatr.az/admin/image/${image.path}" alt="">
                </div>
              </div>
          </c:forEach>
        <div class="item">
          <div class="ps-product--banner"><span class="ps-badge ps-badge--sale"><img src="assets/index/images/icons/badge-brown.png" alt=""><i>0.5</i></span><img src="assets/index/images/banner/slider-5.png" alt="">
          </div>
        </div>
        <div class="item">
          <div class="ps-product--banner"><span class="ps-badge ps-badge--sale"><img src="assets/index/images/icons/badge-brown.png" alt=""><i>50%</i></span><img src="assets/index/images/banner/slider-6.png" alt="">
          </div>
        </div>
      </div>
    </div>
     award
     Home 1 products
    
    <div class="ps-home-product bg--cover" data-background="assets/index/images/bg/home-product.jpg">
      <div class="ps-container">
        <div class="ps-section__header">
          <h3 class="ps-section__title"><spring:message code="page2" /></h3>
          <p></p><span><img src="assets/index/images/icons/floral.png" alt=""></span>
        </div>
        <div class="ps-section__content">
          <div class="row">
              <c:forEach items="${favorite}" var="f">
                  <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 ">
                    <div class="ps-product ps-product--horizontal">
                      <div class="ps-product__thumbnail"><img src="<c:if test="${fn:length(f.images) > 0}">
                                                            http://dadliteatr.az/admin/image/${f.images[0].path}

                                                        </c:if>" alt="">
                          <a class="ps-product__overlay" href="<c:url value="/product/${f.id}" />"></a>
                        
                      </div>
                      <div class="ps-product__content"><a class="ps-product__title" href="<c:url value="/product/${f.id}"/> ">${f.name}</a>
                        <p><a href="<c:url value="/product/${f.id}" />">${f.type.value[lcl]}</a></p>

                        <p class="ps-product__price">${f.price}</p>
                      </div>
                    </div>
                  </div>
              </c:forEach>
                  
            
          </div>
        </div>
      </div>
    </div>
     Testimonials
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
  </body>-->

</html>