using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_5
{
    public class GererConnection
    {
        static string conString = ConfigurationManager.ConnectionStrings["monConnection"].ConnectionString;
        static SqlConnection connection;

        public static bool isEtulisateurExiste(string nom, string motPass)
        {
            using (connection = new SqlConnection(conString))
            {
                connection.Open();
                return (int)new SqlCommand($"select count(*) from Utilisateur where nom='{nom}' and [password]='{motPass}'", connection).ExecuteScalar() == 1 ? true : false;
            }
        }

        public static void isDejaAuthentifier(Page page)
        {
            if (page.Session["login"] == null)
                page.Response.Redirect("Login.aspx");
        }

        public static void isAdministrateur(Page page)
        {
            isDejaAuthentifier(page);
            dynamic utilisateur = page.Session["login"];
            using (connection = new SqlConnection(conString))
            {
                connection.Open();
                if (!(utilisateur.nom == "Admin" &&
                    utilisateur.password == new SqlCommand("select password from Utilisateur where nom='Admin'", connection).ExecuteScalar().ToString())) {
                    page.Response.Redirect("~/Login.aspx");
                }
            }
        }
        public static void RemplirGrid(GridView gridView)
        {
            connection = new SqlConnection(conString);
            DataTable condidat = new DataTable();
            new SqlDataAdapter("select * from condidat", connection).Fill(condidat);
            gridView.DataSource = condidat;
            gridView.DataBind();
        }
        public static void SupprimerCondidat(string CodeCand)
        {
            using(connection=new SqlConnection(conString))
            {
                connection.Open();
                new SqlCommand($"delete condidat where codeCand=@CodeCand",connection) { 
                    Parameters = 
                    {
                        new SqlParameter("@CodeCand",CodeCand) 
                    } 
                }.ExecuteNonQuery();
            }
        }
        public static void ModifierCondidat(dynamic data)
        {
            using (connection = new SqlConnection(conString))
            {
                connection.Open();
                new SqlCommand($"update condidat set NomCand=@NomCand,DateInscription=@DateIns,NumSession=@NumSession,NomSociete=@NomSociete where codeCand=@CodeCand")
                {
                    Parameters =
                    {
                        new SqlParameter("@CodeCand",data.CodeCand),
                        new SqlParameter("@NomCand",data.NomCand),
                        new SqlParameter("@DateIns",data.DateIns),
                        new SqlParameter("@NumSession",data.NumSession),
                        new SqlParameter("@NomSociete",data.NomSociete),
                    }
                }.ExecuteNonQuery();
            }
        }
    }
}