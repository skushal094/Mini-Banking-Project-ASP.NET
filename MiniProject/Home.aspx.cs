using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["email"] == null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Cookies["email"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Default.aspx");
        }
    }
}