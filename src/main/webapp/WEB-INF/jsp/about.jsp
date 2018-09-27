<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
  
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
    <title>About</title>
    <%@include file="include/header.jsp" %>

  </head>
  <body>
    <div class="ps-search">
      <div class="ps-search__content"><a class="ps-search__close" href="#"><span></span></a>
        <form class="ps-form--search-2" action="http://warethemes.com/html/bready/do_action" method="post">
          <h3>Enter your keyword</h3>
          <div class="form-group">
            <input class="form-control" type="text" placeholder="">
            <button class="ps-btn active ps-btn--fullwidth">Search</button>
          </div>
        </form>
      </div>
    </div>
    <!-- Header-->
    <header class="header header--1">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="btn-group ps-dropdown pull-right" style="position: relative;top: 30px;">
                <a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><spring:message code="label.header.language"/><i class="fa fa-angle-down" style="margin-left: 10px;display: inline-block;"></i></a>
              <!--<div class="btn-group">-->
                            <ul class="pull-right dropdown-menu">
                                <li>
                                    <a tabindex="-1" href="<c:url value="?lang=az" />"><spring:message code="label.header.azerbaijan"/></a>
                                </li>
                                <li>
                                    <a tabindex="-1" href="<c:url value="?lang=en" />"><spring:message code="label.header.english"/></a>
                                </li>
                                <li>
                                    <a tabindex="-1" href="<c:url value="?lang=ru" />"><spring:message code="label.header.russian"/></a>
                                </li>
                            </ul>
                        <!--</div>-->
            </div>
          </div>
        </div>
      </div>

      <nav class="navigation">
        <div class="ps-container">
          <div class="navigation__left">
            <ul class="menu">
              <li><a href="<c:url value="/index"/>">Homepage</a></li>
              
              <li><a href="<c:url value="/product"/>">Products</a></li>
            </ul>
          </div>
          <div class="navigation__center"><a class="ps-logo" href="index.html"><img src="assets/index/images/logo-light.png" alt=""></a></div>
          <div class="navigation__right">
            <ul class="menu">
              <li class="menu-item-has-children current-menu-item"><a href="<c:url value="/about"/>">About</a></li>
              <li><a href="<c:url value="/contact"/>">Contact</a></li>
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
            <li class="current-menu-item menu-item-has-children"><a href="#">Homepage</a><span class="sub-toggle"></li>
            <li><a href="about.html">About</a></li>
            <li class="menu-item-has-children"><a href="product-listing.html">product</a><span class="sub-toggle"></li>
            <li><a href="contact.html">Contact Us</a></li>
          </ul>
          <div class="menu-toggle"><span></span></div>
          <div class="header__actions">
            <a class="ps-search-btn" href="#"><i class="ba-magnifying-glass"></i></a>
          </div>
        </div>
      </nav>
    </header>
    <!-- Home banner-->
    <div class="pb-80" id="slider">
      <div class="ps-carousel--animate ps-carousel--1st">
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
    <!-- award-->
    <!-- Home 1 products-->
    <div class="ps-home-product bg--cover" data-background="assets/index/images/bg/home-product.jpg">
      <div class="ps-container">
        <div class="ps-section__header">
          <h3 class="ps-section__title">Deal of the day</h3>
          <p>breads every day</p><span><img src="assets/index/images/icons/floral.png" alt=""></span>
        </div>
        <div class="ps-section__content">
          <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-product ps-product--horizontal">
                <div class="ps-product__thumbnail"><img src="assets/index/images/products/1.png" alt=""><a class="ps-product__overlay" href="product-detail.html"></a>
                  <ul class="ps-product__actions">
                    <li><a href="#" data-tooltip="Quick View"><i class="ba-magnifying-glass"></i></a></li>
                    
                    
                  </ul>
                </div>
                <div class="ps-product__content"><a class="ps-product__title" href="product-detail.html">Red sugar flower</a>
                  <p><a href="product-list.html">Bakery</a> - <a href="product-list.html">Sweet</a> - <a href="product-list.html">Bio</a></p>

                  <p class="ps-product__price">#E8363E5.00</p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-product ps-product--horizontal">
                <div class="ps-product__thumbnail"><span class="ps-badge"><img src="assets/index/images/icons/badge-red.png" alt=""><i>New</i></span><img src="assets/index/images/products/2.png" alt=""><a class="ps-product__overlay" href="product-detail.html"></a>
                  <ul class="ps-product__actions">
                    <li><a href="#" data-tooltip="Quick View"><i class="ba-magnifying-glass"></i></a></li>
                    
                    
                  </ul>
                </div>
                <div class="ps-product__content"><a class="ps-product__title" href="product-detail.html">Red sugar flower</a>
                  <p><a href="product-list.html">Bakery</a> - <a href="product-list.html">Sweet</a> - <a href="product-list.html">Bio</a></p>

                  <p class="ps-product__price">?5.00</p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-product ps-product--horizontal">
                <div class="ps-product__thumbnail"><span class="ps-badge"><img src="assets/index/images/icons/badge-red.png" alt=""><i>New</i></span><img src="assets/index/images/products/3.png" alt=""><a class="ps-product__overlay" href="product-detail.html"></a>
                  <ul class="ps-product__actions">
                    <li><a href="#" data-tooltip="Quick View"><i class="ba-magnifying-glass"></i></a></li>
                    
                    
                  </ul>
                </div>
                <div class="ps-product__content"><a class="ps-product__title" href="product-detail.html">Red sugar flower</a>
                  <p><a href="product-list.html">Bakery</a> - <a href="product-list.html">Sweet</a> - <a href="product-list.html">Bio</a></p>

                  <p class="ps-product__price">?5.00</p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-product ps-product--horizontal">
                <div class="ps-product__thumbnail"><span class="ps-badge ps-badge--sale"><img src="assets/index/images/icons/badge-brown.png" alt=""><i>50%</i></span><img src="assets/index/images/products/4.png" alt=""><a class="ps-product__overlay" href="product-detail.html"></a>
                  <ul class="ps-product__actions">
                    <li><a href="#" data-tooltip="Quick View"><i class="ba-magnifying-glass"></i></a></li>
                    
                    
                  </ul>
                </div>
                <div class="ps-product__content"><a class="ps-product__title" href="product-detail.html">Red sugar flower</a>
                  <p><a href="product-list.html">Bakery</a> - <a href="product-list.html">Sweet</a> - <a href="product-list.html">Bio</a></p>

                  <p class="ps-product__price"><del>?8.50</del> ?5.00</p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-product ps-product--horizontal">
                <div class="ps-product__thumbnail"><img src="assets/index/images/products/5.png" alt=""><a class="ps-product__overlay" href="product-detail.html"></a>
                  <ul class="ps-product__actions">
                    <li><a href="#" data-tooltip="Quick View"><i class="ba-magnifying-glass"></i></a></li>
                    
                    
                  </ul>
                </div>
                <div class="ps-product__content"><a class="ps-product__title" href="product-detail.html">Red sugar flower</a>
                  <p><a href="product-list.html">Bakery</a> - <a href="product-list.html">Sweet</a> - <a href="product-list.html">Bio</a></p>

                  <p class="ps-product__price">?5.00</p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-product ps-product--horizontal">
                <div class="ps-product__thumbnail"><img src="assets/index/images/products/6.png" alt=""><a class="ps-product__overlay" href="product-detail.html"></a>
                  <ul class="ps-product__actions">
                    <li><a href="#" data-tooltip="Quick View"><i class="ba-magnifying-glass"></i></a></li>
                    
                    
                  </ul>
                </div>
                <div class="ps-product__content"><a class="ps-product__title" href="product-detail.html">Red sugar flower</a>
                  <p><a href="product-list.html">Bakery</a> - <a href="product-list.html">Sweet</a> - <a href="product-list.html">Bio</a></p>

                  <p class="ps-product__price">?5.00</p>
                </div>
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
    <footer class="ps-footer">
      <div class="ps-footer__content">
        <div class="ps-container">
          <div class="row">
            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12 ">
              <div class="ps-site-info"><a class="ps-logo" href="index.html"><img src="assets/index/images/logo-dark.png" alt=""></a>
                <p>Tart bear claw cake tiramisu chocolate bar gummies dragée lemon drops brownie.</p>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 ">
              <div class="ps-footer__contact">
                <h4>Contact with us</h4>
                <p>Baku, Azerbaijan</p>
                <P>(+944 ) 7534 9773, (+944 ) 874 548</P>
                <ul class="ps-list--social">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 ">
              <div class="ps-footer__open">
                <h4>Time to Open</h4>
                <p>
                  Monday - Friday: <br>08:00 am - 08:30 pm <br>
                  Saturday - Sunday:<br>
                  10:00 am - 16:30 pm
                </p>
              </div>

            </div>
          </div>
        </div>
      </div>
    </footer>
    <div id="back2top"><i class="fa fa-angle-up"></i></div>
    <div class="ps-loading">
      <div class="rectangle-bounce">
        <div class="rect1"></div>
        <div class="rect2"></div>
        <div class="rect3"></div>
        <div class="rect4"></div>
        <div class="rect5"></div>
      </div>
    </div>
    <%@include file="include/footer.jsp" %>
  </body>

</html>