using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_5
{
    public partial class Acueil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GererConnection.isDejaAuthentifier(this);
            }
        }

        protected void Deconnection_Click(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("~/Login.aspx");
        }
    }
}