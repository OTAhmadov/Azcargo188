<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
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
      <%@include file="include/main_modules.jsp" %>
    <!-- Home banner-->
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
      @media only screen and (min-width: 1200px){
        .ps-shop .ps-shop__wrapper {
            width: calc(100% - 280px);
        }
      }
    </style>
    <div class="ps-hero bg--cover" data-background="images/hero/product.jpg">
      <div class="ps-hero__content">
        <h1><spring:message code="page2"/></h1>
        <div class="ps-breadcrumb">
          <ol class="breadcrumb">
            <li><a href="<c:url value="/index"/>"><spring:message code="page1"/></a></li>
            <li class="active"><spring:message code="page2"/></li>
          </ol>
        </div>
      </div>
    </div>
    <main class="ps-shop">
      <div class="ps-shop__wrapper">
        <div class="ps-shop__banners">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
              <div class="ps-collection"><a class="ps-collection__overlay" href="#"></a><img src="images/collection/product-1.jpg" alt=""></div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
              <div class="ps-collection"><a class="ps-collection__overlay" href="#"></a><img src="images/collection/product-2.jpg" alt=""></div>
            </div>
          </div>
        </div>
        <div class="ps-shop__sort">
            <p><spring:message code="page2.show"/> ${((page - 1) * 30) + 1} - ${page * 30} , ${count}</p>
<!--          <select class="ps-select" title="Default Sorting">
            <option value="1">Option 1</option>
            <option value="2">Option 2</option>
            <option value="3">Option 3</option>
          </select>-->
        </div>
        <div class="ps-row">
            <c:forEach items="${productList}" var="p">
                <div class="ps-column">
                    <div class="ps-product">
                      <div class="ps-product__thumbnail"><img src="
                            <c:if test="${fn:length(p.images) > 0}">
                                http://dadliteatr.az/admin/image/${p.images[0].path}
                                  
                            </c:if>" alt=""><a class="ps-product__overlay" href="<c:url value="/product/${p.id}" />"></a>

                      </div>
                      <div class="ps-product__content"><a class="ps-product__title" href="<c:url value="/product/${p.id}" />">${p.name}</a>
                        <p><a href="<c:url value="/product/${p.id}" />">${p.type.value[lcl]}</a></p>

                        <p class="ps-product__price">${p.price} AZN</p>
                      </div>
                    </div>
                </div>
                
            </c:forEach> 
          
        </div>
        <div class="ps-pagination">
          <ul class="pagination">
              <li><a href="<c:url value="/product?typeId=${type}&page=${page - 1}" />"><i class="fa fa-angle-left"></i></a></li>
              <c:forEach var="i" begin="0" end="3">
                  <c:if test="${(count / 30) +1 > (i + page)}">
                    <li class="active"><a href="<c:url value="/product?typeId=${type}&page=${i + page}" />">${i + page}</a></li>
                  </c:if>
                  
              </c:forEach>
            <li><a href="<c:url value="/product?typeId=${type}&page=${page + 1}" />"><i class="fa fa-angle-right"></i></a></li>
<!--            <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">...</a></li>
            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>-->
          </ul>
        </div>
      </div>
      <aside class="ps-sidebar">
        <aside class="widget widget_sidebar widget_category">
            <h3 class="widget-title"><spring:message code="page2.categories" /></h3>
          <ul class="ps-list--checked">
            <c:forEach items="${categoryList}" var="category">
                <li <c:if test="${category.id == type}">class="current"</c:if> ><a href="<c:url value="/product?typeId=${category.id}&page=${page}" />">${category.value[lcl]} (${category.count})</a></li>
                
            </c:forEach>  
<!--            <li class="current"><a href="product-listing.html">Bready</a></li>
            <li><a href="product-listing.html">Donut(76)</a></li>
            <li><a href="product-listing.html">Pinpool(69)</a></li>
            <li><a href="product-listing.html">Deliciuex (36)</a></li>
            <li><a href="product-listing.html">Cake (108)</a></li>
            <li><a href="product-listing.html">Cupcake (47)</a></li>
            <li><a href="product-listing.html">More</a></li>-->
          </ul>
        </aside>
      </aside>
    </main>
    
    <%@include file="include/footer.jsp" %>
  </body>

</html>