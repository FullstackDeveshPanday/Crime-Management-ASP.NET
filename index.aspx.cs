using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Crime_Management
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login(object sender, EventArgs e)
        {
            try
            {

                SqlConnection cn = new SqlConnection(@"Data source=.\sqlexpress; Integrated Security=true; Initial Catalog=Crime;");
                string uid = TextBox5.Text;
                string pass = TextBox6.Text;
                string Query = "select * from register where email='" + uid + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(Query, cn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                cn.Close();

                if (dt.Rows.Count > 0)
                {

                    Session["email"] = Convert.ToString(dt.Rows[0]["email"]);
                    Session["name"] = Convert.ToString(dt.Rows[0]["name"]);
                    Session["id"] = Convert.ToString(dt.Rows[0]["id"]);
                    //Response.Write(Session["id"]);
                    //Response.Redirect("index.aspx");
                    //Response.Write(Session["email"]);
                    //Session["id"] = dt.Rows[0];
                    //Session.RemoveAll();
                }
                else
                {
                    Label1.Text = "Your email and Password is incorrect";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error..!" + ex.Message);
            }
        }

    }
}