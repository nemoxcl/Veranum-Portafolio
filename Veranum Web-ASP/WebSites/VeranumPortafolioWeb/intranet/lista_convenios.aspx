<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lista_convenios.aspx.cs" Inherits="intranet_lista_convenios" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Convenios</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="css/estilos.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery-3.2.1.min.js"></script>
<SCRIPT language="JavaScript" src="js/funciones.js"></SCRIPT>
</head>

<body>
<form name="form1" runat="server">
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
                    <th>ID Descuento</th>
                    <th>Convenio Clase</th>
                    <th>Empresa</th>
                    <th>Descuento</th>
                </tr>
            </thead>
            <asp:Repeater ID="rpTableListarConvenios" runat="server">
                <ItemTemplate>
                    <tr>
                        <!-- los se cargan segun la variable Eval que debe tener el mismo 
                            nombre con que la entrega la query-->
                        <td width="*"><%# Eval("id_convenios") %></td>
                        <td width="*"><%# Eval("convenio_string") %></td>
                        <td width="*"><%# Eval("empresa") %></td>
                        <td width="*"><%# Eval("descuento") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
	    </div>
            <div class="container">
                <asp:TextBox ID="txtClaveConvenioNew" runat="server" Enabled="false"></asp:TextBox>
             <asp:Button ID="btnGenerar" runat="server" class="btn btn-primary" Text="Generar Codigo" OnClick="btnGenerar_Click" />
         </div>
          <br />
          <br />
          <br />
          <br />
        <div class="container">
            <asp:Label ID="lblClaveConvenio" runat="server" Text="Claves Convenios"></asp:Label>
            <asp:TextBox ID="txtClaveConvenios" runat="server"></asp:TextBox>
            <asp:Label ID="lblEmpresa" runat="server" Text="Empresa"></asp:Label>
            <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>
            <asp:Label ID="lblDescuento" runat="server" Text="Descuento"></asp:Label>
            <asp:TextBox ID="txtDescuento" runat="server"></asp:TextBox>
            <asp:Button ID="btnEliminar" runat="server" class="btn btn-primary" Text="Agregar Convenio" OnClick="btnEliminar_Click" />
            <div>
                <asp:Label ID="lblMensajeError" runat="server" Text=""></asp:Label>
            </div>
        </div>
       
        </tr>
  </table>
</form>
</body>
</html>

