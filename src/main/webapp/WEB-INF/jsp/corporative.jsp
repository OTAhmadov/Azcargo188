<%-- 
    Document   : index
    Created on : Jan 22, 2019, 5:14:45 PM
    Author     : otahmadov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Korporativ təklif</title>
        <%@include file="include/header.jsp" %>
        
         <main id="CompanyPage" class="ChildContent--flex ">


                    <!-- COMPANY PAGE  -->

                    <div class="py-25"></div>
                    <div class="py-25"></div>

                    <!-- CompanyBanner wide -->

                    <div id="CompanyBanner--wide">

                        <div class="CompanyBanner--wide--img w-100 h-220" style="background-image:url('assets/main/img/content/banners/widebanner.png?v=1')">
                            <div class="w-100 h-100 d-flex align-items-center justify-content-center">
                                <h1 class="m-0 font-60 font-mp-bold text-white">
                                    Korporativ təklif
                                </h1>
                            </div>
                        </div>

                    </div>

                    <!-- /CompanyBanner wide -->
                    <div class="py-30"></div>

                    <div class="container">


                        <!-- CompanyBanner with-text -->

                        <div id="CompanyBannerWithText">

                            <div class="row flex-row-">
                                <div class="container content-sm">
                                    <div class="row">
                                        <div class="col-md-9" style="border: 2px solid gainsboro;">
                                            <h2>Korporativ müştərilər üçün</h2>
                                            <p>Korporativ müştərilər şirkətimizin dəyər sisteminin ən önəmli parçalarından biridir. 
                                                Korporativ müştərilərlə xüsusi şərtlərlə və daha geniş xidmət spektirində əməkdaşlıq həyata keçirilir.
                                                Korporativ müştərilər üçün şirkət aşağıdakı bazar cazibədarlığına malikdir:
                                            </p>
                                            <p> - Ən aşağı tariflər</p>
                                            <p> - Bütün Respublika ərazisində 24 saat xidmət</p>
                                            <p> - Daşınan nəqliyyat vasitərlərinə korporativ məsuliyyət</p>
                                            <p> - Müştərilərin təklif və iradlarını öyrənən müştəri məmnuniyyəti zəngləri</p>
                                            <p> - İstənilən çəkidə olan nəqliyyat vasitələrinin evakuasiyası</p>
                                            <p> - Peşəkar işçi heyəti</p>
                                            <p> - Daimi müştərilərə xüsusi güzəştlər</p>
                                            <p> - Asan ödəniş imkanı</p>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="row">
                                                <div class="col-md-12 margin-bottom-10">
                                                    <label>Tam adınız <span class="color-red">*</span></label>
                                                    <div class="row sky-space-20">
                                                        <div class="col-md-12 col-md-offset-0">
                                                            <div>
                                                                <input type="text" name="name" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 margin-bottom-10">
                                                     <label>Şirkətin adı <span class="color-red">*</span></label>
                                                    <div class="row sky-space-20">
                                                        <div class="col-md-12 col-md-offset-0">
                                                            <div>
                                                                <input type="text" name="email" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 margin-bottom-10">
                                                     <label>Şirkətin VÖENi <span class="color-red">*</span></label>
                                                    <div class="row sky-space-20">
                                                        <div class="col-md-12 col-md-offset-0">
                                                            <div>
                                                                <input type="text" name="email" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 margin-bottom-10">
                                                     <label>Vəzifəniz <span class="color-red">*</span></label>
                                                    <div class="row sky-space-20">
                                                        <div class="col-md-12 col-md-offset-0">
                                                            <div>
                                                                <input type="text" name="email" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 margin-bottom-10">
                                                     <label>Telefon <span class="color-red">*</span></label>
                                                    <div class="row sky-space-20">
                                                        <div class="col-md-12 col-md-offset-0">
                                                            <div>
                                                                <input type="text" name="email" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 margin-bottom-20">
                                                     <label>Email <span class="color-red">*</span></label>
                                                    <div class="row sky-space-20">
                                                        <div class="col-md-12 col-md-offset-0">
                                                            <div>
                                                                <input type="text" name="email" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-12 margin-bottom-10">
                                                    <div class="row sky-space-20">
                                                        <div class="col-md-12 col-md-offset-0">
                                                            <div>
                                                                <button class="btn btn-green btn-block">Müraciət et</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div> 
                                    
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- ./CompanyBanner with-text -->    <div class="py-30"></div>
                    <div class="py-15"></div>
                    <!-- CompanyBanner with-text -->


                    <!-- ./CompanyBanner with-text -->
            </div>
            <div class="py-25"></div>
            <div class="py-25"></div>
                        <%@include file="include/footer.jsp" %>