<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registro.aspx.cs" Inherits="registro" %>


<!DOCTYPE html>
<html class="wide wow-animation smoothscroll" lang="en"> 
  <head>
    <!-- Site Title-->
    <title>Registro</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"1f02c93897fcadd944bd6edec0f93bae",petok:"bd43be27f6f9e999a15b95f77f34664f6430063d-1500092914-1800",zone:"template-help.com",rocket:"0",apps:{"abetterbrowser":{"ie":"7"}}}];!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
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
                    <p class="brand__slogan">Best Hotel</p></a></div>
              </div>
              <!-- RD Navbar Nav-->
                   <!--#include file="menu.html"-->

                   </div>
          </nav>
        </div>

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
                      <h2>Registrar</h2>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="section-md bg-white">
        <div class="shell">
          <div class="range range-50">
            <div class="cell-sm-5 cell-md-4">
              
            </div>
            <div class="cell-sm-7 cell-md-8">
              <h4>Formulario de Registro</h4>
              <p class="small">Todos los campos son requeridos*</p>
              <!-- RD Mailform-->


              <form name="Form1" id="Form1" method="post" runat="server" action="registro.aspx">
            
  <asp:Panel ID="myPanel" runat="server">    
   <div align="center">
        <table width="550" border="0" align="center" cellpadding="0" class="MarcoError">
          <tr>
            <td><img src="img/avisos/ico_err.png" width="18" height="18" align="absmiddle" class="IcoMsg" />      
                 <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                      </td>
          </tr>
        </table>
  </div>
      </asp:Panel>

                <div class="form-wrap">
                  <label class="form-label-outside" for="contact-first-name">Rut:*</label>
                  <input class="form-input" id="rut" type="text" name="rut" data-constraints="@Required" placeholder="19">
                </div>
                <div class="form-wrap">
                  <label class="form-label-outside" for="contact-first-name">Contraseña:*</label>
                  <input class="form-input" id="pass" type="password" name="pass" data-constraints="@Required" placeholder="*****">
                </div>
                <div class="form-wrap">
                  <label class="form-label-outside" for="contact-first-name">Nombre:*</label>
                  <input class="form-input" id="nombre" type="text" name="nombre" data-constraints="@Required" placeholder="Adela">
                </div>
                <div class="form-wrap">
                  <label class="form-label-outside" for="contact-last-name">Apellido Paterno:* </label>
                  <input class="form-input" id="apellidoPa" type="text" name="apellidoPa" data-constraints="@Required" placeholder="Rojas">
                </div>
                  <div class="form-wrap">
                  <label class="form-label-outside" for="contact-last-name">Apellido Materno:* </label>
                  <input class="form-input" id="apellidoMa" type="text" name="apellidoMa" data-constraints="@Required" placeholder="Manriquez">
                </div>
                <div class="form-wrap">
                  <label class="form-label-outside" for="contact-email">Email:*</label>
                  <input class="form-input" id="email" type="email" name="email" data-constraints="@Email @Required" placeholder="test@veranum.cl">
                </div>
                <div class="form-wrap">
                  <label class="form-label-outside" for="contact-phone">Teléfono:*</label>
                  <input class="form-input" id="telefono" type="text" name="telefono" data-constraints="@Numeric @Required" placeholder="12345678">
                </div>
                <div class="form-wrap">
                  <label class="form-label-outside" for="contact-phone">Dirección:*</label>
                  <input class="form-input" id="direccion" type="text" name="direccion" data-constraints="@Required" placeholder="Avenida Arturo Pratt #123">
                </div>
                <div class="form-wrap">
                  <label class="form-label-outside" for="contact-phone">Fecha Nachimiento:*</label>
                  <input class="form-input" id="nacimiento" type="date" name="nacimiento" data-constraints="@Required">
                </div>
                <button class="button button-primary" type="submit">Registrar</button>
              
              </form>
            </div>
                  
          </div>
        </div>
      </section>
      <section>
          
        <!--#include file="footer.html"-->
          </html>