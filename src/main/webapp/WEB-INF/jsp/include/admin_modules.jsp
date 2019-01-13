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
                <a class="navbar-brand" href="./"><img src="<c:url value="/assets/img/logo.png"/>" alt="Logo"></a>
                <a class="navbar-brand hidden" href="./"><img src="<c:url value="/assets/img/logo2.png"/>" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="<c:url value="/admin/product" />"> <i class="menu-icon fa fa-database" data-type="product"></i>Məhsullar </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/common" />"> <i class="menu-icon fa fa-info" data-type="log"></i>Ümumi </a>
                    </li>
                    <li class="hidden">
                        <a href="<c:url value="/admin/company" />"> <i class="menu-icon fa fa-building-o" data-type="company"></i>Filiallar </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/dic" />"> <i class="menu-icon fa fa-cogs" data-type="dictionary"></i>Soraqçalar </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/user" />"> <i class="menu-icon fa fa-users" data-type="user"></i>İstifadəçilər </a>
                    </li>
<!--                    <li class="hidden">
                        <a href="<c:url value="/admin/common" />"> <i class="menu-icon fa fa-bars" data-type="log"></i>Loglar </a>
                    </li>-->
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
