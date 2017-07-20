using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class intranet_lista_ofertas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Nombre"] == null)
        {
            Response.Redirect("Default.aspx");
        }else
        {
            string connectionString = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString;
            OracleConnection _connection = new OracleConnection();
            _connection.ConnectionString = connectionString;
            string sql = "Select * From \"oferta\"";
            _connection.Open();
            OracleCommand commad = new OracleCommand(sql, _connection);
            rpTableListarOfertas.DataSource = commad.ExecuteReader();
            rpTableListarOfertas.DataBind();
        }
    }
}