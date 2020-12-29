using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crime_Management
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Logout(object sender, EventArgs e)
        {
            if (Session["email"] != null && Session["name"] !=null)
            {
                
                Session.RemoveAll();
               // Response.Redirect("/index.aspx");
                Response.Write("<script>window.open('index.aspx')</script>");
            }
        }
    }
}