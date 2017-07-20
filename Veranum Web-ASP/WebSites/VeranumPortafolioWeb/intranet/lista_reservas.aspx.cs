using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class intranet_lista_reservas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
            string sql = "SELECT APP.\"reservas\".\"id_reserva\", APP.\"pasajeros\".\"rut\", APP.\"pasajeros\".\"nombre\", APP.\"pasajeros\".\"apellido_pa\", APP.\"reservas\".\"fecha_ingreso\", APP.\"reservas\".\"fecha_salida\", APP.\"estado_reservas\".\"nombre\" AS \"estado reserva\" FROM APP.\"reservas\" INNER JOIN APP.\"estado_reservas\" ON APP.\"reservas\".\"id_reserva_estado\" = APP.\"estado_reservas\".\"id_reserva_estado\" INNER JOIN APP.\"pasajeros\" ON APP.\"reservas\".\"id_pasajero\" = APP.\"pasajeros\".\"id_pasajero\"";
            _connection.Open();
            OracleCommand commad = new OracleCommand(sql, _connection);
            rptReserva.DataSource = commad.ExecuteReader();
            rptReserva.DataBind();
        }
    }
}