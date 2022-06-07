using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ViewOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Function123 db = new Function123();
        DataSet ds =  db.Selectcommand("SELECT orders.username, orders.dateof, orders.TotalPrice, users.country, users.adress FROM users INNER JOIN orders ON users.username = orders.username;");
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();

    }

}