using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Configuration;

public partial class intranet_lista_cliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["Nombre"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                string connectionString = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                string sql = "SELECT a.\"id_pasajero\", a.\"rut\" ,a.\"nombre\", a.\"contrasena\", a.\"apellido_pa\", a.\"apellido_ma\", a.\"telefono\",a.\"email\",a.\"direccion\",a.\"fecha_nac\", r.\"nombre\" as \"rol\" from \"pasajeros\" a INNER JOIN \"roles\" r ON a.\"id_rol\" = r.\"id_rol\" WHERE a.\"id_rol\" = 3 ORDER BY a.\"id_pasajero\"";
                _connection.Open();
                OracleCommand commad = new OracleCommand(sql, _connection);
                rpTableListarCliente.DataSource = commad.ExecuteReader();
                rpTableListarCliente.DataBind();
            }
        }
        catch (Exception)
        {

            throw;
        }
    }
}