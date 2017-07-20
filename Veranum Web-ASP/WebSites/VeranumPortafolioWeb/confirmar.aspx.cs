using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class confirmar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        try
        {
            
            if (Session["Nombre"] != null)
            {
                
                Session["Descuento"] = 0;
                string idHotel = Session["hotel"].ToString();
                int precio_total = 0;
                string idHabitacion = Session["pagina"].ToString();
                if (idHotel != null && idHabitacion != null)
                {
                    DateTime fecha_ingreso = DateTime.Parse(Session["arrival"].ToString());
                    DateTime fecha_salida = DateTime.Parse(Session["departure"].ToString());
                    string cantidad = Session["cantidadPasajeros"].ToString();

                    string codigoConvenio = Session["codigoConvenio"].ToString().TrimEnd().TrimStart();
                    int precio = int.Parse(Session["Percio"].ToString());

                    TimeSpan x = fecha_salida.Subtract(fecha_ingreso);
                    int dias = x.Days;
                    if (dias >= 1)
                    {
                        Session["cantidadDias"] = dias;
                        if (codigoConvenio != null)
                        {
                            string connectionString = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString;
                            OracleConnection _connection = new OracleConnection();
                            _connection.ConnectionString = connectionString;
                            string sql = "SELECT \"descuento\" FROM \"convenios_empresas\" WHERE \"convenio_string\" = '" + codigoConvenio + "'";
                            _connection.Open();
                            OracleCommand commad = new OracleCommand(sql, _connection);
                            if (commad.ExecuteReader().Read() == true)
                            {
                                int descuento = int.Parse(commad.ExecuteScalar().ToString());

                                int precioDescuento = (precio * dias) / 100 * descuento;
                                precio_total = (precio * dias) - precioDescuento;
                                Session["Descuento"] = descuento;
                                Session["valorFinal"] = precio_total;


                            }
                            else
                            {
                                Session["Descuento"] = 0;
                                precio_total = precio * dias;
                                Session["valorFinal"] = precio_total;
                            }

                            Form1.Action = "reservar.aspx";
                            Session["Boton"] = "Reservar";
                            
                        }
                    }
                    else
                    {
                        Session["MensajeDias"] = String.Format("Error debe hospedarse al menos un dia Fecha de Arribo: {0} | Fecha de Salida: {1}", Session["arrival"].ToString(), Session["departure"].ToString());
                        Session["Boton"] = "Volver";
                        ocultarDetalle.Visible = false;
                        ocultarPrecio.Visible = false;

                        switch (Session["pagina"].ToString())
                        {
                            case "1":
                                Form1.Action = "habitacion_det.aspx";
                                break;
                            case "2":
                                Form1.Action = "habitacion_det2.aspx";
                                break;
                            case "3":
                                Form1.Action = "habitacion_det3.aspx";
                                break;
                        }
                    }

                    
                    switch (Session["pagina"].ToString())
                    {
                        case "1":
                            lblTipoHabitacion.Text = "Single Room";
                            break;
                        case "2":
                            lblTipoHabitacion.Text = "Double Room";
                            break;
                        case "3":
                            lblTipoHabitacion.Text = "Family Room";
                            break;
                    }

                  
                    lblCantidadDias.Text = dias.ToString();
                    lblCantidad.Text = cantidad;
                    lblLLegada.Text = Session["arrival"].ToString();
                    lblSalida.Text = Session["departure"].ToString();
                    lblPrecio.Text = precio_total.ToString();
                    lblDescuento.Text = String.Format("{0}%", Session["Descuento"].ToString());

                }
                //Session["pagina"] = "4";
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        catch (Exception)
        {

            throw;
        }
    }
}