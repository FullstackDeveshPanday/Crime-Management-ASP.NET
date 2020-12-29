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
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = new SqlConnection(@"Data source=.\sqlexpress; Integrated Security=true; Initial Catalog=Crime;");
                cn.Open();
                SqlDataAdapter sde = new SqlDataAdapter("Select * from CaseRecord", cn);
                DataSet ds = new DataSet();
                sde.Fill(ds);
                DataGrid1.DataSource = ds;
                DataGrid1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("Error..!" + ex.Message);
            }
        }
        

    }
}