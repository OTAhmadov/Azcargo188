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
        <title>Vakansiya haqqında</title>
        <%@include file="include/header.jsp" %>
        
         <main id="CompanyPage" class="ChildContent--flex ">


                    <!-- COMPANY PAGE  -->

                    <div class="py-25"></div>
                    <div class="py-25"></div>

                    <!-- CompanyBanner wide -->

                    <div id="CompanyBanner--wide">

                        <div class="CompanyBanner--wide--img w-100 h-220" style="background-image:url('<c:url value="/assets/main/img/content/banners/widebanner.png?v=1" />')">
                            <div class="w-100 h-100 d-flex align-items-center justify-content-center">
                                <h1 class="m-0 font-60 font-mp-bold text-white">
                                    Xidmət haqqında
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
<!--                                    <div class="text-center margin-bottom-50">
                                        <h2 class="title-v2 title-center">OUR SERVICES</h2>
                                        <p class="space-lg-hor">If you are going to use a <span class="color-green">passage of Lorem Ipsum</span>, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making <span class="color-green">this the first</span> true generator on the Internet.</p>
                                    </div>-->
                                <div class="row">
                                    <div class="col-sm-12 margin-bottom-30">
                                        <div class="profile-bio">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <img class="img-responsive md-margin-bottom-10" src="<c:url value="/assets/main/img/content/kocurme.jpg" />" alt="">
                                                </div>
                                                <div class="col-md-9">
                                                    <h2><strong>Водитель-экспедитор на личном эвакуаторе</strong></h2>
                                                    <small ><strong>12.19.2018 - 12.01.2019</strong></small>
                                                    <p class="pt-15">«ГрузовичкоФ» — лидер отрасли грузоперевозок, задающий её стандарты и правила. Мы создаём сервис нового типа: современный, технологичный, учитывающий ожидания потребителей, привыкших пользоваться продуктами и услугами высшего качества. Достижение этой амбициозной цели невозможно без формирования команды, каждый член которой стремится к личному развитию и успеху, сохраняя при этом верность общим идеям и принципам.
                                                    «ГрузовичкоФ» — лидер отрасли грузоперевозок, задающий её стандарты и правила. Мы создаём сервис нового типа: современный, технологичный, учитывающий ожидания потребителей, привыкших пользоваться продуктами и услугами высшего качества. Достижение этой амбициозной цели невозможно без формирования команды, каждый член которой стремится к личному развитию и успеху, сохраняя при этом верность общим идеям и принципам.
                                                    «ГрузовичкоФ» — лидер отрасли грузоперевозок, задающий её стандарты и правила. Мы создаём сервис нового типа: современный, технологичный, учитывающий ожидания потребителей, привыкших пользоваться продуктами и услугами высшего качества. Достижение этой амбициозной цели невозможно без формирования команды, каждый член которой стремится к личному развитию и успеху, сохраняя при этом верность общим идеям и принципам.
                                                    «ГрузовичкоФ» — лидер отрасли грузоперевозок, задающий её стандарты и правила. Мы создаём сервис нового типа: современный, технологичный, учитывающий ожидания потребителей, привыкших пользоваться продуктами и услугами высшего качества. Достижение этой амбициозной цели невозможно без формирования команды, каждый член которой стремится к личному развитию и успеху, сохраняя при этом верность общим идеям и принципам.
                                                    «ГрузовичкоФ» — лидер отрасли грузоперевозок, задающий её стандарты и правила. Мы создаём сервис нового типа: современный, технологичный, учитывающий ожидания потребителей, привыкших пользоваться продуктами и услугами высшего качества. Достижение этой амбициозной цели невозможно без формирования команды, каждый член которой стремится к личному развитию и успеху, сохраняя при этом верность общим идеям и принципам.
                                                    «ГрузовичкоФ» — лидер отрасли грузоперевозок, задающий её стандарты и правила. Мы создаём сервис нового типа: современный, технологичный, учитывающий ожидания потребителей, привыкших пользоваться продуктами и услугами высшего качества. Достижение этой амбициозной цели невозможно без формирования команды, каждый член которой стремится к личному развитию и успеху, сохраняя при этом верность общим идеям и принципам.
                                                    «ГрузовичкоФ» — лидер отрасли грузоперевозок, задающий её стандарты и правила. Мы создаём сервис нового типа: современный, технологичный, учитывающий ожидания потребителей, привыкших пользоваться продуктами и услугами высшего качества. Достижение этой амбициозной цели невозможно без формирования команды, каждый член которой стремится к личному развитию и успеху, сохраняя при этом верность общим идеям и принципам.</p>
                                                </div>
                                                <div class="col-md-12"><button class="btn btn-green pull-right apply-career">Müraciət et</button></div>
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
            <div class="modal CustomizeModals" id="LoginModalCenter">
                <div class="modal-dialog modal-dialog-centered" role="document" style="max-width:395px">
                    <div class="modal-content border-r-10">
                        <!--Modal Header -->


                        <div class="modal-header">
                            <div class="w-100">
                                <div class="ModalHeader--height">
                                    <!--<div class="py-20"></div>-->
