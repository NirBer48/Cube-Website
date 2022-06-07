using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class editProfile : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Label4.Text = Session["username"].ToString();
            Function123 db = new Function123();
            string sql = string.Format("select * from [users] where [username]='{0}'", Session["username"].ToString());
            DataSet ds = db.Selectcommand(sql);
           
            this.txtPassword.Text = ds.Tables[0].Rows[0]["password"].ToString();
            this.Label2.Text = ds.Tables[0].Rows[0]["adress"].ToString();
            this.txtadress.Text = ds.Tables[0].Rows[0]["adress"].ToString();
            this.Label5.Text = ds.Tables[0].Rows[0]["country"].ToString();
            this.Label6.Text = ds.Tables[0].Rows[0]["age"].ToString();
            this.txtage.Text = ds.Tables[0].Rows[0]["age"].ToString();
            this.txtEmail.Text = ds.Tables[0].Rows[0]["email"].ToString();
            //this.Image2.ImageUrl = "~/images/"+ds.Tables[0].Rows[0]["profile"].ToString();
            //this.txtPassword.TextMode = TextBoxMode.Password;
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void drplist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = this.txtPassword.Text;
        string country = this.drplist.SelectedValue;
        string age = this.txtage.Text;
        string adress = this.txtadress.Text;
        string email = this.txtEmail.Text;
        bool IsAdmin = (bool)Session["isadmin"];


        Function123 db = new Function123();
        string sql = string.Format("update [users] set [password]='{0}', [email]='{1}', [country]='{2}', [adress]='{3}', [age]={4}, [admin]={5} where [username]='{6}'", password, email, country, adress, int.Parse(age), IsAdmin, username);
        db.DoCommand(sql);
        this.Label1.Text = "Data Updated";
      



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
 }
