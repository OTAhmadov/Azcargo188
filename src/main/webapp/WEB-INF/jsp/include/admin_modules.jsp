<%-- 
    Document   : admin_modules
    Created on : 02.10.2018, 23:11:31
    Author     : Orkhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <a class="navbar-brand" href="./"><img src="<c:url value="/assets/img/azcargo/azcargo-logo1.png"/>" alt="Logo"></a>
                <!--<a class="navbar-brand" href="./"><img src="<c:url value="/assets/img/azcargo/azcargo-logo1.png"/>" alt="Logo"></a>-->
                <a class="navbar-brand hidden" href="./"><img src="<c:url value="/assets/img/logo2.png"/>" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="<c:url value="/admin/service" />"> <i class="menu-icon fa fa-info" data-type="service"></i>Xidmətlər </a>
                    </li>
                    
                    <li>
                        <a href="<c:url value="/admin/common" />"> <i class="menu-icon fa fa-info" data-type="common"></i>Ümumi</a>
                    </li>
                    
                    <li>
                        <a href="<c:url value="/admin/achievement" />"> <i class="menu-icon fa fa-info" data-type="achievement"></i>Nailiyyətlər </a>
                    </li>
                    
                    <li>
                        <a href="<c:url value="/admin/promotation" />"> <i class="menu-icon fa fa-info" data-type="promotation"></i>Kampaniyalar </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/corporative" />"> <i class="menu-icon fa fa-database" data-type="corporative"></i>Korporativ təkliflər</a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/career" />"> <i class="menu-icon fa fa-database" data-type="career"></i>Karyera</a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/careerApply" />"> <i class="menu-icon fa fa-database" data-type="careerApply"></i>Karyera müraciətləri</a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/commonApply" />"> <i class="menu-icon fa fa-database" data-type="commonApply"></i>Ümumi müraciətlər</a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/dic" />"> <i class="menu-icon fa fa-cogs" data-type="dictionary"></i>Soraqçalar </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/user" />"> <i class="menu-icon fa fa-users" data-type="user"></i>İstifadəçilər </a>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
