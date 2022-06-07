using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class deleteuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        shoawall();

    }
    public void shoawall()
    {
        Function123 db = new Function123();
        string sql1 = string.Format("select * from [products]");
        DataSet ds = db.Selectcommand(sql1);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        Function123 db = new Function123();

        if (db.isExist(this.txtprodname.Text))
        {
            string sql2 = string.Format("delete * from [products] where [ProdName]='{0}'", this.txtprodname.Text);
            db.DoCommand(sql2);
            shoawall();
            this.Label1.Text = string.Format("Product: '{0}' Was Deleted", this.txtprodname.Text);
        }
        else
        {
            this.Label1.Text = "Product doesn't exis";
        }

    }
}