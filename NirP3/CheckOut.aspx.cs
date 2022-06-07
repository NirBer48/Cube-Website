using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class CheckOut : System.Web.UI.Page
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
            this.MasterPageFile = "~/MasterPageVisitor.master";
        }

    }

}