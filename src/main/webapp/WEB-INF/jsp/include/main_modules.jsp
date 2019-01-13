<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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