using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class intranet_Lista_Personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnBuscar_Click1(object sender, EventArgs e)
    {
        try
        {
            if (Session["Nombre"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else { 
            string rut = txtRut.Text;
            string connectionString = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString;
            OracleConnection _connection = new OracleConnection();
            _connection.ConnectionString = connectionString;
            string sql = String.Format("SELECT a.\"id_pasajero\", a.\"rut\" ,a.\"nombre\", a.\"contrasena\", a.\"apellido_pa\", a.\"apellido_ma\", a.\"telefono\",a.\"email\",a.\"direccion\",a.\"fecha_nac\", r.\"nombre\" as \"rol\" from \"pasajeros\" a INNER JOIN \"roles\" r ON a.\"id_rol\" = r.\"id_rol\" WHERE a.\"id_rol\" != 3 AND a.\"rut\" LIKE '%{0}%' ORDER BY a.\"id_pasajero\"", rut);
            _connection.Open();
            OracleCommand commad = new OracleCommand(sql, _connection);
            bool excuto = commad.ExecuteReader().Read();
            if (excuto == false)
            {
                lblMensaje.Enabled = true;
                lblMensaje.Visible = true;
                lblMensaje.Text = String.Format("No hay usuarios con el rut: {0}", rut);
                rptTableBuscar.DataSource = commad.ExecuteReader();
                rptTableBuscar.DataBind();
            }
            else
            {
                lblMensaje.Enabled = false;
                lblMensaje.Visible = false;
                lblMensaje.Text = string.Empty;
                rptTableBuscar.DataSource = commad.ExecuteReader();
                rptTableBuscar.DataBind();
            }

        }
        }
        catch (Exception ex)
        {

            lblMensaje.Text = ex.ToString();
        }
    }
}