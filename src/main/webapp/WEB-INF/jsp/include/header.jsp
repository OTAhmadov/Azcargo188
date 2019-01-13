<%-- 
    Document   : header
    Created on : Sep 1, 2018, 11:35:34 AM
    Author     : otahmadov
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Bootstrap Core CSS -->
<!--<link href="<c:url value="/assets/css/bootstrap.min.css" />" rel="stylesheet" />
<link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300italic,400italic,700italic,400,300,700" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href="<c:url value="/assets/css/font-awesome.min.css" />" rel="stylesheet" />
<link href="<c:url value="/assets/css/owl.carousel.css" />" rel="stylesheet" />
<link href="<c:url value="/assets/css/style.css" />" rel="stylesheet" />
<link href="<c:url value="/assets/css/responsive.css" />" rel="stylesheet" />
<link href="<c:url value="/assets/css/product.css" />" rel="stylesheet" />
<link href="<c:url value="/assets/css/bootstrap-datepicker.min.css" />" rel="stylesheet" />
<link rel="stylesheet" href="<c:url value="/assets/cropper/cropper.css" />">-->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="images/fav-144.png" />">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="images/fav-114.png" />">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="images/fav-72.png" />">
<link rel="apple-touch-icon-precomposed" href="<c:url value="images/fav-57.png" />">
<link rel="shortcut icon" href="<c:url value="images/fav.png" />">

<link href="https://fonts.googleapis.com/css?family=Kaushan+Script%7CLora:400,700" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/assets/css/font-awesome.min.css" /> ">
    <link rel="stylesheet" href="<c:url value="assets/index/plugins/bakery-icon/style.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/owl-carousel/owl.carousel.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/jquery-bar-rating/fontawesome-stars.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/bootstrap-select/bootstrap-select.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/jquery-ui/jquery-ui.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/slick/slick.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/lightGallery-master/lightgallery.min.css" />">
<link rel="stylesheet" href="<c:url value="/assets/index/css/style.css" />">
<style>
   @media (max-width: 1199px){
    .menu > li > a:before{
        height: auto;
    }
}
.header--1 .navigation--mobile .ps-logo {
    max-width: 165px;
    line-height: 60px;
    margin-bottom: 40px;
} 
</style>

<c:choose>
    <c:when test="${pageContext.response.locale eq 'az' or pageContext.response.locale eq 'en' or pageContext.response.locale eq 'ru'}">
        <c:set scope="request" var="lcl" value="${pageContext.response.locale}" />
    </c:when>
    <c:otherwise>
        <c:set scope="request" var="lcl" value="az" />
    </c:otherwise>
</c:choose> 