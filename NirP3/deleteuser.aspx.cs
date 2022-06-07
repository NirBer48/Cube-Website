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
        string sql1 = string.Format("select * from [users]");
        DataSet ds = db.Selectcommand(sql1);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        Function123 db = new Function123();

        if (db.isExist(this.txtusername.Text))
        {
            string sql2 = string.Format("delete * from [users] where [username]='{0}'", this.txtusername.Text);
            db.DoCommand(sql2);
            shoawall();
            this.Label1.Text = string.Format("Username: '{0}' Deleted", this.txtusername.Text);
        }
        else
            this.Label1.Text = "username doesn't exis";


      

    }
}