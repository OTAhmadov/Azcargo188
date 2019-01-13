<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  
 
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="yandex-verification" content="27e5b7e636c95396" />
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="apple-touch-icon.png" rel="apple-touch-icon">
    <link href="/assets/index/images/logo-light.png" rel="icon">
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
              
              <li class="current-menu-item"><a href="<c:url value="/product"/>"><spring:message code="page2"/></a></li>
            </ul>
          </div>
          <div class="navigation__center"><a class="ps-logo" href="index.html"><img src="../assets/index/images/logo-light.png" alt=""></a></div>
          <div class="navigation__right">
            <ul class="menu">
                <li class=""><a href="<c:url value="/about"/>"><spring:message code="page3"/></a></li>
                <li class=""><a href="<c:url value="/contact"/>"><spring:message code="page4"/></a></li>
            </ul>
            <div class="header__actions">
              <a class="ps-search-btn" href="#"><i class="ba-magnifying-glass"></i></a>
            </div>
          </div>
        </div>
      </nav>
      <nav class="navigation--mobile">
        <div class="ps-container"><a class="ps-logo" href="#"><img src="/assets/index/images/logo-light.png" alt=""></a>
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
    <div class="ps-hero bg--cover" data-background="/assets/index/images/hero/product.jpg">
      <div class="ps-hero__content">
          <h1><spring:message code="page5" /></h1>
        <div class="ps-breadcrumb">
          <ol class="breadcrumb">
            <li><a href="<c:url value="/index"/>"><spring:message code="page1" /></a></li>
            <li class="active"><spring:message code="page5"/></li>
          </ol>
        </div>
      </div>
    </div>
    <main class="ps-main">
      <div class="ps-container">
        <div class="ps-product--detail">
          <div class="row">
            <div class="col-lg-5 col-md-6 col-sm-12 col-xs-12 ">
              <div class="ps-product__thumbnail">
<!--                  <span class="ps-badge"><img src="/assets/index/images/icons/badge-red.png" alt=""><i>New</i>
                  </span>
                  <span class="ps-badge ps-badge--sale"><img src="/assets/index/images/icons/badge-brown.png" alt="">
                      <i>50%</i>
                  </span>-->
                <div class="ps-product__image">
                          
                            <c:if test="${fn:length(product.images) > 0}">
                                <c:forEach items="${product.images}" var="image">
                                    <div class="item"><a href="/assets/index/images/products/detail/signature.png">
                                    <img src="http://dadliteatr.az/admin/image/${image.path}" alt="">
                                    </a></div>
                                </c:forEach>  
                              
                                  
                            </c:if> 
                      
                  
                </div>
                <div class="ps-product__preview">
                  <div class="ps-product__variants">
                    <!--<div class="item"><img src="-->
                            <c:if test="${fn:length(product.images) > 0}">
                                <c:forEach items="${product.images}" var="image">
                                    <div class="item">
                                        <!--<a href="/assets/index/images/products/detail/signature.png">-->
                                    <img src="http://dadliteatr.az/admin/image/${image.path}" alt="">
                                    <!--</a>-->
                                    </div>
                                </c:forEach>  
                              
                                  
                            </c:if> 
<!--                    </div>-->
                    
<!--                    <div class="item">
                      <div class="ps-video"><a class="popup-youtube ps-product__video" href="https://www.youtube.com/watch?v=kJQP7kiw5Fk"><img src="/assets/index/images/products/detail/variant-4.png" alt=""><i class="fa fa-play"></i></a></div>
                    </div>-->
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-7 col-md-6 col-sm-12 col-xs-12 ">
              <div class="ps-product__info">
                <h1 class="text-uppercase">${product.name}</h1>
                <div class="ps-product__rating">

                </div>
                <h3 class="ps-product__price">${product.price} AZN</h3>
<!--                <div class="ps-product__desc">
                  <h5>Quick Overview</h5>
                  <p>Lollipop dessert donut marzipan cookie bonbon sesame snaps chocolate. Cupcake sweet roll sweet dragée dragée. Lollipop dessert donut marzipan cookie bonbon sesame snaps chocolate cake.</p>
                  <p>Toffee chocolate cake apple pie sugar plum sesame snaps muffin cake pudding cupcake. Muffin danish muffin lollipop biscuit jelly beans oat cake croissant.</p>
                </div>-->
                <div class="ps-product__status">
                    <h5><spring:message code="availability"/>: <span> 
                            <c:if test="${product.count > 0}">
                                <spring:message code="instock"/>
                            </c:if>
                            <c:if test="${product.count == 0}">
                                <spring:message code="notStock"/>
                            </c:if>
                        </span></h5>
                    <h5><spring:message code="page2.category"/>:<a href="#">${product.type.value[lcl]}</a></h5>
                </div>


              </div>
            </div>
          </div>
          <div class="ps-product__content">
            <ul class="tab-list" role="tablist">
                <li class="active"><a href="#tab_01" aria-controls="tab_01" role="tab" data-toggle="tab"><spring:message code="overview"/></a></li>
                <li><a href="#tab_02" aria-controls="tab_02" role="tab" data-toggle="tab"><spring:message code="receipt"/></a></li>
            </ul>
          </div>
          <div class="tab-content">
            <div class="tab-pane active" role="tabpanel" id="tab_01">
                <p>${product.description}</p>
                  
            </div>
            <div class="tab-pane" role="tabpanel" id="tab_02">
              <p>${product.receiptDescription}</p>
            </div>

          </div>
        </div>
      </div>
    </main>
    <!-- Relate product-->
    <div class="ps-related-product">
      <div class="ps-container">
        <div class="ps-section__header text-center">
            <h3 class="ps-section__title"><spring:message code="related"/></h3>
            <p><spring:message code="maybe"/></p><span><img src="../assets/index/images/icons/floral.png" alt=""></span>
        </div>
        <div class="ps-section__content">
          <div class="row">
              <c:forEach items="${releted}" var="r">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 ">
                        <div class="ps-product">
                          <div class="ps-product__thumbnail"><img src="http://dadliteatr.az/admin/image/${r.images[0].path}" alt="">
                              <a class="ps-product__overlay" href="<c:url value="/product/${r.id}" />" ></a>

                          </div>
                          <div class="ps-product__content"><a class="ps-product__title" href="<c:url value="/product/${r.id}" />">${r.name}</a>
                            <p><a href="<c:url value="/product/${r.id}" />">${r.type.value[lcl]}</a></p>

                            <p class="ps-product__price">${r.price}</p>
                          </div>
                        </div>
                      </div>
              </c:forEach>
          
          </div>
          
        </div>
      </div>
    </div>
    <%@include file="include/footer.jsp" %>
    <script>
        $(function() {
            $('.ps-site-info a img').attr('src', '../assets/index/images/logo-dark.png')
        })
    </script>
  </body>

</html>