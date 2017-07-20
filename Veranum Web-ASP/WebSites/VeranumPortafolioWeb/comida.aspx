<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comida.aspx.cs" Inherits="comida" %>
<!DOCTYPE html>
<html class="wide wow-animation smoothscroll" lang="en"> 
  <head>
    <!-- Site Title-->
    <title>Comedor &amp; Bar</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"1f02c93897fcadd944bd6edec0f93bae",petok:"3641de08f33704f0ecfb704739fb60b438e9c9a9-1500058968-1800",zone:"template-help.com",rocket:"0",apps:{"abetterbrowser":{"ie":"7"}}}];!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
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
              <li class="active">Menu</li>
            </ul>
          </div>
        </div>
      </section>
      <section class="bg-gray-dark text-center">
        <!-- RD Parallax-->
        <div class="rd-parallax bg-image parallax-header" data-on="false" data-md-on="true" style="background-image: url(images/parallax-5.jpg);">
          <div class="rd-parallax-layer" data-speed="0.35" data-type="media" data-url="images/parallax-5.jpg"></div>
          <div class="rd-parallax-layer" data-speed="0.1" data-type="html">
            <div class="parallax-header__inner">
              <div class="parallax-header__content">
                <div class="shell">
                  <div class="range range-xs-center">
                    <div class="cell-sm-10 cell-lg-8">
                      <h2>Comedor & Bar</h2>
                      <p>Sacie su apetito desde restaurantes y bares hasta menús en la habitación y más, nuestras ofertas de alimentos y bebidas seguramente satisfarán todos sus antojos.</p>
                      <p>Las ingeniosas combinaciones de ingredientes deleitan el paladar e invitan a la exploración. Pruebe lo inesperado con nuestro menu, de pequeños platos combinados, vinos premium y cervezas artesanales perfectamente combinados por profesionales.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Main Courses Menu-->
      <section class="section-lg bg-white text-center">
        <div class="shell">
          <h3>Menu Principal</h3>
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
                    <p>Salmón a la mantequilla acompañada de puré de arvejas con tocino.</p>
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
      </section>

      <!-- Desserts Menu-->
      <section class="section-lg bg-gray-lighter text-center">
        <div class="shell">
          <h3>Menu de Postres</h3>
          <div class="range range-50">
            <div class="cell-sm-6 cell-md-4">
              <!-- Box menu item-->
              <article class="box-menu-item"><img class="img-bordered" src="images/menu-1-418x313.jpg" alt="" width="418" height="313"/>
                <p class="box-menu-item__title">Papayas rellenas</p>
                <p class="box-menu-item__price">$3.500</p>
                <div class="box-menu-item__main">
                  <p>Originarias de La Serena, rellenas con mousse de frutos rojos</p>
                </div>
              </article>
            </div>
            <div class="cell-sm-6 cell-md-4">
              <!-- Box menu item-->
              <article class="box-menu-item"><img class="img-bordered" src="images/menu-2-418x313.jpg" alt="" width="418" height="313"/>
                <p class="box-menu-item__title">Torta merengue lúcuma, chocolate</p>
                <p class="box-menu-item__price">$3.500</p>
                <div class="box-menu-item__main">
                  <p>Biscocho relleno de lúcuma, con una cobertura de chocolate Suizo.</p>
                </div>
              </article>
            </div>
            <div class="cell-sm-6 cell-md-4">
              <!-- Box menu item-->
              <article class="box-menu-item"><img class="img-bordered" src="images/menu-3-418x313.jpg" alt="" width="418" height="313"/>
                <p class="box-menu-item__title">Mousse de Pisco Sour</p>
                <p class="box-menu-item__price">$3.500</p>
                <div class="box-menu-item__main">
                  <p>Tradicional mousse con pisco peruano y su reducción de naranjas.</p>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>

      <!-- Drinks Menu-->
      <section class="section-lg bg-white text-center">
        <div class="shell">
          <h3>Menu de Tragos</h3>
          <div class="range range-50 range-sm-center range-md-reverse">
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
      </section>

        <!--#include file="footer.html"-->
        </html>