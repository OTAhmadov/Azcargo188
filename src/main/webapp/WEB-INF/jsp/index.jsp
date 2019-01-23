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
        <title>Əsas səhifə</title>
        <%@include file="include/header.jsp" %>
        
         <main id="MainPage" class="ChildContent--flex ">

                    <div id="MainBanner">

                        <!--Banner Slider -->

                        <div id="MainBannerSlider" class="owl-carousel owl-theme h-100">

                            <div class="item w-100 h-100">
                                <div class="Banner--img h-100 w-100" style="background-image: url('assets/main/img/content/banners/mainBanner.png?cache=Rfx') ">
                                    <div class="container d-flex align-items-center w-100 h-100">
                                        <div class="" style="position: absolute; margin-top: 20%;">
                                            <h2 class="font-60 font-mp-bold text-white mb-0">XİDMƏTİN YENİ ADI</h2>
                                            <div class="mb-2"></div>
                                            <p class="font-18 font-mp text-white mb-0">
                                                Bu ildən etibarən Movex adı ilə tam yeni <br> keyfiyyət və xidmətlərlə qarşınızdayıq!
                                            </p>
                                            <div class="pt-25"></div>
                                            <!--Button -->
                                            <button 
                                                type="button"
                                                class="btn btn-outline-gray py-10 px-25 h-45"

                                                >
                                                <span class=" font-mp-bold  text-white font-12  ">
                                                    ƏTRAFLI
                                                </span>
                                            </button>

                                            <!--Button -->                </div>
                                    </div>
                                </div>

                            </div>

                            <div class="item w-100 h-100">
                                <div class="Banner--img h-100 w-100" style="background-image: url('assets/main/img/content/banners/mainBanner.png?cache=Rfx') ">
                                    <div class="container d-flex align-items-center w-100 h-100">
                                        <div class="" style="position: absolute; margin-top: 20%;">
                                            <h2 class="font-60 font-mp-bold text-white mb-0">XİDMƏTİN YENİ ADI</h2>
                                            <div class="mb-2"></div>
                                            <p class="font-18 font-mp text-white mb-0">
                                                Bu ildən etibarən Movex adı ilə tam yeni <br> keyfiyyət və xidmətlərlə qarşınızdayıq!
                                            </p>
                                            <div class="pt-25"></div>
                                            <!--Button -->
                                            <button 
                                                type="button"
                                                class="btn btn-outline-gray py-10 px-25 h-45"

                                                >
                                                <span class=" font-mp-bold  text-white font-12  ">
                                                    ƏTRAFLI
                                                </span>
                                            </button>

                                            <!--Button -->                </div>
                                    </div>
                                </div>

                            </div>


                        </div>

                        <!--Banner Slider
                    </div>
                    
                        <!--./MainBanner-->
                        <div class="ServiceBlock">
                            <div class="bg-m-white">
                                <div class="container">
                                    <div class="position-relative z-index-2" style="margin-top: calc(-140px / 2);">
                                        <!-- ServiceItems -->


                                        <div id="ServiceItems">
                                            <div class="ServiceItems__content">

                                                <div class="row" class="flex-1">
                                                    <div class="col-md-4">
                                                        <div class="ServiceItem--mod d-flex flex-column h-145 bg-white text-center w-100">
                                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                                <div class="Block">

                                                                    <img src="<c:url value="assets/main/img/icons/svgs/yukdasima.svg" />" width="75" alt="Yükdaşıma">
                                                                    <div class="pt-2"></div>
                                                                    <p class="mb-0 text-blue font-mp-bold">Yükdaşıma</p>
                                                                </div>
                                                            </div>
                                                            <div class="divider-h-5 bg-green"></div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="ServiceItem--mod d-flex flex-column h-145 bg-white text-center w-100">
                                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                                <div class="Block">

                                                                    <img src="<c:url value="assets/main/img/icons/svgs/Evakuasiya.svg" />" width="75" alt="Evakuasiya">
                                                                    <div class="pt-2"></div>
                                                                    <p class="mb-0 text-blue font-mp-bold">Evakuasiya</p>
                                                                </div>
                                                            </div>
                                                            <div class="divider-h-5 bg-green"></div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="ServiceItem--mod d-flex flex-column h-145 bg-white text-center w-100">
                                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                                <div class="Block">

                                                                    <img src="<c:url value="assets/main/img/icons/svgs/anbar_xidmeti.svg" />" width="75" alt="Anbar xidməti">
                                                                    <div class="pt-2"></div>
                                                                    <p class="mb-0 text-blue font-mp-bold">Anbar xidməti</p>
                                                                </div>
                                                            </div>
                                                            <div class="divider-h-5 bg-green"></div>

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="py-10"></div>

                                                <div class="row" class="flex-1">
                                                    <div class="col-md-4">
                                                        <div class="ServiceItem--mod d-flex flex-column h-145 bg-white text-center w-100">
                                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                                <div class="Block">

                                                                    <img src="<c:url value="assets/main/img/icons/svgs/cleaner.svg" />" width="75" alt="Təmizlik xidməti">
                                                                    <div class="pt-2"></div>
                                                                    <p class="mb-0 text-blue font-mp-bold">Təmizlik xidməti</p>
                                                                </div>
                                                            </div>
                                                            <div class="divider-h-5 bg-green"></div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="ServiceItem--mod d-flex flex-column h-145 bg-white text-center w-100">
                                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                                <div class="Block">

                                                                    <img src="<c:url value="assets/main/img/icons/svgs/email.svg" />" width="75" alt="Yükdaşıma">
                                                                    <div class="pt-2"></div>
                                                                    <p class="mb-0 text-blue font-mp-bold">Poçt xidməti</p>
                                                                </div>
                                                            </div>
                                                            <div class="divider-h-5 bg-green"></div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="ServiceItem--mod d-flex flex-column h-145 bg-white text-center w-100">
                                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                                <div class="Block">

                                                                    <img src="<c:url value="assets/main/img/icons/svgs/chauffeur.svg" />" width="75" alt="Evakuasiya">
                                                                    <div class="pt-2"></div>
                                                                    <p class="mb-0 text-blue font-mp-bold">Ayıq sürücü</p>
                                                                </div>
                                                            </div>
                                                            <div class="divider-h-5 bg-green"></div>

                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>


                                        <!-- ./ServiceItems -->            </div>
                                    <div class="py-15"></div>
                                    <div class="py-1"></div>
                                </div>
                            </div>
                        </div>

                        <div class="ServiceBlock">
                            <div class="container">
                                <div class="py-25"></div>
                                <!-- ServiceCalculator -->

                                <div id="ServiceCalculator">

                                    <h2 class="text-gray font-40 font-mp-bold text-center">Yük kalkulyatoru</h2>
                                    <div class="pt-15"></div>
                                    <div id="ServiceCalculatorForm w-100">
                                        <div class="row">
                                            <div class="col-md-1"></div>
                                            <div class="col-md-5">
                                                <!-- Form Input -->

                                                <div class="form-group ">

                                                    <label class="font-16 font-mp text-gray" for="fromM__Input">HARADAN</label>

                                                    <div class="CustomizeForm__inputCon">
                                                        <input  type="" value="" class="form-control" id="fromM__Input" placeholder="">

                                                        <div class="CustomizeForm__input__icon CustomizeForm__input__icon--right w-40p p-1 Show__pass c-point">
                                                            <div class="w-100 h-100 d-flex align-items-center bg-white">
                                                                <div class="d-flex justify-content-center w-100">
                                                                    <img width="15" height="19" src="<c:url value="assets/main/img/icons/svgs/pin.svg?v=1" />" alt="pin">
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                                <!-- Form Input -->            </div>
                                            <div class="col-md-5">
                                                <!-- Form Input -->

                                                <div class="form-group ">

                                                    <label class="font-16 font-mp text-gray" for="toM__Input">HARA</label>

                                                    <div class="CustomizeForm__inputCon">
                                                        <input  type="" value="" class="form-control" id="toM__Input" placeholder="">

                                                        <div class="CustomizeForm__input__icon CustomizeForm__input__icon--right w-40p p-1 Show__pass c-point">
                                                            <div class="w-100 h-100 d-flex align-items-center bg-white">
                                                                <div class="d-flex justify-content-center w-100">
                                                                    <img width="15" height="19" src="<c:url value="assets/main/img/icons/svgs/pin.svg?v=1" />" alt="pin">
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                                <!-- Form Input -->            </div>
                                            <div class="col-md-1"></div>
                                        </div>
                                        <div class="pt-1"></div>
                                        <div class="d-flex justify-content-center w-100">
                                            <div class="w-100 px-10 m-w-160p">
                                                <!-- Form Input --> 
                                                <div class="form-group CustomizeForm__inputCon ">
                                                    <label class="font-16 font-mp text-gray text-nowrap" for="weightF__Input">YÜKÜN ÇƏKİSİ</label>
                                                    <input class="form-control"  id="weightCF__Input" type="number"/>
                                                </div>

                                                <!-- Form Input -->
                                            </div>
                                            <div class="w-100 px-10 m-w-160p">
                                                <!-- Form Input --> 
                                                <div class="form-group CustomizeForm__inputCon ">
                                                    <label class="font-16 font-mp text-gray text-nowrap" for="weightCF__Input">YÜKLƏRİN SAYI</label>
                                                    <input class="form-control"  id="weightCF__Input" type="number"/>
                                                </div>

                                                <!-- Form Input -->
                                            </div>
                                            <div class="w-100 px-10 m-w-160p">
                                                <!-- Form Input --> 
                                                <div class="form-group CustomizeForm__inputCon ">
                                                    <label class="font-16 font-mp text-gray text-nowrap" for="workerC__Input">FƏHLƏ SAYI</label>
                                                    <input class="form-control"  id="workerC__Input" type="number"/>
                                                </div>

                                                <!-- Form Input -->
                                            </div>
                                        </div>
                                        <div class="pt-10"></div>
                                        <div class="d-flex justify-content-center w-100">
                                            <div class="Block">
                                                <div class="form-control m-w-250p border-bottom-0 text-center">
                                                    <span id="MinPrice__f1" class="font-26 text-gray font-mp">55</span>
                                                    <span id="MinPrice__f2" class="font-26 text-gray font-mp">-</span>
                                                    <span id="MaxPrice__f3" class="font-26 text-gray font-mp">105</span>
                                                    <span id="CurrencyType" class="font-26 text-gray font-mp">AZN</span>               
                                                </div>
                                                <div class="divider-h-3 bg-green"></div>
                                            </div>
                                        </div>
                                        <div class="pt-15"></div>
                                        <div class="d-flex justify-content-center w-100">
                                            <!--Button -->
                                            <button 
                                                type="button"
                                                class="btn btn-green py-10 px-25 h-45"

                                                >
                                                <span class=" font-mp-bold  font-16 text-white  ">
                                                    TƏKLİF AL
                                                </span>
                                            </button>

                                            <!--Button -->        </div>
                                    </div>

                                </div>


                                <!-- ./ServiceCalculator -->
                            </div>
                        </div>
                        <div class="py-25"></div>
                        <div class="container">
                            
                            <div class="divider-h-1 bg-light-gray"></div>
                            <div class="divider-h-1 bg-light-gray"></div>
                            
                        </div>
                        <div class="py-25"></div>
                        <div class="container">
                            <!-- WhyUs -->


                            <div id="WhyUs">

                                <h2 class="text-gray font-40 font-mp-bold text-center">Nə üçün bizi seçirlər?</h2>
                                <div class="py-20"></div>
                                <div class="row" class="flex-1">
                                    <div class="col-md-3">
                                        <div class="bg-white text-center w-100">
                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                <div class="Block">

                                                    <img src="<c:url value="assets/main/img/icons/svgs/serfeli_qiymet.svg?v=1"/>" width="62" alt="Yükdaşıma">
                                                    <div class="pt-2"></div>
                                                    <p class="mb-0 text-gray font-mp-bold">Yükdaşıma</p>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="bg-white text-center w-100">
                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                <div class="Block">

                                                    <img src="<c:url value="assets/main/img/icons/svgs/vaxtinda_catdirma.svg?v=1"/>" width="62" alt="Evakuasiya">
                                                    <div class="pt-2"></div>
                                                    <p class="mb-0 text-gray font-mp-bold">Evakuasiya</p>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="bg-white text-center w-100">
                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                <div class="Block">

                                                    <img src="<c:url value="assets/main/img/icons/svgs/24_7.svg?v=1" />" width="62" alt="Anbar xidməti">
                                                    <div class="pt-2"></div>
                                                    <p class="mb-0 text-gray font-mp-bold">Anbar xidməti</p>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="bg-white text-center w-100">
                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                <div class="Block">

                                                    <img src="<c:url value="assets/main/img/icons/svgs/cleaner.svg?v=1" />" width="62" height="62" alt="Təmizlik xidməti">
                                                    <div class="pt-2"></div>
                                                    <p class="mb-0 text-gray font-mp-bold">Təmizlik xidməti</p>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                                <div class="pt-25"></div>
                                <div class="row" class="flex-1">
                                    <div class="col-md-3">
                                        <div class="bg-white text-center w-100">
                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                <div class="Block">

                                                    <img src="<c:url value="assets/main/img/icons/svgs/map.svg?v=1" />" width="62" height="62" alt="Yükdaşıma">
                                                    <div class="pt-2"></div>
                                                    <p class="mb-0 text-gray font-mp-bold">Ölkə üzrə xidmət</p>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="bg-white text-center w-100">
                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                <div class="Block">

                                                    <img src="<c:url value="assets/main/img/icons/svgs/xidmete_zemanet.svg?v=1"/>" width="62" height="62" alt="Evakuasiya">
                                                    <div class="pt-2"></div>
                                                    <p class="mb-0 text-gray font-mp-bold">Xidmətə zəmanət</p>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="bg-white text-center w-100">
                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                <div class="Block">

                                                    <img src="<c:url value="assets/main/img/icons/svgs/rahat_odenis.svg?v=1" />" width="62" height="62" alt="Anbar xidməti">
                                                    <div class="pt-2"></div>
                                                    <p class="mb-0 text-gray font-mp-bold">Rahat ödəniş</p>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="bg-white text-center w-100">
                                            <div class="flex-1 d-flex align-items-center justify-content-center">
                                                <div class="Block">

                                                    <img src="<c:url value="assets/main/img/icons/svgs/shexsi_qablasdirma.svg?v=1" />" width="62" height="62" alt="Təmizlik xidməti">
                                                    <div class="pt-2"></div>
                                                    <p class="mb-0 text-gray font-mp-bold">Şəxsi qablaşdırma</p>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>

                            </div>


                            <!-- ./WhyUs --></div>
                        <div class="py-25"></div>
                        <div class="container">
                            
                            <div class="divider-h-1 bg-light-gray"></div>
                            <div class="divider-h-1 bg-light-gray"></div>
                            
                        </div>
                        <div class="py-25"></div>
                        <div class="container">
                            <h2 class="text-gray font-40 font-mp-bold text-center">Partnyorlar</h2>
                            <div class="py-15"></div>
                            <!--<div class="headline"><h2>Partnyorlar</h2></div>-->
                                <ul id="flexiselDemo1">
                                    <li><img src="<c:url value="assets/main/img/clients4/1.png" />" /></li>
                                    <li><img src="<c:url value="assets/main/img/clients4/1.png" />" /></li>
                                    <li><img src="<c:url value="assets/main/img/clients4/2.png" />" /></li>
                                    <li><img src="<c:url value="assets/main/img/clients4/3.png" />" /></li>                                                 
                                    <li><img src="<c:url value="assets/main/img/clients4/4.png" />" /></li>                                                 
                                    <li><img src="<c:url value="assets/main/img/clients4/5.png" />" /></li>                                                 
                                    <li><img src="<c:url value="assets/main/img/clients4/6.png" />" /></li>                                                 
                                    <li><img src="<c:url value="assets/main/img/clients4/7.png" />" /></li>                                                 
                                    <li><img src="<c:url value="assets/main/img/clients4/8.png" />" /></li>                                                 
                                    <li><img src="<c:url value="assets/main/img/clients4/3.png" />" /></li>                                                 
                                    <li><img src="<c:url value="assets/main/img/clients4/1.png" />" /></li>                                                 
                                    <li><img src="<c:url value="assets/main/img/clients4/4.png" />" /></li>                                                 
                                </ul> 
                        </div>
                        <div class="py-25"></div>
                        <%@include file="include/footer.jsp" %>