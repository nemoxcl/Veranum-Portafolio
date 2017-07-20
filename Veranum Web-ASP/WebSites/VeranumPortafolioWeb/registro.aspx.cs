using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMensaje.Visible = false;
        myPanel.Visible = false;
        try
        {
            string rut = Request.Form["rut"];
            if (rut != null)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                string sqlBuscarUser = String.Format("SELECT * FROM \"pasajeros\" WHERE \"rut\" = '{0}'", rut);
                _connection.Open();
                OracleCommand commadUserVal = new OracleCommand(sqlBuscarUser, _connection);
                if (commadUserVal.ExecuteReader().Read() == false)
                {
                    string nombre = Request.Form["nombre"];
                    string pass = Request.Form["pass"];
                    string apellidoPa = Request.Form["apellidoPa"];
                    string apellidoMa = Request.Form["apellidoMa"];
                    string email = Request.Form["email"];
                    string telefono = Request.Form["telefono"];
                    string direccion = Request.Form["direccion"];
                    string fechaNacimiento = Request.Form["nacimiento"];
                    DateTime fechaDate = new DateTime();
                    fechaDate = Convert.ToDateTime(fechaNacimiento);
                    String sql = "INSERT INTO \"pasajeros\" (\"rut\", \"nombre\", \"contrasena\", \"apellido_pa\", \"apellido_ma\", \"telefono\", \"email\", \"direccion\", \"fecha_nac\", \"id_rol\" ) values(:rut,:nombre,:contrasena,:apellido_pa,:apellido_ma,:telefono,:email,:direccion,:fecha_nac,:id_rol)";
                    OracleCommand commad = new OracleCommand(sql, _connection);
                    commad.Parameters.Add(new OracleParameter(":rut", rut));
                    commad.Parameters.Add(new OracleParameter(":nombre", nombre));
                    commad.Parameters.Add(new OracleParameter(":contrasena", pass));
                    commad.Parameters.Add(new OracleParameter(":apellido_pa", apellidoPa));
                    commad.Parameters.Add(new OracleParameter(":apellido_ma", apellidoMa));
                    commad.Parameters.Add(new OracleParameter(":telefono", telefono));
                    commad.Parameters.Add(new OracleParameter(":email", email));
                    commad.Parameters.Add(new OracleParameter(":direccion", direccion));
                    commad.Parameters.Add(new OracleParameter(":fecha_nac", fechaDate));
                    commad.Parameters.Add(new OracleParameter(":id_rol", "3"));
                    commad.ExecuteNonQuery();
                    Response.Redirect("login.aspx", false);
                }
                else
                {
                    lblMensaje.Text = String.Format("Rut: {0} se encuentra registrado.", rut);
                    lblMensaje.Visible = true;  /*El usuario no es creado por que ya existe en el sistema*/
                    myPanel.Visible = true;
                }
            }
        }
        catch (Exception)
        {


        }

    }
}