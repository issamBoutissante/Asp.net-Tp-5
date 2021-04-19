using System;
using System.Web.UI.WebControls;

namespace TP_5
{
    public partial class GestionCondidat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GererConnection.isDejaAuthentifier(this);
                 GererConnection.RemplirGrid(GridView1);
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GererConnection.RemplirGrid(GridView1);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GererConnection.SupprimerCondidat(((Label)GridView1.Rows[e.RowIndex].FindControl("CodeCand")).Text);
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
                CodeCand= ((Label)GridView1.Rows[e.RowIndex].FindControl("CodeCand")).Text,
                NomCand=((TextBox)GridView1.Rows[e.RowIndex].FindControl("NomCand")).Text,
                DateIns= ((TextBox)GridView1.Rows[e.RowIndex].FindControl("DateInscription")).Text,
                NumSession= ((TextBox)GridView1.Rows[e.RowIndex].FindControl("NumSession")).Text,
                NomSociete= ((TextBox)GridView1.Rows[e.RowIndex].FindControl("NomSociete")).Text
            });
            GridView1.EditIndex = -1;
            GererConnection.RemplirGrid(GridView1);
        }
    }
}