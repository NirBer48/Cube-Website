using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

/// <summary>
/// Summary description for DbFunctions
/// </summary>
public class Function123
{
    private string connectionstr;

    public Function123()
    {
        this.connectionstr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/Rubik'sCubeStore.accdb");
    }

    // update, insert , delete 
    public void DoCommand(string mysql)
    {
        OleDbConnection connectObj = new OleDbConnection(this.connectionstr);
        OleDbCommand myCommandObj = new OleDbCommand(mysql, connectObj);
        connectObj.Open();
        myCommandObj.ExecuteNonQuery();
        connectObj.Close();
    }

    // select
    public DataSet Selectcommand(string mysql)
    {
        OleDbConnection connectObj = new OleDbConnection(connectionstr);
        OleDbDataAdapter da = new OleDbDataAdapter(mysql, connectObj);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }


    public void copyData(string username, double price)
    {
        DateTime mydate = DateTime.Now;
        string sql1 = string.Format("insert into orders([username],[dateOf]) values('{0}', #{1}#)", username, mydate);
        DoCommand(sql1);

        string sqlStr2 = "Select orderNo from [orders]";
        OleDbDataAdapter dataAdapter1 = new OleDbDataAdapter(sqlStr2, this.connectionstr);
        DataSet ds1 = new DataSet();
        dataAdapter1.Fill(ds1);

        int heshbonetNo = 0;
        for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
        {
            heshbonetNo = int.Parse(ds1.Tables[0].Rows[i][0].ToString());
        }

        string sqlStr = "Select * FROM [tempCart] where [username]='" + username + "'";
        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(sqlStr, this.connectionstr);
        DataSet ds = new DataSet();
        dataAdapter.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            string serial = ds.Tables[0].Rows[i]["ProdCode"].ToString();
            string sql2 = string.Format("insert into [DetailsOfOrders] values({0},'{1}',{2})", heshbonetNo, serial, 1);
            DoCommand(sql2);
        }
    }


    public bool isExist(string username)
    {
        Function123 db = new Function123();
        string sql = string.Format("select * from [users] where [username]='{0}'", username);
        DataSet ds = db.Selectcommand(sql);
        if (ds.Tables[0].Rows.Count == 0) return false;
        else return true;

    }
    public bool isExistEmail(string email)
    {
        Function123 db = new Function123();
        string sql = string.Format("select * from [users] where [email]='{0}'", email);
        DataSet ds = db.Selectcommand(sql);
        if (ds.Tables[0].Rows.Count == 0) return false;
        else return true;

    }

    public bool CubeExists(string name, string code)
    {
        Function123 db = new Function123();
        string sql = string.Format("select * from [products] where [ProductName]='{0}'", name);
        string sql1 = string.Format("select * from [products] where [ProductCode]='{0}'", code);
        DataSet ds = db.Selectcommand(sql);
        DataSet ds1 = db.Selectcommand(sql1);
        if (ds.Tables[0].Rows.Count == 0 && ds1.Tables[0].Rows.Count == 0) return false;
        else return true;

    }
    
}