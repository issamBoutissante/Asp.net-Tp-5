using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_5
{
    public partial class GestionCondidat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GererConnection.RemplirGrid(GridView1);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //GridView1.EditIndex = e.NewEditIndex;
            //GererConnection.RemplirGrid(GridView1);
            Response.Redirect("Login.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GererConnection.SupprimerCondidat(((TextBox)GridView1.Rows[e.RowIndex].FindControl("codeCand")).Text);
            GererConnection.RemplirGrid(GridView1);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GererConnection.RemplirGrid(GridView1);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GererConnection.ModifierCondidat(
                new 
            {
                NomCand=((TextBox)GridView1.Rows[e.RowIndex].FindControl("NomCand")).Text,
                CodeCond= ((TextBox)GridView1.Rows[e.RowIndex].FindControl("CodeCand")).Text,
                DateIns= ((TextBox)GridView1.Rows[e.RowIndex].FindControl("DateInstitition")).Text,
                NumSession= ((TextBox)GridView1.Rows[e.RowIndex].FindControl("NumSession")).Text,
                NomSociete= ((TextBox)GridView1.Rows[e.RowIndex].FindControl("NomSociete")).Text
            });
            GererConnection.RemplirGrid(GridView1);
        }
    }
}