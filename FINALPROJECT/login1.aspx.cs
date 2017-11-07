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
using System.Web.Security;

namespace FINALPROJECT
{
    public partial class login1 : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();*/

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Courses\PROG37721\VisualStudioProjects\FINALPROJECT\FINALPROJECT\App_Data\RestaurantDB.mdf;Integrated Security=True");
            string s = "select * from Login";
            SqlCommand cmd = new SqlCommand(s, conn);
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                SqlDataReader dtr;
                dtr = cmd.ExecuteReader();
                while (dtr.Read())
                {
                    if (dtr[0].ToString().Equals(txtUser.Text) && dtr[1].ToString().Equals(txtPass.Text))
                    {


                        Response.Cookies["uname"].Value = txtUser.Text;
                        Response.Cookies["pwd"].Value = txtPass.Text;
                        Response.Redirect("Home.aspx");
                       // FormsAuthentication.RedirectFromLoginPage(txtUser.Text, false);

                    }
                    else
                    {
                        Label4.Text = "Your Credentials Are Incorrect";
                    }
                }

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}
