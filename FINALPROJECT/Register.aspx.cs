using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.IO;
using System.Data.SqlClient;
using System.Web.Security;

namespace FINALPROJECT
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            string usr = Request.Cookies["uname"].Value;
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Courses\PROG37721\VisualStudioProjects\FINALPROJECT\FINALPROJECT\App_Data\RestaurantDB.mdf;Integrated Security=True");
            string cmd = "select * from UserDetail ";
            SqlCommand command = new SqlCommand(cmd, conn);
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                SqlDataReader dtr = command.ExecuteReader();
                while (dtr.Read())
                {
                    if (dtr[2].ToString().Equals(usr))
                    {
                        TextBox1.Text = dtr[0].ToString();
                        TextBox2.Text = dtr[1].ToString();
                        TextBox7.Text = dtr[2].ToString();
                        TextBox4.Text = dtr[3].ToString();
                        TextBox5.Text = dtr[4].ToString();
                        TextBox6.Text = dtr[5].ToString();
                        TextBox3.Text = dtr[6].ToString();

                    }
                    else continue;

                }
            }
             */
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    string Email, UserId;
                    Email = TextBox3.Text;
                    UserId = TextBox4.Text;
                    SqlConnection con = new SqlConnection( @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Courses\PROG37721\VisualStudioProjects\FINALPROJECT\FINALPROJECT\App_Data\RestaurantDB.mdf;Integrated Security=True");
                   // string valCmd = "select UserId,Email from UserDetail";
                   // SqlCommand CMD = new SqlCommand(valCmd, con);
                    con.Open();
                    string cmd = "insert into UserDetail values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox3.Text + "') ";
                    SqlCommand Cmd = new SqlCommand(cmd, con);

                    Cmd.ExecuteNonQuery();
                    Cmd.CommandText = "insert into Login values('" + TextBox4.Text + "','" + TextBox5.Text + "')";

                    Cmd.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception)
                {
                }
                Response.Cookies["uname"].Value = TextBox4.Text;
                Response.Cookies["pwd"].Value = TextBox5.Text;
                Response.Redirect("login1.aspx");
               // FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);

            }
        }

        protected void val(object source, ServerValidateEventArgs args)
        {
            SqlConnection valcon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Courses\PROG37721\VisualStudioProjects\FINALPROJECT\FINALPROJECT\App_Data\RestaurantDB.mdf;Integrated Security=True");
            string valcom = "select * from Login";
            SqlCommand ValCOM = new SqlCommand(valcom, valcon);
            valcon.Open();
            if (valcon.State == ConnectionState.Open)
            {
                SqlDataReader valrd = ValCOM.ExecuteReader();
                while (valrd.Read())
                {
                    if (valrd[0].ToString().Equals(TextBox4.Text))
                    { args.IsValid = false; }
                    else { args.IsValid = true; }
                }



            }

            valcon.Close();
        }
    }
}