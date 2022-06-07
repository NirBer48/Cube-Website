using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.OleDb;
using System.Drawing;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public string connectionStr;
    public WebService() 
    {
        //connectionStr = @"Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("visa.mdb");
        connectionStr = @"Provider=Microsoft.ace.OleDb.12.0;Data Source="+Server.MapPath("App_Data/visa.accdb");
    }
    [WebMethod]
    public void UpdateTotal(string visa, double money)
    {
        string query = "update tab set total=total-" + money;
        query += " where visaNo='" + visa + "'";
        OleDbConnection con = new OleDbConnection(connectionStr);
        OleDbCommand cmd = new OleDbCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
   


    [WebMethod]
    public DataSet showAll()
    {
        string query = "select *  from tab";
        OleDbConnection con = new OleDbConnection(connectionStr);
        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(query, connectionStr);
        DataSet ds = new DataSet();
        dataAdapter.Fill(ds);
        return (ds);

    }
    [WebMethod]
    public DataSet showAccountVisa(string visa)
    {
       
        string query = "select *  from tab where visaNo ='" + visa + "'";
        OleDbConnection con = new OleDbConnection(connectionStr);
        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(query, connectionStr);
        DataSet ds = new DataSet();
        dataAdapter.Fill(ds);
        return (ds);
    }

    [WebMethod]
    public bool IsDate(string month, string year, string visa)
    {
        string v=month+"."+year;
        string sql =string.Format("select * from tab where visaNo ='{0}' and validDate='{1}'",visa,v);
        OleDbConnection con = new OleDbConnection(connectionStr);
        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(sql, connectionStr);
        DataSet ds = new DataSet();
        dataAdapter.Fill(ds);
        DataTable dtable = ds.Tables[0];
        return (dtable.Rows.Count >0 );
    }

    [WebMethod]
    public bool isValid(string visa, double money)
    {

        string query = "select *  from tab where (visaNo = '" + visa + "') and (total -" + money + " >= range)";
        //string query="select *  from tab where (visaNo ='11111') and (validDate>='01/01/2009')" ;
        OleDbConnection con = new OleDbConnection(connectionStr);
        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(query, connectionStr);
        DataSet ds = new DataSet();
        dataAdapter.Fill(ds);
        DataTable dtable = ds.Tables[0];
        bool val = true;
        if (dtable.Rows.Count > 0)
            val = true;
        else val = false;
        return val;
    }
}
