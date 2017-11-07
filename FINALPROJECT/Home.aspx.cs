using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace FINALPROJECT
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlDataSource1.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Courses\PROG37721\VisualStudioProjects\FINALPROJECT\FINALPROJECT\App_Data\RestaurantDB.mdf;Integrated Security=True";
        }
    }
}