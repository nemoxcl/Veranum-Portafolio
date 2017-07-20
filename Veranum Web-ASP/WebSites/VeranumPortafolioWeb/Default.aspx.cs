﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.Script.Serialization;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string apiUrl = "http://www.mindicador.cl/api";
        string jsonString = "{}";
        WebClient http = new WebClient();
        JavaScriptSerializer jss = new JavaScriptSerializer();

        http.Headers.Add(HttpRequestHeader.Accept, "application/json");
        jsonString = http.DownloadString(apiUrl);
        var indicatorsObject = jss.Deserialize<Dictionary<string, object>>(jsonString);

        Dictionary<string, Dictionary<string, string>> dailyIndicators = new Dictionary<string, Dictionary<string, string>>();

        int i = 0;
        foreach (var key in indicatorsObject.Keys.ToArray())
        {
            var item = indicatorsObject[key];

            if (item.GetType().FullName.Contains("System.Collections.Generic.Dictionary"))
            {
                Dictionary<string, object> itemObject = (Dictionary<string, object>)item;
                Dictionary<string, string> indicatorProp = new Dictionary<string, string>();

                int j = 0;
                foreach (var key2 in itemObject.Keys.ToArray())
                {
                    indicatorProp.Add(key2, itemObject[key2].ToString());
                    j++;
                }

                dailyIndicators.Add(key, indicatorProp);
            }
            i++;
        }

        Session["UF"] = "UF $" + dailyIndicators["uf"]["valor"];
        Session["Dolar"] = " - DOLAR $" + dailyIndicators["dolar"]["valor"];
        Session["Euro"] = " - EURO €" + dailyIndicators["euro"]["valor"];
    }
}