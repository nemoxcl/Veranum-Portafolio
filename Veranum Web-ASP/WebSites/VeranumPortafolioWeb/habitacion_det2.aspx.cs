using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class habitacion_det2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session["pagina"] = "2";
            Session["Percio"] = 45000;

            if (Session["Nombre"] == null)
            {
                Response.Redirect("login.aspx", false);
            }
            else
            {
                if (Request.Form["arrival"] != null)
                {
                    Session["hotel"] = Request.Form["hotel"];
                    Session["arrival"] = Request.Form["arrival"];
                    Session["departure"] = Request.Form["departure"];
                    Session["codigoConvenio"] = Request.Form["codigoConvenio"];
                    Session["cantidadPasajeros"] = Request.Form["cantidadPasajeros"];
                    Response.Redirect("confirmar.aspx", false);
                }
            }

        }
        catch (Exception)
        {

            throw;
        }
    }
}