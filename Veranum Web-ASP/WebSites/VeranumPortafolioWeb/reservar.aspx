<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reservar.aspx.cs" Inherits="reservar" %>

<!DOCTYPE html>
<html class="wide wow-animation smoothscroll" lang="en"> 
  <head>
    <!-- Site Title-->
    <title>Single room</title>
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
                          <div class="unit__body"><a href="#">Av. Nueva Costanera 3736, Vitacura, Santiago, Chile</a></div>
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
                    <p class="brand__slogan">EL MEJOR HOTEL</p></a></div>
              </div>
              <!-- RD Navbar Nav-->
                    <!--#include file="menu.html"-->
                               </div>
          </nav>
        </div>
      </section>
      <!-- Single Room -->
      <section class="section-md section-md_smaller bg-white">
        <asp:Panel ID="error" runat="server">    
            <div align="center">
                <table width="550" border="0" align="center" cellpadding="0" class="MarcoError">
            <tr>
                <td><img src="img/avisos/ico_err.png" width="40" height="40" align="absmiddle" class="IcoMsg" />      
                <asp:Label ID="lblMensajeErr" runat="server" Text=""></asp:Label>
            </td>
            </tr>
            </table>
            </div>
        </asp:Panel>
          <asp:Panel ID="exito" runat="server">    
            <div align="center">
                <table width="550" border="0" align="center" cellpadding="0" class="MarcoError">
            <tr>
                <td><img src="img/avisos/ico_ticket.png" width="40" height="40" align="absmiddle" class="IcoMsg" />      
    Su reserva se ha realizado con exito, Fecha Ingreso:  <%= Session["arrival"] %>  - Fecha de Salida:   <%=  Session["departure"] %> por un monto de $<%=   Session["valorFinal"]   %> por <%= Session["cantidadDias"]  %> dias
            </td>
            </tr>
            </table>
            </div>
        </asp:Panel>
      </section>
          <!--#include file="footer.html"-->
          </html>