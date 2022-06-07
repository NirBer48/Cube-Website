using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Store : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if ((bool)Session["isadmin"])
        {
            this.MasterPageFile = "~/MasterPageAdmin.master";
        }
        else
        {
            this.MasterPageFile = "~/MasterPageCustomer.master";
        }
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "addToCart")
        {
            DateTime mydate = DateTime.Now;

            Label ProductCodeLabel = (Label)e.Item.FindControl("ProductCodeLabel");
            Label ProductNameLabel = (Label)e.Item.FindControl("ProductNameLabel");
            Label ProductPriceLabel = (Label)e.Item.FindControl("ProductPriceLabel");
            Image ProductImgLabel = (Image)e.Item.FindControl("ProductImgLabel");
            string img = ProductImgLabel.ImageUrl.ToString().Substring(7);
            // The URL of the image includes images/ thus we use .Substring(7)

            string sql = string.Format("insert into [tempCart] values('{0}','{1}',{2},'{3}','{4}')", ProductCodeLabel.Text, ProductNameLabel.Text, double.Parse(ProductPriceLabel.Text), img, Session["username"].ToString());
            Function123 db = new Function123();


            string sql2 = string.Format("select * from [tempCart] where [ProdCode]='{0}' and [username]='{1}'", ProductCodeLabel.Text, Session["username"].ToString());
            DataSet ds = db.Selectcommand(sql2);

            if (ds.Tables[0].Rows.Count == 0)
            {
                db.DoCommand(sql);
                this.Label1.Visible = true;
                this.Label1.Text = ProductNameLabel.Text + " added to the your cart successfully";
            }
            else
            {
                Label1.Visible = true;
                this.Label1.Text = ProductNameLabel.Text + " is already in the cart";
            }

        }
    }
}