using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class ShoppingList : System.Web.UI.Page
{
    static int cost = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Function123 db = new Function123();
        string sqlStr = string.Format("Select * FROM [tempCart] where [username]='{0}'", Session["username"].ToString());
        DataSet ds = db.Selectcommand(sqlStr);
        if (ds.Tables[0].Rows.Count == 0)
        {
            this.Label2.Visible = true;
            this.Label2.Text = "the cart is empty";
        }

        if (!this.IsPostBack)
        {
            this.GridView1.AllowPaging = true;
            this.GridView1.PageSize = 4;
            bindgridview();
            totalsum();
        }


        if (GridView1.Rows.Count == 0)
        {
            this.cartcleaner.Visible = false;
            this.LinkButton1.Visible = false;
            totallbl.Visible = false;
            Label2.Text = "your cart is empty";

        }
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
    public void bindgridview()
    {
        this.GridView1.Visible = true;
        Function123 db = new Function123();
        string username = Session["username"].ToString();
        string query = string.Format("select * FROM [tempCart] where [username]='{0}'", username);
        DataSet ds = db.Selectcommand(query);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
        totalsum();

    }
    public void totalsum()
    {
        int sum = 0;
        string username = Session["username"].ToString();
        string query = string.Format("select [ProdPrice] FROM [tempCart] where [username]='{0}'", username);
        Function123 db = new Function123();
        DataSet ds = db.Selectcommand(query);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            sum += int.Parse(ds.Tables[0].Rows[i]["ProdPrice"].ToString());
        }
        this.totallbl.Text = string.Format("Total: {0}$", sum);

    }

    protected void cartcleaner_Click1(object sender, EventArgs e)
    {
        string user = Session["username"].ToString();
        string queryStr = "DELETE from [tempCart] WHERE [username]='" + user + "'";
        Function123 db = new Function123();
        db.DoCommand(queryStr);
        totalsum();
        bindgridview();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label ProdCode = (Label)GridView1.Rows[e.RowIndex].FindControl("Label2");
        string queryStr = string.Format("DELETE FROM [tempCart] where [ProdCode] = '{0}' and [username]='{1}'", ProdCode.Text.ToString(), Session["username"].ToString());
        Function123 db = new Function123();
        db.DoCommand(queryStr);
        this.GridView1.EditIndex = -1;
        totalsum();
        bindgridview();

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        bindgridview();
    }
}