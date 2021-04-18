using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_5
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AcueilPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Acueil.aspx");

        }

        protected void Administrateur_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Administrateur.aspx");
        }

        protected void AjouterCondidat_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AjoutCondidat.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GestionCondidat.aspx");
        }
    }
}