<%@ Page Language="C#" AutoEventWireup="true" CodeFile="habitacion_det2.aspx.cs" Inherits="habitacion_det2" %>

<!DOCTYPE html>
<html class="wide wow-animation smoothscroll" lang="en"> 
  <head>
    <!-- Site Title-->
    <title>Double room</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"ff45db344b5bb0278de5a46e848df89b",petok:"2b2622fd99903ea72ed474d1f1c1dca8908eca5c-1499528805-1800",zone:"template-help.com",rocket:"0",apps:{"abetterbrowser":{"ie":"7"}}}];!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:300,700%7CPlayfair+Display:400,700,400italic%7CMontserrat:400">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="http://static.livedemo00.template-help.com/wt_62268/css/style.css">

  </head>


        <SCRIPT language="JavaScript" src="intranet/js/funciones.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript">
    function valida(frm) {
        if (frm.arrival.value == "") { alert("Por favor ingrese fecha llegada"); return false; }
        if (frm.departure.value == "") { alert("Por favor ingrese fecha Salida"); return false; }
 
        if (frm.arrival.value > frm.departure.value) { alert("Error! no puede ser mayor fecha de salida"); return false; }
 
return true;
}
    </script>

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
                <div class="rd-navbar-brand"><a class="brand__name" href="index.html"><img src="images/logo-174x29.png" alt="" width="174" height="29"/>
                    <p class="brand__slogan">Best Hotel</p></a></div>
              </div>
              <!-- RD Navbar Nav-->
                    <!--#include file="menu.html"-->
                               </div>
          </nav>
        </div>
      </section>
      <!-- Double room -->
      <section class="section-md section-md_smaller bg-white">
        <div class="shell text-center">
          <h2>Double room</h2>
          <h4>Precio </h4>
          <div class="price"><span class="price__aside-top">$</span><span class="price__main">45.000</span><span class="price__aside-bottom">/por noche</span></div>
        </div>
        <div class="slick-gallery offset-top-1">
          <!-- Slick Carousel-->
          <div class="slick-slider carousel-parent" data-arrows="true" data-loop="false" data-dots="false" data-swipe="true" data-items="1" data-child="#child-carousel" data-for="#child-carousel" data-photo-swipe-gallery="gallery">
            <div class="item"><a class="thumb-modern thumb_rect" href="images/habitaciones/single-room-1-1920x1409.jpg" data-photo-swipe-item data-size="1920x1409">
                <figure class="thumb__inner"><img src="images/habitaciones/single-room-1-1920x1409.jpg" alt="" width="1920" height="1409"/>
                </figure>
                <div class="thumb-modern__overlay"></div></a></div>
            <div class="item"><a class="thumb-modern thumb_rect" href="images/habitaciones/single-room-2-1920x1188.jpg" data-photo-swipe-item data-size="1920x1188">
                <figure class="thumb__inner"><img src="images/habitaciones/single-room-2-1920x1188.jpg" alt="" width="1920" height="1188"/>
                </figure>
                <div class="thumb-modern__overlay"></div></a></div>
            <div class="item"><a class="thumb-modern thumb_rect" href="images/habitaciones/single-room-3-1920x1280.jpg" data-photo-swipe-item data-size="1920x1280">
                <figure class="thumb__inner"><img src="images/habitaciones/single-room-3-1920x1280.jpg" alt="" width="1920" height="1280"/>
                </figure>
                <div class="thumb-modern__overlay"></div></a></div>
            <div class="item"><a class="thumb-modern thumb_rect" href="images/habitaciones/single-room-4-1920x1230.jpg" data-photo-swipe-item data-size="1920x1230">
                <figure class="thumb__inner"><img src="images/habitaciones/single-room-4-1920x1230.jpg" alt="" width="1920" height="1230"/>
                </figure>
                <div class="thumb-modern__overlay"></div></a></div>
            <div class="item"><a class="thumb-modern thumb_rect" href="images/habitaciones/single-room-5-1920x1371.jpg" data-photo-swipe-item data-size="1920x1371">
                <figure class="thumb__inner"><img src="images/habitaciones/single-room-5-1920x1371.jpg" alt="" width="1920" height="1371"/>
                </figure>
                <div class="thumb-modern__overlay"></div></a></div>
            <div class="item"><a class="thumb-modern thumb_rect" href="images/habitaciones/single-room-6-1920x1280.jpg" data-photo-swipe-item data-size="1920x1280">
                <figure class="thumb__inner"><img src="images/habitaciones/single-room-6-1920x1280.jpg" alt="" width="1920" height="1280"/>
                </figure>
                <div class="thumb-modern__overlay"></div></a></div>
            <div class="item"><a class="thumb-modern thumb_rect" href="images/habitaciones/single-room-7-1920x1280.jpg" data-photo-swipe-item data-size="1920x1280">
                <figure class="thumb__inner"><img src="images/habitaciones/single-room-7-1920x1280.jpg" alt="" width="1920" height="1280"/>
                </figure>
                <div class="thumb-modern__overlay"></div></a></div>
          </div>
          <div class="slick-slider carousel-child" id="child-carousel" data-for=".carousel-parent" data-arrows="true" data-loop="false" data-dots="false" data-swipe="true" data-items="3" data-xs-items="3" data-sm-items="4" data-md-items="5" data-lg-items="6" data-slide-to-scroll="1">
            <div class="item">
              <div class="thumb thumb_rect-2">
                <div class="thumb__inner"><img src="images/habitaciones/single-room-1-1920x1409.jpg" alt="" width="1920" height="1409"/>
                </div>
              </div>
            </div>
            <div class="item">
              <!-- Thumb-->
              <div class="thumb thumb_rect-2">
                <div class="thumb__inner"><img src="images/habitaciones/single-room-2-1920x1188.jpg" alt="" width="1920" height="1188"/>
                </div>
              </div>
            </div>
            <div class="item">
              <!-- Thumb-->
              <div class="thumb thumb_rect-2">
                <div class="thumb__inner"><img src="images/habitaciones/single-room-3-1920x1280.jpg" alt="" width="1920" height="1280"/>
                </div>
              </div>
            </div>
            <div class="item">
              <!-- Thumb-->
              <div class="thumb thumb_rect-2">
                <div class="thumb__inner"><img src="images/habitaciones/single-room-4-1920x1230.jpg" alt="" width="1920" height="1230"/>
                </div>
              </div>
            </div>
            <div class="item">
              <!-- Thumb-->
              <div class="thumb thumb_rect-2">
                <div class="thumb__inner"><img src="images/habitaciones/single-room-5-1920x1371.jpg" alt="" width="1920" height="1371"/>
                </div>
              </div>
            </div>
            <div class="item">
              <!-- Thumb-->
              <div class="thumb thumb_rect-2">
                <div class="thumb__inner"><img src="images/habitaciones/single-room-6-1920x1280.jpg" alt="" width="1920" height="1280"/>
                </div>
              </div>
            </div>
            <div class="item">
              <!-- Thumb-->
              <div class="thumb thumb_rect-2">
                <div class="thumb__inner"><img src="images/habitaciones/single-room-7-1920x1280.jpg" alt="" width="1920" height="1280"/>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Room details-->
      <section class="section-lg bg-white">
        <div class="shell">
          <div class="range range-50 range-md-center">
            <div class="cell-md-10 cell-lg-8">
              <h4>Descripción  </h4>
              <p>Si usted ha llegado a escaparse por una noche, nuestras Double Room cuentan con 50 metros cuadrados de espacio de vida brillante, moderna y comodidades tapices italianos, ropa de cama de Portugal y bañeras de hidromasaje.</p>
              <div class="section-xs">
                <div class="divider"></div>
              </div>
              <h4>Detalles de la habitación</h4>
              <ul class="list-marked">
                <li>Adultos: 2</li>
                <li>Instalaciones: <a href="rooms-search-results.html">Baño con tina y ducha, secador de pelo</a>, <a href="rooms-search-results.html">Caja fuerte personal</a>, <a href="rooms-search-results.html"> Internet Wi-Fi de alta velocidad y conección por cable</a>, <a href="rooms-search-results.html"> Televisor plano de 42" con cable</a></li>
                <li>Tamaño: 50m²</li>
                <li>Tipo de Cama: Cama Queen o dos camas individuales</li>
                <li>
                   Categorias: <a href="rooms-search-results.html">Double</a>,<a href="rooms-search-results.html">Single</a></li>
              </ul>
              <div class="section-xs">
                <div class="divider"></div>
              </div>
              <h4>Formulario de Reserva</h4>
              <p class="small">Campos obligatorios estan destacados con *</p>
              <!-- RD Mailform-->
                <form method="post" action="habitacion_det2.aspx">          
                   
                    <h4>Hoteles</h4>
              <ul class="list-lg">
                <li>
                  <label class="radio-inline">
                    <input class="radio-custom" type="radio" name="hotel" value="1">Hotel Santiago
                  </label>
                </li>
                <li>
                  <label class="radio-inline">
                    <input class="radio-custom" type="radio" name="hotel" value="2">Hotel Viña
                  </label>
                </li>
              </ul>
              <div class="divider"></div>
                    <div class="form-wrap">
                        <label class="form-label-outside" for="reservation-arrival">Llega:*</label>
                        <input class="form-input" required id="arrival" type="text" name="arrival" placeholder="" data-time-picker="date" data-constraints="@Required">
                    </div>
                    <div class="form-wrap">
                        <label class="form-label-outside" for="reservation-departure">Salida:*</label>
                        <input class="form-input" required id="departure" type="text" name="departure" placeholder="" data-time-picker="date" data-constraints="@Required">
                    </div>
                    <div class="form-wrap">
                        <label class="form-label-outside" for="reservation-adults-count">Pasajeros:*</label>
                        <input class="form-input" id="cantidadPasajeros" type="number" name="cantidadPasajeros" min="1" max="7" value="1" data-constraints="@Required">
                    </div>
                    <div class="form-wrap">
                        <h4>Codigo Convenios Empresas:</h4>
                        <label class="form-label-outside" for="contact-first-name">Codigo Convenio:*</label>
                        <input class="form-input" id="codigoConvenio" type="text" name="codigoConvenio" placeholder="evJH948U">
                    </div>
                        <div class="divider"></div>
                        <input type="submit" class="button button-primary" onclick="return valida(Form1)" value="Reservar">
                </form>
            </div>
          </div>
      </section>
          <!--#include file="footer.html"-->
          </html>

