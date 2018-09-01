<%-- 
    Document   : home
    Created on : Feb 2, 2017, 10:47:06 PM
    Author     : Hasanov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Stilex - Bootstrap 3 E-Commerce Template</title>
        <%@include file="include/header.jsp" %>
    </head>
    <body>
        <h1>
            ${test}
        </h1>
        <c:if test="${not empty language}">
            <c:forEach items="${language}" var="lang">
                <h4>
                    ${lang.az}
                </h4>
                <h5>
                    ${lang.en}
                </h5>
                <h6>
                    ${lang.ru}
                </h6>
               
            </c:forEach>
        </c:if>
        
        <div class="slider">
            <div class="container">
                <div id="main-carousel" class="carousel slide" data-ride="carousel">
                    <!-- Wrapper For Slides Starts -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="assets/img/slider-imgs/slide1-img.jpg" alt="Slider" class="img-responsive" />
                        </div>
                        <div class="item">
                            <img src="assets/img/slider-imgs/slide1-img.jpg" alt="Slider" class="img-responsive" />
                        </div>
                    </div>
                    <!-- Wrapper For Slides Ends -->
                    <!-- Controls Starts -->
                    <a class="left carousel-control" href="#main-carousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#main-carousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                    <!-- Controls Ends -->
                </div>				
            </div>
        </div>
        <!-- Slider Section Ends -->
        <!-- Latest Products Starts -->
        <section class="product-carousel">			
            <div class="container">
                <!-- Heading Starts -->
                <h2 class="product-head">Latest Products</h2>
                <!-- Heading Ends -->
                <!-- Products Row Starts -->
                <div class="row">
                    <div class="col-xs-12">
                        <!-- Product Carousel Starts -->
                        <div id="owl-product" class="owl-carousel">
                            <!-- Product #1 Starts -->
                            <div class="item">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="assets/img/product-images/1.jpg" alt="product" class="img-responsive" />
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Quis Nostrud Exercitatio</a></h4>
                                        <div class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </div>
                                        <div class="price">
                                            <span class="price-new">$199.50</span> 
                                            <span class="price-old">$249.50</span>
                                        </div>
                                        <div class="cart-button button-group">
                                            <button type="button" title="Wishlist" class="btn btn-wishlist">
                                                <i class="fa fa-heart"></i>
                                            </button>
                                            <button type="button" title="Compare" class="btn btn-compare">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </button>
                                            <button type="button" class="btn btn-cart">
                                                Add to cart
                                                <i class="fa fa-shopping-cart"></i> 
                                            </button>									
                                        </div>									
                                    </div>
                                </div>
                            </div>
                            <!-- Product #1 Ends -->
                            <!-- Product #2 Starts -->
                            <div class="item">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="assets/img/product-images/2.jpg" alt="product" class="img-responsive" />
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Quis Nostrud Exercitatio</a></h4>
                                        <div class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </div>
                                        <div class="price">
                                            <span class="price-new">$199.50</span> 
                                            <span class="price-old">$249.50</span>
                                        </div>
                                        <div class="cart-button button-group">
                                            <button type="button" title="Wishlist" class="btn btn-wishlist">
                                                <i class="fa fa-heart"></i>
                                            </button>
                                            <button type="button" title="Compare" class="btn btn-compare">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </button>
                                            <button type="button" class="btn btn-cart">
                                                Add to cart
                                                <i class="fa fa-shopping-cart"></i> 
                                            </button>									
                                        </div>									
                                    </div>
                                </div>
                            </div>
                            <!-- Product #2 Ends -->
                            <!-- Product #3 Starts -->
                            <div class="item">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="assets/img/product-images/3.jpg" alt="product" class="img-responsive" />
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Quis Nostrud Exercitatio</a></h4>
                                        <div class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </div>
                                        <div class="price">
                                            <span class="price-new">$199.50</span> 
                                            <span class="price-old">$249.50</span>
                                        </div>
                                        <div class="cart-button button-group">
                                            <button type="button" title="Wishlist" class="btn btn-wishlist">
                                                <i class="fa fa-heart"></i>
                                            </button>
                                            <button type="button" title="Compare" class="btn btn-compare">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </button>
                                            <button type="button" class="btn btn-cart">
                                                Add to cart
                                                <i class="fa fa-shopping-cart"></i> 
                                            </button>									
                                        </div>									
                                    </div>
                                </div>
                            </div>
                            <!-- Product #3 Ends -->
                            <!-- Product #4 Starts -->
                            <div class="item">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="assets/img/product-images/4.jpg" alt="product" class="img-responsive" />
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Quis Nostrud Exercitatio</a></h4>
                                        <div class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </div>
                                        <div class="price">
                                            <span class="price-new">$199.50</span> 
                                            <span class="price-old">$249.50</span>
                                        </div>
                                        <div class="cart-button button-group">
                                            <button type="button" title="Wishlist" class="btn btn-wishlist">
                                                <i class="fa fa-heart"></i>
                                            </button>
                                            <button type="button" title="Compare" class="btn btn-compare">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </button>
                                            <button type="button" class="btn btn-cart">
                                                Add to cart
                                                <i class="fa fa-shopping-cart"></i> 
                                            </button>									
                                        </div>									
                                    </div>
                                </div>
                            </div>
                            <!-- Product #4 Ends -->
                            <!-- Product #5 Starts -->
                            <div class="item">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="assets/img/product-images/5.jpg" alt="product" class="img-responsive" />
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Quis Nostrud Exercitatio</a></h4>
                                        <div class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </div>
                                        <div class="price">
                                            <span class="price-new">$199.50</span> 
                                            <span class="price-old">$249.50</span>
                                        </div>
                                        <div class="cart-button button-group">
                                            <button type="button" title="Wishlist" class="btn btn-wishlist">
                                                <i class="fa fa-heart"></i>
                                            </button>
                                            <button type="button" title="Compare" class="btn btn-compare">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </button>
                                            <button type="button" class="btn btn-cart">
                                                Add to cart
                                                <i class="fa fa-shopping-cart"></i> 
                                            </button>									
                                        </div>									
                                    </div>
                                </div>
                            </div>
                            <!-- Product #5 Ends -->
                            <!-- Product #6 Starts -->
                            <div class="item">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="assets/img/product-images/6.jpg" alt="product" class="img-responsive" />
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Quis Nostrud Exercitatio</a></h4>
                                        <div class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </div>
                                        <div class="price">
                                            <span class="price-new">$199.50</span> 
                                            <span class="price-old">$249.50</span>
                                        </div>
                                        <div class="cart-button button-group">
                                            <button type="button" title="Wishlist" class="btn btn-wishlist">
                                                <i class="fa fa-heart"></i>
                                            </button>
                                            <button type="button" title="Compare" class="btn btn-compare">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </button>
                                            <button type="button" class="btn btn-cart">
                                                Add to cart
                                                <i class="fa fa-shopping-cart"></i> 
                                            </button>									
                                        </div>									
                                    </div>
                                </div>
                            </div>
                            <!-- Product #6 Ends -->
                            <!-- Product #7 Starts -->
                            <div class="item">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="assets/img/product-images/7.jpg" alt="product" class="img-responsive" />
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Quis Nostrud Exercitatio</a></h4>
                                        <div class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </div>
                                        <div class="price">
                                            <span class="price-new">$199.50</span> 
                                            <span class="price-old">$249.50</span>
                                        </div>
                                        <div class="cart-button button-group">
                                            <button type="button" title="Wishlist" class="btn btn-wishlist">
                                                <i class="fa fa-heart"></i>
                                            </button>
                                            <button type="button" title="Compare" class="btn btn-compare">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </button>
                                            <button type="button" class="btn btn-cart">
                                                Add to cart
                                                <i class="fa fa-shopping-cart"></i> 
                                            </button>									
                                        </div>									
                                    </div>
                                </div>
                            </div>
                            <!-- Product #7 Ends -->
                            <!-- Product #8 Starts -->
                            <div class="item">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="assets/img/product-images/8.jpg" alt="product" class="img-responsive" />
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Quis Nostrud Exercitatio</a></h4>
                                        <div class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </div>
                                        <div class="price">
                                            <span class="price-new">$199.50</span> 
                                            <span class="price-old">$249.50</span>
                                        </div>
                                        <div class="cart-button button-group">
                                            <button type="button" title="Wishlist" class="btn btn-wishlist">
                                                <i class="fa fa-heart"></i>
                                            </button>
                                            <button type="button" title="Compare" class="btn btn-compare">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </button>
                                            <button type="button" class="btn btn-cart">
                                                Add to cart
                                                <i class="fa fa-shopping-cart"></i> 
                                            </button>									
                                        </div>									
                                    </div>
                                </div>
                            </div>
                            <!-- Product #8 Ends -->
                        </div>
                        <!-- Product Carousel Ends -->
                    </div>
                </div>
                <!-- Products Row Ends -->
            </div>
        </section>
        <!-- Latest Products Ends -->
        <!-- 3 Column Banners Starts -->
        <div class="col3-banners">
            <div class="container">
                <ul class="row list-unstyled">
                    <li class="col-sm-4">
                        <img src="assets/img/banners/3col-banner1.jpg" alt="banners" class="img-responsive" />
                    </li>
                    <li class="col-sm-4">
                        <img src="assets/img/banners/3col-banner2.jpg" alt="banners" class="img-responsive" />
                    </li>
                    <li class="col-sm-4">
                        <img src="assets/img/banners/3col-banner3.jpg" alt="banners" class="img-responsive" />
                    </li>
                </ul>
            </div>
        </div>
        <!-- 3 Column Banners Ends -->
        <!-- Featured Products Starts -->
        <section class="products-list">			
            <div class="container">
                <!-- Heading Starts -->
                <h2 class="product-head">Featured Products</h2>
                <!-- Heading Ends -->
                <!-- Products Row Starts -->
                <div class="row">
                    <!-- Product #1 Starts -->
                    <div class="col-md-3 col-sm-6">
                        <div class="product-col">
                            <div class="image">
                                <img src="<c:url value="/assets/img/product-images/1.jpg" />" alt="product" class="img-responsive" />
                            </div>
                            <div class="caption">
                                <h4><a href="product.html">Fashion Garments</a></h4>
                                <div class="description">
                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                </div>
                                <div class="price">
                                    <span class="price-new">$199.50</span> 
                                    <span class="price-old">$249.50</span>
                                </div>
                                <div class="cart-button button-group">
                                    <button type="button" title="Wishlist" class="btn btn-wishlist">
                                        <i class="fa fa-heart"></i>
                                    </button>
                                    <button type="button" title="Compare" class="btn btn-compare">
                                        <i class="fa fa-bar-chart-o"></i>
                                    </button>
                                    <button type="button" class="btn btn-cart">
                                        Add to cart
                                        <i class="fa fa-shopping-cart"></i> 
                                    </button>									
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Product #1 Ends -->
                    <!-- Product #2 Starts -->
                    <div class="col-md-3 col-sm-6">
                        <div class="product-col">
                            <div class="image">
                                <img src="assets/img/product-images/21.jpg" alt="product" class="img-responsive" />
                            </div>
                            <div class="caption">
                                <h4><a href="product.html">Fashion Garments</a></h4>
                                <div class="description">
                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                </div>
                                <div class="price">
                                    <span class="price-new">$199.50</span> 
                                    <span class="price-old">$249.50</span>
                                </div>
                                <div class="cart-button button-group">
                                    <button type="button" title="Wishlist" class="btn btn-wishlist">
                                        <i class="fa fa-heart"></i>
                                    </button>
                                    <button type="button" title="Compare" class="btn btn-compare">
                                        <i class="fa fa-bar-chart-o"></i>
                                    </button>
                                    <button type="button" class="btn btn-cart">
                                        Add to cart
                                        <i class="fa fa-shopping-cart"></i> 
                                    </button>									
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Product #2 Ends -->
                    <!-- Product #3 Starts -->
                    <div class="col-md-3 col-sm-6">
                        <div class="product-col">
                            <div class="image">
                                <img src="assets/img/product-images/3.jpg" alt="product" class="img-responsive" />
                            </div>
                            <div class="caption">
                                <h4><a href="product.html">Fashion Garments</a></h4>
                                <div class="description">
                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                </div>
                                <div class="price">
                                    <span class="price-new">$199.50</span> 
                                    <span class="price-old">$249.50</span>
                                </div>
                                <div class="cart-button button-group">
                                    <button type="button" title="Wishlist" class="btn btn-wishlist">
                                        <i class="fa fa-heart"></i>
                                    </button>
                                    <button type="button" title="Compare" class="btn btn-compare">
                                        <i class="fa fa-bar-chart-o"></i>
                                    </button>
                                    <button type="button" class="btn btn-cart">
                                        Add to cart
                                        <i class="fa fa-shopping-cart"></i> 
                                    </button>									
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Product #3 Ends -->
                    <!-- Product #4 Starts -->
                    <div class="col-md-3 col-sm-6">
                        <div class="product-col">
                            <div class="image">
                                <img src="assets/img/product-images/5.jpg" alt="product" class="img-responsive" />
                            </div>
                            <div class="caption">
                                <h4><a href="product.html">Fashion Garments</a></h4>
                                <div class="description">
                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                </div>
                                <div class="price">
                                    <span class="price-new">$199.50</span> 
                                    <span class="price-old">$249.50</span>
                                </div>
                                <div class="cart-button button-group">
                                    <button type="button" title="Wishlist" class="btn btn-wishlist">
                                        <i class="fa fa-heart"></i>
                                    </button>
                                    <button type="button" title="Compare" class="btn btn-compare">
                                        <i class="fa fa-bar-chart-o"></i>
                                    </button>
                                    <button type="button" class="btn btn-cart">
                                        Add to cart
                                        <i class="fa fa-shopping-cart"></i> 
                                    </button>									
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Product #4 Ends -->
                </div>
                <!-- Products Row Ends -->
            </div>
        </section>
        <!-- Featured Products Ends -->
        <!-- 1 Column Banners Starts -->
        <div class="col1-banners">
            <div class="container">
                <img src="assets/img/banners/1col-banner1.jpg" alt="banners" class="img-responsive" />
            </div>
        </div>
        <!-- 1 Column Banners Ends -->
        <!-- Footer Section Starts -->
        <%@include file="include/footer.jsp" %>
    </body>
</html>
