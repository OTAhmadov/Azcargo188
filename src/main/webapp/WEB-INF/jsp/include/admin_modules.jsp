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
                    <c:forEach items="${modules}" var="m">
                        <li>
                            <a href="<c:url value="${m.url}" />"> <i class="${m.icon}" data-type="${m.type}"></i>${m.name.az} </a>
                        </li>
                    </c:forEach>

                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
