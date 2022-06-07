using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;


public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Function123 db = new Function123();
        //string sql1 = string.Format("select * from [users] where [username]='{0}'", this.txtusername.Text);
        //DataSet ds = db.Selectcommand(sql1);
        //if (ds.Tables[0].Rows.Count > 0) this.Label9.Text = "user already exists";
        //else
        //{
        //    string sql = string.Format("insert into [users] values('{0}','{1}','{2}','{3}','{4}',{5},'{6}')", this.txtusername.Text, this.txtpassword.Text, this.txtemail.Text, this.txtcountry.Text, this.txtadress.Text, int.Parse(this.txtage.Text),false);
        //    db.DoCommand(sql);
        //    this.Label8.Text = "you have registered successfully";
        //}
        //Response.Redirect("home.aspx");
        Function123 db = new Function123();
        string sql1 = string.Format("select * from [users] where [username]='{0}'", this.txtusername.Text);
        DataSet ds = db.Selectcommand(sql1);
        if (ds.Tables[0].Rows.Count > 0) this.Label9.Text = "user already exists";
        else
        {
            string sql = string.Format("insert into [users] values('{0}','{1}','{2}','{3}','{4}',{5},false)", this.txtusername.Text, this.txtpassword.Text, this.txtemail.Text, this.txtcountry.Text, this.txtadress.Text, int.Parse(this.txtage.Text));
            db.DoCommand(sql);
            Session["username"] = this.txtusername.Text;
            Session["isadmin"] = false;
            Response.Redirect("CoustomerHome.aspx");
        }
    }
 

    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }
}