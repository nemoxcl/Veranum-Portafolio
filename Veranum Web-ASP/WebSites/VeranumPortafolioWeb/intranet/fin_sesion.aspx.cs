using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class intranet_fin_sesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Nombre"] = null;
        if (Session["Nombre"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
}