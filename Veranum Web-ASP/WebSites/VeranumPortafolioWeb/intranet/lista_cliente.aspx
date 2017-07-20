<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lista_cliente.aspx.cs" Inherits="intranet_lista_cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Clientes</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="css/estilos.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery-3.2.1.min.js"></script>
<SCRIPT language="JavaScript" src="js/funciones.js"></SCRIPT>
</head>

<body>
<form name="form1" method="post" action="">
  <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
    <tr valign="top"> 
      <td height="50" colspan="2"><!-- #include file="menu.html" --></td>
    </tr>
  </table>
    <br />
    <div class="container">
        <table class="table table-bordered table-responsive">
            <thead>
                <tr class="success">
                    <th>Id Pasajero</th>
                    <th>Rut</th>
                    <th>Nombre</th>
                    <th>Contraseña</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>Dirección</th>
                    <th>Fecha Nacimiento</th>
                    <th>Perfiles</th>
                </tr>
            </thead>
            <asp:Repeater ID="rpTableListarCliente" runat="server">
                <ItemTemplate>
                    <tr>
                        <!-- los se cargan segun la variable Eval que debe tener el mismo 
                            nombre con que la entrega la query-->
                        <td width="*"><%# Eval("id_pasajero") %></td>
                        <td width="*"><%# Eval("rut") %></td>
                        <td width="*"><%# Eval("nombre") %></td>
                        <td width="*"><%# Eval("contrasena") %></td>
                        <td width="*"><%# Eval("apellido_pa") %></td>
                        <td width="*"><%# Eval("apellido_ma") %></td>
                        <td width="*"><%# Eval("telefono") %></td>
                        <td width="*"><%# Eval("email") %></td>
                        <td width="*"><%# Eval("direccion") %></td>
                        <td width="*"><%# Eval("fecha_nac") %></td>
                        <td width="*"><%# Eval("rol") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</form>
</body>
</html>
