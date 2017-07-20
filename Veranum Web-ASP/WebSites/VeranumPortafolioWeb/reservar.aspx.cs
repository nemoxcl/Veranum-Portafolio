using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reservar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            error.Visible = false;
            exito.Visible = false;
            if (Session["Nombre"] != null && int.Parse(Session["valorFinal"].ToString()) > 0)
            {

                exito.Visible = true;
                string id_pasajero = Session["IdPasajero"].ToString();
                DateTime fecha_ingreso = DateTime.Parse(Session["arrival"].ToString());
                DateTime fecha_salida = DateTime.Parse(Session["departure"].ToString());
                int precio_total = int.Parse(Session["valorFinal"].ToString());
                string connectionString = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                string insert = "INSERT INTO \"reservas\"(\"id_pasajero\",\"id_reserva_estado\",\"fecha_ingreso\",\"fecha_salida\",\"precio_total\") values (:id_pasajero,:id_reserva_estado,:fecha_ingreso,:fecha_salida,:precio_total)";
                _connection.Open();
                OracleCommand commadInsert = new OracleCommand(insert, _connection);
                commadInsert.Parameters.Add(new OracleParameter(":id_pasajero", id_pasajero));
                commadInsert.Parameters.Add(new OracleParameter(":id_reserva_estado", "1"));
                commadInsert.Parameters.Add(new OracleParameter(":fecha_ingreso", fecha_ingreso));
                commadInsert.Parameters.Add(new OracleParameter(":fecha_salida", fecha_salida));
                commadInsert.Parameters.Add(new OracleParameter(":precio_total", precio_total));
                commadInsert.ExecuteNonQuery();
                _connection.Close();
            }
            else
            {
                error.Visible = true;
                lblMensajeErr.Text = "A ocurrido un error favor volver a intentar mas tarde...";
            }
        }
        catch (Exception)
        {
            throw;
        }
    }
}