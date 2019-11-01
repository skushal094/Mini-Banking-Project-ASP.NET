using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MiniProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DBBanking.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["email"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            string query = "select balance from [login] where email='" + Request.Cookies["email"].Value + "'";
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                myBalance.Text = dr["balance"].ToString();
            }
            else
            {
                myBalance.Text = "NA";
            }
            dr.Close();
            con.Close();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Cookies["email"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Default.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            string query = "update [login] set balance = balance + " + TextBox1.Text + " where email='" + Request.Cookies["email"].Value + "'";
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Home.aspx");
        }
    }
}