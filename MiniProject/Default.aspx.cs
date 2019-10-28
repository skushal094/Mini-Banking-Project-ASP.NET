using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MiniProject
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DBBanking.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["email"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select email from [login] where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if(dr.Read())
            {
                Response.Cookies["email"].Value = TextBox1.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Page page = HttpContext.Current.Handler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Sorry, Email or Password you entered does not match.');", true);
                ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "location.reload();", true);
            }
            dr.Close();
            con.Close();
        }
    }
}