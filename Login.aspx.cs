using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_5
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["login"] != null)
                    Response.Redirect("Acueil.aspx");
            }
        }

        protected void SeConnecter_Click(object sender, EventArgs e)
        {
            if (GererConnection.isEtulisateurExiste(Nom.Text, password.Text))
            {
                Session["login"] = new{ 
                    nom = Nom.Text,
                    password=password.Text
                };
                Response.Redirect("~/Acueil.aspx");
            }
            ErrorMessage.Text = "incorrect info !!!";
        }
    }
}