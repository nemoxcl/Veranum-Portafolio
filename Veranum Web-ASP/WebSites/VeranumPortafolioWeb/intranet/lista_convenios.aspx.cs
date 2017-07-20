using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class intranet_lista_convenios : System.Web.UI.Page
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
                string sql = "select \"id_convenios\",\"convenio_string\",\"empresa\",\"descuento\" from \"convenios_empresas\"";
                _connection.Open();
                OracleCommand commad = new OracleCommand(sql, _connection);
                rpTableListarConvenios.DataSource = commad.ExecuteReader();
                rpTableListarConvenios.DataBind();
            }
        }
        catch (Exception)
        {

            throw;
        }
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        try
        {
            if(Session["generarClave"]!=null)
            {
                string convenio_string = txtClaveConvenios.Text;
                string empresa = txtEmpresa.Text;
                string descuentoString = txtDescuento.Text;
                int descuento = int.Parse(descuentoString);
                string connectionString = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                string sqlBuscarClave = String.Format("SELECT * FROM \"convenios_empresas\" WHERE \"convenio_string\" = '{0}' and \"empresa\" = '{1}'", txtClaveConvenios.Text.TrimStart().TrimEnd(), txtEmpresa.Text.TrimEnd().TrimStart());
                _connection.Open();
                OracleCommand commadBuscarClave = new OracleCommand(sqlBuscarClave, _connection);
                if (commadBuscarClave.ExecuteReader().Read() == false)
                {
                    String sql = "insert into \"convenios_empresas\" (\"convenio_string\",\"empresa\",\"descuento\") values (:convenio_string, :empresa, :descuento)";
                    OracleCommand commad = new OracleCommand(sql, _connection);
                    commad.Parameters.Add(new OracleParameter(":convenio_string", convenio_string));
                    commad.Parameters.Add(new OracleParameter(":empresa", empresa));
                    commad.Parameters.Add(new OracleParameter(":descuento", descuento));
                    commad.ExecuteNonQuery();
                    lblMensajeError.Text = String.Format("El convenio: {0} de la empresa {1} fue agregado con exito", convenio_string, empresa);
                }
                else
                {
                    lblMensajeError.Text = String.Format("El convenio: {0} o la empresa {1} ya existe", convenio_string, empresa);
                }
            }
            else
            {
                lblMensajeError.Text = "Debe generar una clave primero";
            }
        
            
        }
        catch (Exception)
        {

            throw;
        }
    }

    public string GenerarClave()
    {
        Random obj = new Random();
        string posibles = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!\"#$%&/()=?¡¨*[]";
        int longitud = posibles.Length;
        char letra;
        int longitudnuevacadena = 10;
        string nuevacadena = "";
        for (int i = 0; i < longitudnuevacadena; i++)
        {
            letra = posibles[obj.Next(longitud)];
            nuevacadena += letra.ToString();
        }
        return nuevacadena;
    }

    protected void btnGenerar_Click(object sender, EventArgs e)
    {
        txtClaveConvenios.Text = GenerarClave();
        txtClaveConvenioNew.Text = GenerarClave();
        Session["generarClave"] = "1";
    }
}