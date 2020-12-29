using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Crime_Management.Admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AdminLogin(object sender, EventArgs e)
        {
            try
            {

                SqlConnection cn = new SqlConnection(@"Data source=.\sqlexpress; Integrated Security=true; Initial Catalog=Crime;");
                string uid = TextBox21.Text;
                string pass = TextBox22.Text;
                cn.Open();
                string Query = "select * from register where email='" + uid + "' and password='" + pass + "'"; ;
                SqlCommand cmd = new SqlCommand(Query, cn);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Write("<script>alert('Hello user')</script>");
                    //Response.Write("<script>window.location.href='Applicant/welcome.aspx' </script>");
                    Response.Redirect("Dashboard.aspx");
                    Session["email"] = TextBox21.Text;
                    Response.Write(Session["email"]);
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error..!" + ex.Message);
            }
        }
    }
}