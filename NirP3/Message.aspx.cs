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
        Function123 db = new Function123();
        DateTime now = DateTime.Now;

        string message = this.txtmess.Text;
        string topic = this.txttopic.Text;

        string sql = string.Format("insert into [message] (username, DateSent, Topic, MessegeText) values('{0}',#{1}#,'{2}','{3}')", Session["username"].ToString(), now, topic, message);
        db.DoCommand(sql);
        this.Label8.Text = "Message Sent";


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