<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lista_reservas.aspx.cs" Inherits="intranet_lista_reservas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Reservas</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="css/estilos.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery-3.2.1.min.js"></script>
<SCRIPT language="JavaScript" src="js/funciones.js"></SCRIPT>
</head>

<body>
<form name="form1" method="post" action="">
  <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" class="orillaMain">
    <tr valign="top"> 
      <td height="50" colspan="2"><!-- #include file="menu.html" --></td>
    </tr>
    <tr> 
      <td align="center" valign="top">

	    <div class="container">
            <table class="table table-bordered table-responsive">
                <thead>
                    <tr class="success">
                        <th>Id Reserva</th>
                        <th>Rut</th>
                        <th>Nombre</th>
                        <th>Apellido Paterno</th>
                        <th>Fecha Ingreso</th>
                        <th>Fecha Salida</th>
                        <th>Estado de Reserva</th>
                    </tr>
                </thead>
                <!-- asp:Repeater es el encargado de realizar el for each ademas la etiqueta ItemTemplate es requerida-->
                <asp:Repeater ID="rptReserva" runat="server">
                    <ItemTemplate>
                        <tr>
                            <!-- los se cargan segun la variable Eval que debe tener el mismo 
                                nombre con que la entrega la query-->
                            <td width="*"><%# Eval("id_reserva") %></td>
                            <td width="*"><%# Eval("rut") %></td>
                            <td width="*"><%# Eval("nombre") %></td>
                            <td width="*"><%# Eval("apellido_pa") %></td>
                            <td width="*"><%# Eval("fecha_ingreso") %></td>
                            <td width="*"><%# Eval("fecha_salida") %></td>
                            <td width="*"><%# Eval("estado reserva") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
      </td>
    </tr>
  </table>
</form>
</body>
</html>