<!--                                    <button type="button" class="ModalCloseBtn close float-right mr-25" data-dismiss="modal" aria-label="Close">
                                        <img src="assets/img/icons/svgs/CloseButton.svg?v=1" alt="Close Button" width="16" height="16" >
                                    </button>-->
                                    <!--<div class="pt-20"></div>-->
                                </div>
                                <div>
                                    <h5 class="modal-title text-center font-30 text-gray font-mp-bold" id="TT">Müraciət ərizəsi</h5>
                                    <div class="pb-10"></div>
                                </div>
                            </div>
                        </div>
                        <!--Modal Header -->            <div class="modal-body px-60">
                            <div class="pt-15"></div>
                            <div class="modal-body">
                                <form class="m-0">
                                    <!-- Form Input -->

                                    <div class="form-group ">

                                        <label class="font-16 font-mp text-gray" for="Form__phone__Input">S.A.A</label>

                                        <div class="CustomizeForm__inputCon">
                                            <input required type="text" value="" class="form-control fullname"  placeholder="">


                                        </div>

                                    </div>
                                    <div class="form-group ">

                                        <label class="font-16 font-mp text-gray" for="Form__phone__Input">Mobil</label>

                                        <div class="CustomizeForm__inputCon">
                                            <input required type="text" value="" class="form-control phone"  placeholder="">


                                        </div>

                                    </div>
                                    <div class="form-group ">

                                        <label class="font-16 font-mp text-gray" for="Form__phone__Input">Doğum tarixi</label>

                                        <div class="CustomizeForm__inputCon">
                                            <input required type="text" value="" class="form-control birthdate"  placeholder="">


                                        </div>

                                    </div>
                                    <div class="form-group ">

                                        <label class="font-16 font-mp text-gray" for="Form__phone__Input">Təcrübə</label>

                                        <div class="CustomizeForm__inputCon">
                                            <select required type="text" value="" class="form-control birthdate"  placeholder="">
                                                <option>1 ile qeder</option>
                                                <option>1 - 3 ile qeder</option>
                                                <option>3 ilden cox</option>
                                            </select>


                                        </div>

                                    </div>
                                    <div class="form-group ">

                                        <label class="font-16 font-mp text-gray" for="Form__phone__Input">Sürücülük vəsiqəsi</label>

                                        <div class="CustomizeForm__inputCon">
                                            <select required type="text" value="" class="form-control birthdate"  placeholder="">
                                                <option>A</option>
                                                <option>B</option>
                                                <option>C</option>
                                                <option>BC</option>
                                            </select>


                                        </div>

                                    </div>
                                    <div class="form-group ">

                                        <label class="font-16 font-mp text-gray" for="Form__phone__Input">CV</label>

                                        <div class="CustomizeForm__inputCon">
                                            <input type="file"/>


                                        </div>

                                    </div>
                                   <div class="pt-10"></div> 
                                    <button 
                                        type="button"
                                        class="btn btn-green w-100 px-25 h-45"

                                        >
                                        <span class=" font-mp-bold  font-16 text-white  ">
                                            GÖNDƏR
                                        </span>
                                    </button>
                                                     </form>

                            </div>

                        </div>

                    </div>
                </div>
            </div>
                        <%@include file="include/footer.jsp" %>