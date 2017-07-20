<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html class="wide wow-animation smoothscroll" lang="en"> 
  <head>
    <!-- Site Title-->
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"ff45db344b5bb0278de5a46e848df89b",petok:"30cb706d324abb6644d4c4fe2ceac609569defa6-1499526494-1800",zone:"template-help.com",rocket:"0",apps:{"abetterbrowser":{"ie":"7"}}}];!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
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
      <!-- Swiper-->
      <section class="swiper-form-wrap">
        <div class="swiper-container swiper-slider swiper-slider_fullheight" data-simulate-touch="true" data-loop="true" data-autoplay="false">
          <div class="swiper-wrapper">
            <div class="swiper-slide bg-gray-darker text-center" data-slide-bg="images/slider-slide-1.jpg">
              <div class="swiper-slide-caption">
                <div class="shell">
                  <div class="range range-md-center">
                    <div class="cell-md-10 cell-lg-7">
                      <ul class="list-rating">
                        <li class="icon-lg icon material-icons-star" data-caption-animate="fadeIn" data-caption-delay="180"></li>
                        <li class="icon-lg icon material-icons-star" data-caption-animate="fadeIn" data-caption-delay="220"></li>
                        <li class="icon-lg icon material-icons-star" data-caption-animate="fadeIn" data-caption-delay="260"></li>
                        <li class="icon-lg icon material-icons-star" data-caption-animate="fadeIn" data-caption-delay="320"></li>
                      </ul>
                      <h6 data-caption-animate="fadeInUpSmall" data-caption-delay="0">Bienvenidos a</h6>
                      <h1 data-caption-animate="fadeInUpSmall" data-caption-delay="100">Hotel Veranum</h1>
                      <p data-caption-animate="fadeInUpSmall" data-caption-delay="200"> Veranum tiene la mejor ubicación, para asi tener una gran estadía <br class="veil reveal-sm-block">
                        entrega un cálido servicio y posee la infraestructura para atenderlo durante sus viajes de negocios o de paseo</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide bg-gray-darker text-center" data-slide-bg="images/slider-slide-2.jpg">
              <div class="swiper-slide-caption">
                <div class="shell">
                  <div class="range range-md-center">
                    <div class="cell-md-10 cell-lg-7">
                      <ul class="list-rating">
                        <li class="icon-lg icon material-icons-star" data-caption-animate="fadeIn" data-caption-delay="180"></li>
                        <li class="icon-lg icon material-icons-star" data-caption-animate="fadeIn" data-caption-delay="220"></li>
                        <li class="icon-lg icon material-icons-star" data-caption-animate="fadeIn" data-caption-delay="260"></li>
                        <li class="icon-lg icon material-icons-star" data-caption-animate="fadeIn" data-caption-delay="320"></li>
                      </ul>
                      <h6 data-caption-animate="fadeInUpSmall" data-caption-delay="0">Disfrute de</h6>
                      <h1 data-caption-animate="fadeInUpSmall" data-caption-delay="100">Nuestra hermosa vista</h1>
                      <p data-caption-animate="fadeInUpSmall" data-caption-delay="200">
                          Cada suite de nuestro hotel ofrece no solo un alto nivel de comodidad, también una hermosa vista.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
   
          </div>


          <!-- Swiper Pagination-->
          <div class="swiper-pagination"> </div>
        </div>
        <div class="shell section-form">
          <div class="section-form__inner">
            <div class="section-form__content">
              <!-- RD Mailform-->
            </div>
          </div>
        </div>
      </section>

      <!-- Welcome to the Best Indianapolis Hotel!-->
      <section class="section-lg bg-gray-lighter">         
        <div class="shell">
          <div class="range range-50 range-sm-center"> 
            <div class="cell-sm-10 cell-md-6">
              <h6>Bienvenido a</h6>
              <h2>Veranum</h2>
              <p class="text-width-2">La elegancia y comodidad han posicionado a Veranum como uno de los mejores hoteles de Chile, gracias a su inigualable ubicación en el sector más turístico de la ciudad, sus amplias y confortables habitaciones con vista al mar y servicios de gastronomía que te harán disfrutar de tu estancia.</p><a class="button button-primary-outline" href="nosotros.aspx">Leer mas</a>
            </div>
            <div class="cell-sm-10 cell-md-6">
              <figure class="figure-fullwidth"><img class="img-bordered" src="images/about-1-622x456.jpg" alt="" width="622" height="456"/>
              </figure>
            </div>
          </div>
        </div>
      </section>

      <!-- Plenty of room...-->
      <section class="section-lg bg-white text-center">
        <div class="shell">
          <div class="range range-md-center">
            <div class="cell-md-10 cell-lg-8">
              
              <h2>Habitaciones y suites</h2>
              <p>Descubra hermosas habitaciones con decoración de lujo y suites con maravillosas vistas. Veranum proporciona lo último en hospedaje para relajarse. Las habitaciones del Hotel Veranum capturan la esencia moderna y la energía de su entorno. Con detalles y toques de lujo como las telas italianas, ropa de cama de Portugal, pisos de madera y muebles de diseño se complementan con las comodidades modernas como conexión Wi-Fi, televisores de pantalla plana LCD y sistemas de sonido de primera calidad.</p>
            </div>
          </div>
          <div class="range range-50">
            <div class="cell-sm-6 cell-md-4">
              <!-- Post-->
              <article class="post-product">
                <figure class="post-product__image-wrap"><img src="images/home-1-418x313.jpg" alt="" width="418" height="313"/>
                </figure>
                <div class="post-product__body">
                  <h3 class="post-product__title"><a href="single-room.html">Single Room</a></h3>
                  <div class="price"><span class="price__aside-top">$</span><span class="price__main">30.000</span><span class="price__aside-bottom">/por noche</span></div>
                  <ul class="list-marked">
                    <li>Caja de seguridad</li>
                    <li>Desayuno incluido</li>
                    <li>Aire acondicionado</li>
                  </ul><a class="button button-primary" href="habitacion_det.aspx">Reservar</a>
                </div>
              </article>
            </div>
            <div class="cell-sm-6 cell-md-4">
              <!-- Post-->
              <article class="post-product">
                <figure class="post-product__image-wrap"><img src="images/home-2-418x313.jpg" alt="" width="418" height="313"/>
                </figure>
                <div class="post-product__body">
                  <h3 class="post-product__title"><a href="single-room.html">Double Room</a></h3>
                  <div class="price"><span class="price__aside-top">$</span><span class="price__main">45.000</span><span class="price__aside-bottom">/por noche</span></div>
                  <ul class="list-marked">
                    <li>Perfecto para parejas</li>
                    <li>Desayuno no incluido</li>
                    <li>Servicios de Concierge</li>
                  </ul><a class="button button-primary"href="habitacion_det2.aspx">Reservar</a>
                </div>
              </article>
            </div>
            <div class="cell-sm-6 cell-md-4">
              <!-- Post-->
              <article class="post-product">
                <figure class="post-product__image-wrap"><img src="images/home-3-418x313.jpg" alt="" width="418" height="313"/>
                </figure>
                <div class="post-product__body">
                  <h3 class="post-product__title"><a href="single-room.html">Family Room</a></h3>
                  <div class="price"><span class="price__aside-top">$</span><span class="price__main">65.000</span><span class="price__aside-bottom">/por noche</span></div>
                  <ul class="list-marked">
                    <li>70m² para disfrutar</li>
                    <li>Desayuno incluido</li>
                    <li>1 cama disponible si es requerido</li>
                  </ul><a class="button button-primary" href="habitacion_det3.aspx">Reservar</a>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>

      <!-- Dining & Bar-->
      <section class="section-lg bg-gray-lighter text-center">
        <div class="shell">
          <div class="range range-md-center">
            <div class="cell-md-10 cell-lg-8">
              <h2>Restaurant & Bar</h2>
              <p>Descubre los aromas y sabores, donde hemos recopilado las mejores recetas e ingredientes del territorio chileno de norte a sur para crear un menú único que deleita y sorprende en cada uno de sus platos. </p>
            </div>
          </div>
          <div class="isotope-wrap">
            <ul class="list-nav isotope-filters isotope-filters-horizontal">
              <li class="active"><a data-isotope-filter="Category 1" data-isotope-group="menu" href="#">Principal </a></li>
              <li><a data-isotope-filter="Category 2" data-isotope-group="menu" href="#">Postres</a></li>
              <li><a data-isotope-filter="Category 3" data-isotope-group="menu" href="#">Tragos</a></li>
            </ul>
            <div class="isotope" data-isotope-layout="fitRows" data-isotope-group="menu">
              <div class="isotope-item" data-filter="Category 1">
                <div class="range range-50 range-sm-center">
                  <div class="cell-sm-10 cell-md-6">
                    <ul class="menu-list">
                      <!-- Menu item-->
                      <li class="menu-item">
                        <div class="menu-item__header">
                          <h4>Salmón a la mantequilla</h4>
                          <h4 class="menu-item__price">$12.500</h4>
                        </div>
                        <div class="menu-item__main">
                          <p>Salmón a la mantequilla acompañada de puré de arvejas con tocino</p>
                        </div>
                      </li>
                      <!-- Menu item-->
                      <li class="menu-item">
                        <div class="menu-item__header">
                          <h4>Ensalada César camarón</h4>
                          <h4 class="menu-item__price">$10.500</h4>
                        </div>
                        <div class="menu-item__main">
                          <p>Mix de hojas verdes, camarones salteados, queso parmesano, crutones y dressing César.</p>
                        </div>
                      </li>
                      <!-- Menu item-->
                      <li class="menu-item">
                        <div class="menu-item__header">
                          <h4>Congrio al pil-pil </h4>
                          <h4 class="menu-item__price">13.900</h4>
                        </div>
                        <div class="menu-item__main">
                          <p>Medallón de congrio, acompañado de una salsa con cebollín, tomates secos y cacho cabra.</p>
                        </div>
                      </li>
                      
                    </ul>
                  </div>
                  <div class="cell-sm-10 cell-md-6"><img class="img-bordered" src="images/dining-and-bar-1-652x486.jpg" alt="" width="652" height="486"/>
                  </div>
                </div>
              </div>
              <div class="isotope-item" data-filter="Category 2">
                <div class="range range-50 range-sm-center">
                  <div class="cell-sm-10 cell-md-6">
                    <ul class="menu-list">
                      <!-- Menu item-->
                      <li class="menu-item">
                        <div class="menu-item__header">
                          <h4>Papayas rellenas</h4>
                          <h4 class="menu-item__price">$3.500</h4>
                        </div>
                        <div class="menu-item__main">
                          <p>Originarias de La Serena, rellenas con mousse de frutos rojos.</p>
                        </div>
                      </li>
                      <!-- Menu item-->
                      <li class="menu-item">
                        <div class="menu-item__header">
                          <h4>Torta merengue lúcuma, chocolate</h4>
                          <h4 class="menu-item__price">$3.500</h4>
                        </div>
                        
                      </li>
                      <!-- Menu item-->
                      <li class="menu-item">
                        <div class="menu-item__header">
                          <h4>Mousse de Pisco Sour</h4>
                          <h4 class="menu-item__price">$3.500</h4>
                        </div>
                        <div class="menu-item__main">
                          <p>Tradicional mousse con pisco peruano y su reducción de naranjas.</p>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="cell-sm-10 cell-md-6"><img class="img-bordered" src="images/dining-and-bar-3-652x486.jpg" alt="" width="652" height="486"/>
                  </div>
                </div>
              </div>
              <div class="isotope-item" data-filter="Category 3">
                <div class="range range-50 range-sm-center">
                  <div class="cell-sm-10 cell-md-6">
                    <ul class="menu-list">
                      <!-- Menu item-->
                <li class="menu-item">
                  <div class="menu-item__header">
                    <h4> Blue Monday</h4>
                    <h4 class="menu-item__price">$3.500</h4>
                  </div>
                  <div class="menu-item__main">
                    <p>ron, curacao, jugo de naranja, jugo de piña, dash de limón</p>
                  </div>
                </li>
                <!-- Menu item-->
                <li class="menu-item">
                  <div class="menu-item__header">
                    <h4>Civilazo</h4>
                    <h4 class="menu-item__price">$3.500</h4>
                  </div>
                  <div class="menu-item__main">
                    <p>Un exelente trago de vodka, gin, tequila, triple sec, ron</p>
                  </div>
                </li>
                <!-- Menu item-->
                <li class="menu-item">
                  <div class="menu-item__header">
                    <h4>Clavo Oxidado</h4>
                    <h4 class="menu-item__price">$3.500</h4>
                  </div>
                  <div class="menu-item__main">
                    <p>Ballantines, Drambuie, clavos de olor.</p>
                  </div>
                </li>
                <!-- Menu item-->
                <li class="menu-item">
                  <div class="menu-item__header">
                    <h4>Old Fashion</h4>
                    <h4 class="menu-item__price">$4.500</h4>
                  </div>
                  <div class="menu-item__main">
                    <p>Un trago a base de Whisky, jugo de piña, jugo de naranja, granadina, amargo de angostura</p>
                  </div>
                      </li>
                    </ul>
                  </div>
                  <div class="cell-sm-10 cell-md-6"><img class="img-bordered" src="images/dining-and-bar-2-652x486.jpg" alt="" width="652" height="486"/>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="range range-md-center">
            <div class="cell-md-10 cell-lg-8"><a class="button button-primary-outline" href="comida.aspx">ver mas</a></div>
          </div>
        </div>
      </section>

      <!-- Amenidades-->
      <section class="section-lg bg-primary">
        <div class="shell">
          <div class="range range-md-center">
            <div class="cell-md-10 cell-lg-8 text-center">
              <h6>Algo extra...</h6>
              <h2>Amenidades</h2>
              <p>Además de nuestros servicios, siempre Veranum quiere ir más allá y ofrecer algo extra. Comenzando con estacionamiento gratis y WiFi en nuestro centro de conferencias</p>
            </div>
          </div>
          <div class="range range-50 range-sm-center range-md-reverse range-md-middle">
            <div class="cell-sm-10 cell-md-6">
              <h3>Reserve una Suite Ahora <br> Y obtendra un traslado del Aeropuerto al Hotel GRATIS</h3>
              <p>Exacto! Si reserva una Suite con nosotros tendra un traslado del Aeropuerto al Hotel completamente Gratis, así su experiencia en Veranum comenzara al bajar de su vuelo</p>
              <h4>Precios desde</h4>
              <div class="price"><span class="price__aside-top">$</span><span class="price__main">$30.000</span><span class="price__aside-bottom">/por noche</span></div><a class="button button-primary-outline" href="a.aspx">Reserve AHORA!</a>
            </div>
            <div class="cell-sm-10 cell-md-6"><img class="img-bordered" src="images/home-4-652x486.jpg" alt="" width="652" height="486"/>
            </div>
          </div>
        </div>
      </section>
        <!--#include file="testimonios.html"-->

      <!-- Driving Directions-->
      <section class="bg-gray-lighter object-wrap">
        <div class="section-lg">
          <div class="shell">
            <div class="range">
              <div class="cell-md-5">
                <h6>Hotel Ubicaciones Y Mapas</h6>
                <h2>Hotel Santiago</h2>
                <p>Av. Nueva Costanera 3736, Vitacura, Santiago, Chile</p>
                <p>+562 2432 6800</p>
              </div>
            </div>
          </div>
        </div>
        <div class="object-wrap__body object-wrap__body-sizing-1 object-wrap__body-md-right">
          <!-- RD Google Map-->
          <div class="rd-google-map rd-google-map__model" data-zoom="15" data-y="-33.4014307" data-x="-70.6006098,17z" data-styles="[{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:&quot;-100&quot;}]},{&quot;featureType&quot;:&quot;administrative.province&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;landscape&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:65},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;poi&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:&quot;50&quot;},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:&quot;-100&quot;}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road.arterial&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;lightness&quot;:&quot;30&quot;}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;lightness&quot;:&quot;40&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;hue&quot;:&quot;#ffff00&quot;},{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-97}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;labels&quot;,&quot;stylers&quot;:[{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-100}]}]">
            <ul class="map_locations">
              <li data-y="-33.4014307" data-x="-70.6006098,17z">
                <dl>
                  <dt>Dirección:</dt>
                  <dd>Av. Nueva Costanera 3736, Vitacura, Santiago, Chile</dd>
                  <p>+562 2432 6800</p>
                </dl>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <section class="bg-gray-lighter object-wrap">
        <div class="section-lg">
          <div class="shell">
            <div class="range">
              <div class="cell-md-5">
                <h2>Hotel Viña del Mar</h2>
                <p>Av. San Martín 199, Viña del Mar, Región de Valparaíso, Chile</p>
                <p>+562 2432 6800</p>
              </div>
            </div>
          </div>
        </div>
        <div class="object-wrap__body object-wrap__body-sizing-1 object-wrap__body-md-right">
          <!-- RD Google Map-->
          <div class="rd-google-map rd-google-map__model" data-zoom="15" data-y="-33.0190714" data-x="-71.5615472,17z" data-styles="[{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:&quot;-100&quot;}]},{&quot;featureType&quot;:&quot;administrative.province&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;landscape&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:65},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;poi&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:&quot;50&quot;},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:&quot;-100&quot;}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road.arterial&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;lightness&quot;:&quot;30&quot;}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;lightness&quot;:&quot;40&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;elementType&quot;:&quot;all&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;hue&quot;:&quot;#ffff00&quot;},{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-97}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;labels&quot;,&quot;stylers&quot;:[{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-100}]}]">
            <ul class="map_locations">
              <li data-y="-33.0190714" data-x="-71.5615472,17z">
                <dl>
                  <dt>Dirección:</dt>
                  <dd>Av. Nueva Costanera 3736, Vitacura, Santiago, Chile</dd>
                </dl>
              </li>
            </ul>
          </div>
        </div>
      </section>

      

      <section class="section bg-gray-dark">
        <!-- Owl Carousel  -->
        <div class="owl-carousel owl-carousel_flex flickr" data-flickr-tags="tm62268" data-items="2" data-xs-items="3" data-sm-items="4" data-md-items="5" data-lg-items="6" data-xl-items="8" data-loop="false" data-mouse-drag="true" data-photo-swipe-gallery="gallery">
                <div class="flickr-item" data-type="flickr-item"><a class="thumb-minimal thumb-minimal_square" href="#" data-image_b="href" data-photo-swipe-item>
                    <figure><img src="images/_blank.png" data-image_n="src" data-title="alt" width="320" height="320" alt=""></figure>
                    <div class="thumb-minimal__overlay"> </div></a></div>
                <div class="flickr-item" data-type="flickr-item"><a class="thumb-minimal thumb-minimal_square" href="#" data-image_b="href" data-photo-swipe-item>
                    <figure><img src="images/_blank.png" data-image_n="src" data-title="alt" width="320" height="320" alt=""></figure>
                    <div class="thumb-minimal__overlay"> </div></a></div>
                <div class="flickr-item" data-type="flickr-item"><a class="thumb-minimal thumb-minimal_square" href="#" data-image_b="href" data-photo-swipe-item>
                    <figure><img src="images/_blank.png" data-image_n="src" data-title="alt" width="320" height="320" alt=""></figure>
                    <div class="thumb-minimal__overlay"> </div></a></div>
                <div class="flickr-item" data-type="flickr-item"><a class="thumb-minimal thumb-minimal_square" href="#" data-image_b="href" data-photo-swipe-item>
                    <figure><img src="images/_blank.png" data-image_n="src" data-title="alt" width="320" height="320" alt=""></figure>
                    <div class="thumb-minimal__overlay"> </div></a></div>
                <div class="flickr-item" data-type="flickr-item"><a class="thumb-minimal thumb-minimal_square" href="#" data-image_b="href" data-photo-swipe-item>
                    <figure><img src="images/_blank.png" data-image_n="src" data-title="alt" width="320" height="320" alt=""></figure>
                    <div class="thumb-minimal__overlay"> </div></a></div>
                <div class="flickr-item" data-type="flickr-item"><a class="thumb-minimal thumb-minimal_square" href="#" data-image_b="href" data-photo-swipe-item>
                    <figure><img src="images/_blank.png" data-image_n="src" data-title="alt" width="320" height="320" alt=""></figure>
                    <div class="thumb-minimal__overlay"> </div></a></div>
                <div class="flickr-item" data-type="flickr-item"><a class="thumb-minimal thumb-minimal_square" href="#" data-image_b="href" data-photo-swipe-item>
                    <figure><img src="images/_blank.png" data-image_n="src" data-title="alt" width="320" height="320" alt=""></figure>
                    <div class="thumb-minimal__overlay"> </div></a></div>
                <div class="flickr-item" data-type="flickr-item"><a class="thumb-minimal thumb-minimal_square" href="#" data-image_b="href" data-photo-swipe-item>
                    <figure><img src="images/_blank.png" data-image_n="src" data-title="alt" width="320" height="320" alt=""></figure>
                    <div class="thumb-minimal__overlay"> </div></a></div>
        </div>
      </section>
     
        <!--#include file="footer.html"-->
      </html>