using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class intranet_valida : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Request.Form["username"];
        string password = Request.Form["password"];
        string connectionString = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString;
        OracleConnection _connection = new OracleConnection();
        _connection.ConnectionString = connectionString;
        string sql = String.Format("SELECT a.\"id_pasajero\", a.\"rut\" ,a.\"nombre\", a.\"contrasena\", a.\"apellido_pa\", a.\"apellido_ma\", a.\"telefono\",a.\"email\",a.\"direccion\",a.\"fecha_nac\" from \"pasajeros\" a WHERE a.\"rut\"='{0}' AND a.\"contrasena\"='{1}' AND  a.\"id_rol\"<>3 ORDER BY a.\"id_pasajero\"", username, password);
        _connection.Open();
        OracleCommand commad = new OracleCommand(sql, _connection);
        commad.ExecuteReader();
        if (commad.ExecuteReader().Read() == true)
        {
            Session["Nombre"] = username;
            Response.Redirect("Main.aspx");
        }
        else
        {

            Response.Redirect("default.aspx?error=Nombre o usuario incorrecto");
        };
    }
}