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
    public partial class Checkout : System.Web.UI.Page
    {
        string url;
        decimal grandTotal = 0;
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlDataSource1.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Courses\PROG37721\VisualStudioProjects\FINALPROJECT\FINALPROJECT\App_Data\RestaurantDB.mdf;Integrated Security=True";
        
            string s2 = System.Web.HttpContext.Current.User.Identity.Name;
            Response.Cookies["uname"].Value = s2;
            grandTotal = 0;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal rowTotal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "price")) * Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "quantity"));
                grandTotal = grandTotal + rowTotal;


            }
            Response.Cookies["price"].Value = grandTotal.ToString();
            txtTotalPrice.Text = grandTotal.ToString();

           // HyperLink1.ImageUrl = "~/img/str/buttons/checkout.jpg";
           // HyperLink1.NavigateUrl = "Thank You! Your order is being processed." + "&item_name=Total of Cart&item_number=132&amount=" + grandTotal;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.paypal.com/ca/signup/account");
        }
    }
}