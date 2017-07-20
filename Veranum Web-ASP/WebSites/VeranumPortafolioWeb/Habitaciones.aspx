<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Habitaciones.aspx.cs" Inherits="Habitaciones" %>
<!DOCTYPE html>
<html class="wide wow-animation smoothscroll" lang="en"> 
  <head>
    <!-- Site Title-->
    <title>Rooms &amp; Suites</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"1f02c93897fcadd944bd6edec0f93bae",petok:"0292374c88442e251ad25aeffc4273851718e0f0-1500096716-1800",zone:"template-help.com",rocket:"0",apps:{"abetterbrowser":{"ie":"7"}}}];!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:300,700%7CPlayfair+Display:400,700,400italic%7CMontserrat:400">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="http://static.livedemo00.template-help.com/wt_62268/css/style.css">
  </head>
  <body>
    <!-- Page-->
    <div class="page">
      <div id="page-loader">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
      </div>
      <!-- Page header-->
      <header class="page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-sm-device-layout="rd-navbar-fixed" data-md-layout="rd-navbar-static" data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-stick-up-clone="false" data-sm-stick-up="true" data-md-stick-up="true" data-lg-stick-up="true" data-md-stick-up-offset="150px" data-lg-stick-up-offset="50px">
            <!-- RD Navbar Top Panel-->
            <div class="rd-navbar-top-panel__outer">
              <div class="rd-navbar-top-panel">
                <div class="rd-navbar-top-panel__main">
                  <div class="rd-navbar-top-panel__toggle rd-navbar-fixed__element-1 rd-navbar-static--hidden" data-rd-navbar-toggle=".rd-navbar-top-panel__main"><span></span></div>
                  <div class="rd-navbar-top-panel__content">
                    <ul class="rd-navbar-items-list">
                      <li>
                        <div class="unit unit-horizontal unit-spacing-xs">
                          <div class="unit__left"><span class="icon icon-xxs icon-gray-base material-icons-location_on"></span></div>
                          <div class="unit__body"><a href="#">Av. Nueva Costanera 3736, Vitacura, Santiago, Chile - Av San Martín 199, Viña del Mar, Región de Valparaíso, Chile</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="unit unit-horizontal unit-spacing-xs">
                          <div class="unit__left"><span class="icon icon-xxs icon-gray-base material-icons-phone"></span></div>
                          <div class="unit__body">
                             <p>Contáctenos directamente a <a href="callto:#">+56 2 2941 8100 F: +562 2432 6800</a></p>
                          </div>
                        </div>
                      </li>
                        <li>
                        <div class="unit unit-horizontal unit-spacing-xs">
                          <div class="unit__left"><span class="icon icon-xxs icon-gray-base material-icons-dollar"></span></div>
                          <div class="unit__body">
                              <p><%= Session["UF"] %> <%= Session["Dolar"] %> <%= Session["Euro"] %></p>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="rd-navbar-inner">
              <!-- RD Navbar Panel-->
              <div class="rd-navbar-panel">
                <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                <!-- RD Navbar Brand-->
                <div class="rd-navbar-brand"><a class="brand__name" href="default.aspx"><img src="images/logo-174x29.png" alt="" width="174" height="29"/>
                    <p class="brand__slogan">EL MEJOR HOTEL</p></a></div>
              </div>
              <!-- RD Navbar Nav-->
            
                
                <!--#include file="menu.html"-->
                            </div>
          </nav>
        </div>
      </header>
      <section class="breadcrumbs-custom">
        <div class="shell">
          <div class="breadcrumbs-custom__inner">
            <ul class="breadcrumbs-custom__path">
              <li><a href="default.aspx">Home</a></li>
              <li class="active">Habitaciones</li>
            </ul>
          </div>
        </div>
      </section>
      <section class="bg-gray-dark text-center">
        <!-- RD Parallax-->
        <div class="rd-parallax bg-image parallax-header" data-on="false" data-md-on="true" style="background-image: url(images/parallax-3.jpg);">
          <div class="rd-parallax-layer" data-speed="0.35" data-type="media" data-url="images/parallax-3.jpg"></div>
          <div class="rd-parallax-layer" data-speed="0.1" data-type="html">
            <div class="parallax-header__inner">
              <div class="parallax-header__content">
                <div class="shell">
                  <div class="range range-xs-center">
                    <div class="cell-sm-10 cell-lg-8">
                      
                      <h2>Habitaciones y suites</h2>
                      <p>Descubra hermosas habitaciones con decoración de lujo y suites con maravillosas vistas. Veranum proporciona lo último en hospedaje para relajarse. Las habitaciones del Hotel Veranum capturan la esencia moderna y la energía de su entorno. Con detalles y toques de lujo como las telas italianas, ropa de cama de Portugal, pisos de madera y muebles de diseño se complementan con las comodidades modernas como conexión Wi-Fi, televisores de pantalla plana LCD y sistemas de sonido de primera calidad.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Single Room-->
      <section class="section-lg bg-white">
        <div class="shell">
          <div class="range range-50 range-sm-center range-md-reverse">
            <div class="cell-sm-10 cell-md-6">
              <h3><a href="single-room.html">Single Room</a></h3>
              <p>Diseñado para la relajación sin esfuerzo, las habitaciones Single ofrecen el refugio ideal con 45 metros cuadrados de espacio habitable y cama king o dos camas individuales. En la habitación incluye un televisor de 42 "LCD, sistema de audio premium, telas italianas de lujo, y conexión Wi-Fi. </p>
              <h4>Precio </h4>
              <div class="price"><span class="price__aside-top">$</span><span class="price__main">30.000</span><span class="price__aside-bottom">/por noche</span></div>
              <ul class="list-marked">
                <li>Adultos: 2</li>
                <li>
                   Instalaciones: <a href="rooms-search-results.html">Baño con tina y ducha, secador de pelo</a>, <a href="rooms-search-results.html">Caja fuerte personal</a>, <a href="rooms-search-results.html"> Internet Wi-Fi de alta velocidad y conección por cable</a>, <a href="rooms-search-results.html"> Televisor plano de 42" con cable</a></li>
                <li>Tamaño: 45m²</li>
                <li>Tipo de Cama: Cama Queen </li>
                <li>
                   Categorias: <a href="rooms-search-results.html">Single</a></li>
              </ul><a class="button button-primary" href="habitacion_det.aspx">Reservar</a>
            </div>
            <div class="cell-sm-10 cell-md-6">
              <!-- Owl Carousel-->
              <div class="owl-carousel carousel-gallery" data-items="1" data-stage-padding="0" data-loop="false" data-margin="10px" data-mouse-drag="false" data-nav="true" data-dots="true" data-photo-swipe-gallery="gallery">
                <figure class="thumb-decorated"><img class="img-decorated" src="images/room-1-650x490.jpg" alt="" width="650" height="490"/>
                </figure>
                <figure class="thumb-decorated"><img class="img-decorated" src="images/room-2-650x490.jpg" alt="" width="650" height="490"/>
                </figure>
                <figure class="thumb-decorated"><img class="img-decorated" src="images/room-3-650x490.jpg" alt="" width="650" height="490"/>
                </figure>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Double Room-->
      <section class="section-lg bg-gray-lighter">
        <div class="shell">
          <div class="range range-50 range-sm-center">
            <div class="cell-sm-10 cell-md-6">
              <h3><a href="single-room.html">Double Room</a></h3>
              <p>Si usted ha llegado a escaparse por una noche, nuestras Double Room cuentan con 50 metros cuadrados de espacio de vida brillante, moderna y comodidades tapices italianos, ropa de cama de Portugal y bañeras de hidromasaje.</p>
              <h4>Precio</h4>
              <div class="price"><span class="price__aside-top">$</span><span class="price__main">45.000</span><span class="price__aside-bottom">/por noche</span></div>
              <ul class="list-marked">
                <li>Adultos: 2</li>
                <li>
                   Instalaciones: <a href="rooms-search-results.html">Closet con colgadores</a>, <a href="rooms-search-results.html">Caja fuerte personal</a>,<a href="rooms-search-results.html">Televisor plano de 42" con cable</a>, <a href="rooms-search-results.html">Servicio a la Habitación</a></li>
                <li>Tamaño: 50m²</li>
                <li>Tipo de Cama: Cama Queen o dos camas individuales</li>
                <li>
                   Categorias: <a href="rooms-search-results.html">Double</a>,<a href="rooms-search-results.html">Single</a></li>
              </ul><a class="button button-primary" href="habitacion_det2.aspx">Reserva</a>
            </div>
            <div class="cell-sm-10 cell-md-6">
              <!-- Owl Carousel-->
              <div class="owl-carousel carousel-gallery" data-items="1" data-stage-padding="0" data-loop="false" data-margin="10px" data-mouse-drag="false" data-nav="true" data-dots="true" data-photo-swipe-gallery="gallery">
                <figure class="thumb-decorated"><img class="img-decorated" src="images/room-4-650x490.jpg" alt="" width="650" height="490"/>
                </figure>
                <figure class="thumb-decorated"><img class="img-decorated" src="images/room-2-650x490.jpg" alt="" width="650" height="490"/>
                </figure>
                <figure class="thumb-decorated"><img class="img-decorated" src="images/room-5-650x490.jpg" alt="" width="650" height="490"/>
                </figure>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Family Room-->
      <section class="section-lg bg-white">
        <div class="shell">
          <div class="range range-50 range-sm-center range-md-reverse">
            <div class="cell-sm-10 cell-md-6">
              <h3><a href="single-room.html">Family Room</a></h3>
              <p>Cada una de nuestras Family Room cuentan con una cama King de lujo, cálido ambiente y acogedor que hará que sea difícil abandonar su habitación. Todas las suites están situadas en las plantas inferiores del hotel y ofrecen 70 metros cuadrados de espacio habitable.</p>
              <h4>Precio</h4>
              <div class="price"><span class="price__aside-top">$</span><span class="price__main">65.000</span><span class="price__aside-bottom">/por noche</span></div>
              <ul class="list-marked">
                <li>Adultos: 2</li>
                <li>
                   Instalaciones: <a href="rooms-search-results.html">Closet con colgadores</a>, <a href="rooms-search-results.html">Caja fuerte personal</a>, <a href="rooms-search-results.html">Sofá</a>, <a href="rooms-search-results.html">Televisor plano de 42" con cable</a></li>
                <li>Tamaño: 70m²</li>
                <li>Tipo de Cama: Cama King de lujo</li>
                <li>Tipo de Cama: Dos camas Simple</li>
                <li> Categoria: <a href="rooms-search-results.html">Double</a></li>
              </ul><a class="button button-primary" href="habitacion_det3.aspx">Reserva</a>
            </div>
            <div class="cell-sm-10 cell-md-6">
              <!-- Owl Carousel-->
              <div class="owl-carousel carousel-gallery" data-items="1" data-stage-padding="0" data-loop="false" data-margin="10px" data-mouse-drag="false" data-nav="true" data-dots="true" data-photo-swipe-gallery="gallery">
                <figure class="thumb-decorated"><img class="img-decorated" src="images/room-6-650x490.jpg" alt="" width="650" height="490"/>
                </figure>
                <figure class="thumb-decorated"><img class="img-decorated" src="images/room-4-650x490.jpg" alt="" width="650" height="490"/>
                </figure>
                <figure class="thumb-decorated"><img class="img-decorated" src="images/room-5-650x490.jpg" alt="" width="650" height="490"/>
                </figure>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!--#include file="footer.html"-->
     

</html>