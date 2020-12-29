using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Crime_Management.Applicant
{
    public partial class welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Applicant(object sender, EventArgs e)
        {
           
            
            try
            {
                SqlConnection cn = new SqlConnection(@"Data source=.\sqlexpress; Integrated Security=true; Initial Catalog=Crime;");
                cn.Open();
                string Query = "insert into CaseRecord(name,contact,casetype,address,filecase) values(@Name,@Contact,@Casetype,@Address,@Filecase)";
                SqlCommand cmd = new SqlCommand(Query, cn);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Contact", TextBox2.Text); 
                cmd.Parameters.AddWithValue("@Casetype", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Filecase", TextBox4.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Label2.Text = "Case file Saved Successfully";
                    //Response.Write("<script>alert('Your Case In Under Investigation ...!')</script>");
                    //Response.Redirect("../index.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error..!" + ex.Message);
            }
        }
    }
}