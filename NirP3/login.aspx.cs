using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Function123 db = new Function123();
        string sql1 = string.Format("select * from [users] where [username]='{0}' and [password] = '{1}'", this.txtusernamelogin.Text, this.txtpasswordlogin.Text);
        DataSet ds = db.Selectcommand(sql1);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["username"] = this.txtusernamelogin.Text;
            string sql = string.Format("select * from [users] where [username]='{0}' and [admin]=true", this.txtusernamelogin.Text);
            DataSet ds1 = db.Selectcommand(sql);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                Session["isadmin"] = true;
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Session["isadmin"] = false;
                Response.Redirect("CoustomerHome.aspx");
            }
        }
        else
        {
            this.labelforusername.Text = "User Doesn't Exist/Incorrect Password";
        }
    }

    protected void btnforgotpassword_Click(object sender, EventArgs e)
    {
        //Random r = new Random();
        this.btnSend.Visible = true;
        this.btnlogin.Visible = false;
        this.txtusernamelogin.Text = "";
        this.btnenter.Visible = true;
        this.labelforusername.Text = "";
        this.labelusername.Text = "Enter Emial:";
        this.labepassword.Text = "Enter The Code We Sent You:";
        this.btnforgotpassword.Visible = false;
        this.btnsignup.Visible = false;
    }

    protected void btnsignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }

    protected void btnenter_Click(object sender, EventArgs e)
    {
        if (txtpasswordlogin.Text==Label2.Text)  Response.Redirect("HomeCustomer.aspx");
        else
        {
            Label1.Text = "The Code You Entered Is Not Correct!";
        }
    }

    protected void txtusernamelogin_TextChanged(object sender, EventArgs e)
    {
        //if (txtusernamelogin.Text == "Enter Username")
        //{
        //    txtusernamelogin.Text = "";
        //    txtusernamelogin.ForeColor = Color.Black;
        //}
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Random rnd = new Random();
        int x;
        x = rnd.Next(10000, 90000);
        string username = "";
        string password = "";
        Function123 db = new Function123();
        string sql = string.Format("select [username],[password] from [users] where [email]='{0}'", this.txtusernamelogin.Text);
        DataSet ds = db.Selectcommand(sql);

        username = ds.Tables[0].Rows[0]["username"].ToString();
        password = ds.Tables[0].Rows[0]["password"].ToString();

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("yayatrr11@gmail.com");
        msg.To.Add(txtusernamelogin.Text);
        msg.Subject = "Recover your Password";
        //msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
        msg.Body = ("Your Code is:" + x);
        msg.IsBodyHtml = true;

        SmtpClient smt = new SmtpClient();
        smt.Host = "smtp.gmail.com";
        System.Net.NetworkCredential ntwd = new NetworkCredential();
        ntwd.UserName = "yayatrr11@gmail.com";   //Your Email ID 

        ntwd.Password = "lamia-123"; // Your Password  
        smt.UseDefaultCredentials = true;
        smt.Credentials = ntwd;
        smt.Port = 587;
        smt.EnableSsl = true;
        smt.Send(msg);
        labelforusername.Text = "The Code Was Sent Successfully";
        labelforusername.ForeColor = System.Drawing.Color.ForestGreen;
        labelforusername.Visible = true;
        Label2.Text = "" + x;

    }
}