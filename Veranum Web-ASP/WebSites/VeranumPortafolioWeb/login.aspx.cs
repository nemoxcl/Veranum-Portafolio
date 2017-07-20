using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMensaje.Visible = false;
        myPanel.Visible = false;
        if (Request.QueryString["nombre"] != null && Request.QueryString["password"] != null)
        {
            string username = Request.QueryString["nombre"];
            string password = Request.QueryString["password"];
            string connectionString = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString;
            OracleConnection _connection = new OracleConnection();
            _connection.ConnectionString = connectionString;
            string sql = String.Format("SELECT a.\"id_pasajero\" from \"pasajeros\" a WHERE a.\"rut\"='{0}' AND a.\"contrasena\"='{1}'  ORDER BY a.\"id_pasajero\"", username, password);
            _connection.Open();
            OracleCommand commad = new OracleCommand(sql, _connection);
            commad.ExecuteReader();
            if (commad.ExecuteReader().Read() == true)
            {
                Session["Nombre"] = username;
                Session["IdPasajero"] = commad.ExecuteScalar().ToString();
                switch (Session["pagina"].ToString())
                {
                    case "1":
                        Response.Redirect("habitacion_det.aspx");
                        break;
                    case "2":
                        Response.Redirect("habitacion_det2.aspx");
                        break;
                    case "3":
                        Response.Redirect("habitacion_det3.aspx");
                        break;
                    case "4":
                        Response.Redirect("confirmar.aspx");
                        break;
                    default:
                        Response.Redirect("Default.aspx");
                        break;
                }
               
            }
            else
            {
                lblMensaje.Text = String.Format("Usuario: {0} no se encuentra registrado.",username);
                lblMensaje.Visible = true;
                myPanel.Visible = true;
            }
        }
    }
}