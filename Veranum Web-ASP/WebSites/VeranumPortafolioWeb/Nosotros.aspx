<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Nosotros.aspx.cs" Inherits="Nosotros" %>
<!DOCTYPE html>
<html class="wide wow-animation smoothscroll" lang="en"> 
  <head>
    <!-- Site Title-->
    <title>Nosotros</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"1f02c93897fcadd944bd6edec0f93bae",petok:"1561305f072fb52d421c3522ed1bc0cc75ced4fb-1500093595-1800",zone:"template-help.com",rocket:"0",apps:{"abetterbrowser":{"ie":"7"}}}];!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
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
              <li class="active">About</li>
            </ul>
          </div>
        </div>
      </section>
      <section class="bg-gray-dark text-center">
        <!-- RD Parallax-->
        <div class="rd-parallax bg-image parallax-header" data-on="false" data-md-on="true" style="background-image: url(images/parallax-1.jpg);">
          <div class="rd-parallax-layer" data-speed="0.35" data-type="media" data-url="images/parallax-1.jpg"></div>
          <div class="rd-parallax-layer" data-speed="0.1" data-type="html">
            <div class="parallax-header__inner">
              <div class="parallax-header__content">
                <div class="shell">
                  <div class="range range-xs-center">
                    <div class="cell-sm-10 cell-lg-8">
                      <h6>Bienvenidos a</h6>
                      <h2>Hotel Veranum</h2>
                      <p>Veranum tiene la mejor ubicación, para asi tener una gran estadía <br class="veil reveal-sm-block">
                        entrega un cálido servicio y posee la infraestructura para atenderlo durante sus viajes de negocios o de paseo.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Main info-->
      <section class="section-lg bg-white text-center">
        <div class="shell">
          <div class="range range-50 range-sm-center range-md-middle range-lg-justify">
            <div class="cell-md-6 cell-lg-5">
              
              <h2>Un Hotel Moderno</h2>
              <p>3 tipos de habitaciones de singles a Family es lo que Veranum ofrece a sus huéspedes, además de nuestra excelente carta... Adicionalmente ofrecemos excelentes servicios y amenidades, a un precio razonable, el cual nos hace una opción para el huésped que viene hacer negocios, como el que viene de vacaciones</p>
            </div>
            <div class="cell-sm-9 cell-md-6"><img class="img-bordered" src="images/about-1-622x456.jpg" alt="" width="622" height="456"/>
            </div>
          </div>
        </div>
      </section>

      <!-- Just a few reasons to choose-->
      <section class="section-md bg-primary text-center">
        <div class="shell">
          <h6>Algunas razones para elegirnos</h6>
          <h2>Veranum el mejor hotel... </h2>
          <div class="range range-50 range-sm-center offset-top-1">
            <div class="cell-sm-3">
              <!-- Box icon-->
              <article class="box-icon"><span class="icon icon-primary icon-lg material-icons-wifi"></span>
                <h4 class="box-icon__title">WiFi Gratis</h4>
              </article>
            </div>
            <div class="cell-sm-3">
              <!-- Box icon -->
              <article class="box-icon"><span class="icon icon-primary icon-lg material-icons-vpn_key"></span>
                <h4 class="box-icon__title">Servicio de habitación </h4>
              </article>
            </div>
            <div class="cell-sm-3">
              <!-- Box icon-->
              <article class="box-icon"><span class="icon icon-primary icon-lg material-icons-directions_car"></span>
                <h4 class="box-icon__title">Estacionamiento gratis</h4>
              </article>
            </div>
            <div class="cell-sm-3">
              <!-- Box icon-->
              <article class="box-icon"><span class="icon icon-primary icon-lg material-icons-access_time"></span>
                <h4 class="box-icon__title">Early check-in, late check-out</h4>
              </article>
            </div>
          </div>
        </div>
      </section>

      <!-- Testimonials-->
     
                <!--#include file="testimonios.html"-->

      <!-- Rated by-->
      <section class="section-md bg-gray-lighter text-center">
        <div class="shell">
          <h2>Catalogado con 4 estrellas por</h2>
          <!-- Owl Carousel-->
          <div class="owl-carousel owl-carousel_centered text-center" data-items="1" data-xs-items="2" data-sm-items="4" data-stage-padding="15" data-loop="true" data-margin="30" data-mouse-drag="false" data-dots="true">
            <div class="item"><a class="link-transparent" href="#"><img src="images/brand-1-140x132.png" alt="" width="140" height="132"/></a></div>
            <div class="item"><a class="link-transparent" href="#"><img src="images/brand-2-192x83.png" alt="" width="192" height="83"/></a></div>
            <div class="item"><a class="link-transparent" href="#"><img src="images/brand-3-175x89.png" alt="" width="175" height="89"/></a></div>
            <div class="item"><a class="link-transparent" href="#"><img src="images/brand-4-170x104.png" alt="" width="170" height="104"/></a></div>
          </div>
        </div>
      </section>

      <!-- Special Offers, City Guides & More!-->
      <section class="bg-white section-md text-center">
        <div class="shell">
          <h6>Ofertas especiales, Visitas a la ciudad & más!</h6>
          <h2>Vea nuestro Blog del Hotel</h2>
          <div class="range range-50">
            <div class="cell-sm-6 cell-md-4">
              <!-- Post-->
              <article class="post"><img class="post__image" src="images/post-1-418x313.jpg" alt="" width="418" height="313"/>
                <ul class="post__tags">
                  <li><a href="#">Visitas a la ciudad</a></li>
                </ul>
                <h4 class="post__title"><a href="standard-post.html">Una manera de ver como vive nuestra gente y sus costumbres</a></h4>

              </article>
            </div>
            <div class="cell-sm-6 cell-md-4">
              <!-- Post-->
              <article class="post"><img class="post__image" src="images/post-2-418x313.jpg" alt="" width="418" height="313"/>
                <ul class="post__tags">
                  <li><a href="#">Visitas a la ciudad</a></li>
                </ul>
                <h4 class="post__title"><a href="standard-post.html">Lo mejor de la cuidad, con sus restaurantes y comodos alojamientos.</a></h4>

              </article>
            </div>
            <div class="cell-sm-6 cell-md-4">
              <!-- Post-->
              <article class="post"><img class="post__image" src="images/post-3-418x313.jpg" alt="" width="418" height="313"/>
                <ul class="post__tags">
                  <li><a href="#">Visitas a la ciudad</a></li>
                </ul>
                <h4 class="post__title"><a href="standard-post.html">Los mejores lugares para ver al llegar a la cuidad</a></h4>
      
              </article>
            </div>
          </div>
        </div>
      </section>

        
        <!--#include file="footer.html"-->
      
        
        </html>