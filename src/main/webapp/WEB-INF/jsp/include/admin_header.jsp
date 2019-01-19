<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="images/fav-144.png" />">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="images/fav-114.png" />">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="images/fav-72.png" />">
<link rel="apple-touch-icon-precomposed" href="<c:url value="images/fav-57.png" />">
<link rel="shortcut icon" href="<c:url value="images/fav.png" />">

<!--<link href="https://fonts.googleapis.com/css?family=Kaushan+Script%7CLora:400,700" rel="stylesheet">-->
<link rel="stylesheet" href="<c:url value="/assets/css/font-awesome.min.css" /> ">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/bakery-icon/style.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/owl-carousel/owl.carousel.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/jquery-bar-rating/fontawesome-stars.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/bootstrap-select/bootstrap-select.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/jquery-ui/jquery-ui.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/slick/slick.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/index/plugins/lightGallery-master/lightgallery.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/normalize.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/themify-icons.css" />">
    <!--<link rel="stylesheet" href="<c:url value="/assets/css/flag-icon.min.css" />">-->
    <link rel="stylesheet" href="<c:url value="/assets/css/cs-skin-elastic.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/product.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap-datepicker.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/foundation-datepicker.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/lib/datatable/dataTables.bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/scss/style.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/lib/vector-map/jqvmap.min.css" />">
    <link rel="shortcut icon" href="assets/img/favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="<c:url value="/assets/index/css/style.css" />">
<style>
      .navbar .navbar-brand{
        margin: 50px 0 0;
        padding: 0 0 53px 0;
      }
    </style>
<c:choose>
    <c:when test="${pageContext.response.locale eq 'az' or pageContext.response.locale eq 'en' or pageContext.response.locale eq 'ru'}">
        <c:set scope="request" var="lcl" value="${pageContext.response.locale}" />
    </c:when>
    <c:otherwise>
        <c:set scope="request" var="lcl" value="en" />
    </c:otherwise>
</c:choose> 