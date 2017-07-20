<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="intranet_Default" %>

<!DOCTYPE html>

<html>
<head>
<title>Intranet - Veramun</title>
<link rel="stylesheet" href="css/estilos.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<SCRIPT language="JavaScript" src="js/funciones.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript">
function valida(frm) { 
if (frm.username.value == "") { showError("Por favor ingrese su Nombre de Usuario", frm.username); return false; }
if (frm.password.value == "") { showError("Por favor ingrese su Contraseña", frm.password); return false; }

return true;
}


function NumCheck(e, field) {
    key = e.keyCode ? e.keyCode : e.which;
    if (key === 8)
        return true;
    if (field.value !== "") {
        if ((field.value.indexOf(",")) > 0) {
            if (key > 47 && key < 58) {
                if (field.value === "")
                    return true;
                regexp = /[0-9]{1,10}[,][0-9]{1,3}$/;
                regexp = /[0-9]{2}$/;
                return !(regexp.test(field.value))
            }
        }
    }
    if (key > 47 && key < 58) {
        if (field.value === "")
            return true;
        regexp = /[0-9]{10}/;
        return !(regexp.test(field.value));
    }
    if (key === 44) {
        if (field.value === "")
            return false;
        regexp = /^[0-9]+$/;
        return regexp.test(field.value);

    }

    return false;
}

function showError(showmsg, obj) {
alert(showmsg)
obj.focus();
}
/*
function PopUpAlta(){
		s = window.open("pop.asp","VentanaAltaProveedor"," width=10, height=10, resizable=no, status=no")
		if (s == null){
			alert("Debe desactivar los antipopup")
		}
}
*/
</script>
</head>

<body onLoad="LoginForm.username.focus()">
<script>PopUpAlta()</script>
<!--#include file="header.html"-->
</center>
<form action="valida.aspx" method="post" name="LoginForm">
<center class="titNoticia">
    Acceso a Veranum 
  </center>
  <div align="center"><br></font></font>
    <font color="#FF0000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>
<noscript class="asteriscoObligatorio">
                    <div align="center"><font size="2"><strong><font face="Arial, Helvetica, sans-serif">Este explorador no soporta JavaScript o est&aacute; deshabilitado. El sistema no funcionar&aacute; correctamente.<br />
                      Por favor utilice un navegador con soporte para JavaScript o no podr&aacute; acceder al sistema. </font></strong></font></div>
    </noscript>
	</strong></font>

  </div>

<%
    string error = null;
    error =  Request.QueryString["error"];
    if (String.IsNullOrEmpty(error)) {
    }else { 
  %>
 <div align="center" style="color:red">
      Error <%= error %> 

     </div>
    <br />
<%  
     } ;
     %>


  <table width="300" border="0" align="center" cellpadding="3" cellspacing="0" class="tabla">      
   <tr> 
      <td colspan="2" class="HeadTabla">Usuarios 
        registrados</td>
  </tr>
  <tr> 
    <td width="121" class="textoClave">Rut</td>
    <td width="167"> <input onfocus='focusLanguage(this)' onblur='blurLanguage(this)' name="username" type="text" onKeyPress="return NumCheck(event,this);"  class="input" id="username"> 
    </td>
  </tr>
  <tr> 
    <td class="textoClave">Contrase&ntilde;a</td>
    <td><input onfocus='focusLanguage(this)' onblur='blurLanguage(this)' name="password" type="password" class="input" id="password"></td>
  </tr>
  <tr align="center"> 
    <td colspan="2" class="BottomTabla">
	<script>
	document.write("<input name=\"Submit\" type=\"submit\" class=\"boton\" value=\"Entrar\" onClick=\"return valida(LoginForm)\">");
	</script>
      </td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
</BODY>
</HTML>


