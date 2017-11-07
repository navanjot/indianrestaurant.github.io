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
    public partial class Order : System.Web.UI.Page
    {
        
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlDataSource1.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Courses\PROG37721\VisualStudioProjects\FINALPROJECT\FINALPROJECT\App_Data\RestaurantDB.mdf;Integrated Security=True";
        

        }

        protected void use(object sender, DataListItemEventArgs e)
        {
            Label prd = (Label)e.Item.FindControl("ItemNameLabel");
            ViewState["ItemName"] = prd.Text;
            Image img = (Image)e.Item.FindControl("Image1");
            ViewState["Image"] = img.ImageUrl.ToString();
            Label prc = (Label)e.Item.FindControl("PriceLabel");
            ViewState["Price"] = prc.Text;
            /* Label img = (Label)e.Item.FindControl("Image1");
             Label1.Text += img.Text;

         */

        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            int i = int.Parse(txtQuantity.Text);

            double p = Double.Parse((string)ViewState["Price"]);
            string img = ViewState["Image"].ToString();
            
            string s2 = System.Web.HttpContext.Current.User.Identity.Name;
            string s1 = Request.QueryString["iName"];

            SqlConnection a = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Courses\PROG37721\VisualStudioProjects\FINALPROJECT\FINALPROJECT\App_Data\RestaurantDB.mdf;Integrated Security=True");

            a.Open();
            string cartCmd = "insert into FinalCart(iName,Quantity,uName,Image,Price) values('" + s1 + "','" + i + "','" + s2 + "','" + img + "','" + p + "') ";
            SqlCommand cmd = new SqlCommand(cartCmd, a);
            cmd.ExecuteNonQuery();
            a.Close();
            //Response.Redirect("Home.aspx");
           Response.Redirect("Checkout.aspx?user=" + s2);

        }
    }
}
