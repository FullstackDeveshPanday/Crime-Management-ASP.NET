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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            try
            {
                String pass = TextBox4.Text;
                if (pass == "")
                {
                    Response.Write("<script>alert('Password Is blank')</script>");
                }

                SqlConnection cn = new SqlConnection(@"Data source=.\sqlexpress; Integrated Security=true; Initial Catalog=Crime;");
                cn.Open();
                string Query = "insert into register (name,email,password,usertype,casetype,address) values(@Name,@Email,@Password,@Usertype,@casetype,@Address)";
                SqlCommand cmd = new SqlCommand(Query, cn);
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Usertype", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@casetype", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox1.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Regiseter Successfully...!')</script>");
                    Response.Write("<script>window.open('index.aspx')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error..!" + ex.Message);
            }
        }
    }
}