using System;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace TP_5
{
    public partial class AjoutCondidat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GererConnection.isDejaAuthentifier(this);
                GererConnection.RemplirGrid(GridView1);
            }
        }

        protected void Ajouter_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(GererConnection.conString);
            using (connection)
            {
                connection.Open();
                if ((int)new SqlCommand($"select count(*) from Condidat where codeCand={CodeCand.Text}",connection).ExecuteScalar()==1)
                {
                    ErrorMessage.Text = "CodeCand deja Exist";
                    return;
                }
                if((int)new SqlCommand($"select count(*) from Session where numSession={NumSession.Text}", connection).ExecuteScalar() != 1)
                {
                    ErrorMessage.Text = "Session N'exite Pas";
                    return;
                }
                if(!new Regex(@"^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$").IsMatch(DateInscription.Text))
                {
                    ErrorMessage.Text = "date doit etre sous format aaaa-mm-jj";
                    return;
                }
                new SqlCommand($"insert into Condidat values(@code,@nom,@date,@numSession,@nmSession)", connection)
                {
                    Parameters =
                    {
                        new SqlParameter("@code",CodeCand.Text),
                        new SqlParameter("@nom",NomCand.Text),
                        new SqlParameter("@date",DateInscription.Text),
                        new SqlParameter("@numSession",NumSession.Text),
                        new SqlParameter("@nmSession",NomSociete.Text),
                    }
                }.ExecuteNonQuery();
                ErrorMessage.Text = "Ajout Effectue";
            }
            GererConnection.RemplirGrid(GridView1);
        }

        protected void serializer_Click(object sender, EventArgs e)
        {
            GererConnection.Serializer();
        }
    }
}