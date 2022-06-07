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
            int sum = 0;
            string sumname = "";
            string username = Session["username"].ToString();
            string query = string.Format("select [ProdPrice] FROM [tempCart] where [username]='{0}'", username);
            Function123 db = new Function123();
            DataSet ds = db.Selectcommand(query);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                sum += int.Parse(ds.Tables[0].Rows[i]["ProdPrice"].ToString());
            }
            
            query = string.Format("select [ProdName] FROM [tempCart] where [username]='{0}'", username);
            ds = db.Selectcommand(query);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (i != ds.Tables[0].Rows.Count - 1)
                {
                    sumname += ds.Tables[0].Rows[i]["ProdName"].ToString() + ", ";
                }
                else
                {
                    sumname += ds.Tables[0].Rows[i]["ProdName"].ToString() + ".";
                }
            }

            this.lbluser.Text = username;
            this.lblprice.Text = string.Format("Total: {0}$", sum);
            this.lblprod.Text = sumname;

            //this.Image2.ImageUrl = "~/images/"+ds.Tables[0].Rows[0]["profile"].ToString();
            //this.txtPassword.TextMode = TextBoxMode.Password;
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        double sum = 0;
        string username = Session["username"].ToString();
        string query = string.Format("select [ProdPrice] FROM [tempCart] where [username]='{0}'", username);
        Function123 db = new Function123();
        DataSet ds = db.Selectcommand(query);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            sum += double.Parse(ds.Tables[0].Rows[i]["ProdPrice"].ToString());
        }
            
        ServVisa.WebService mys = new ServVisa.WebService();

        string validM = this.txtvalidM.Text;
        string validY = this.txtvalidY.Text;
        double Charge = sum;
        string Visa = this.txtvisa.Text;


        if (mys.IsDate(validM, validY, Visa) && mys.isValid(Visa, Charge))
        {
            mys.UpdateTotal(Visa, Charge);
            this.Label1.Text = "Purchese Confirmed!";
        }
        else
        {
            this.Label1.Text = "Visa not valid / Not enough money";
        }


        string sql = string.Format("delete * from [tempCart] where [username]='{0}'", username);
        db.DoCommand(sql);

        DateTime now = DateTime.Now;
        sql = string.Format("insert into [orders] (username, dateof, TotalPrice) values('{0}',#{1}#,{2})", username, now, Charge);
        db.DoCommand(sql);
        this.lblprice.Text = "0$";
        this.lblprod.Text = "";
        this.txtvalidY.Text = "";
        this.txtvalidM.Text = "";
        this.txtvisa.Text = "";
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
