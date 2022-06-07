using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {

        Function123 db = new Function123();

        if (db.CubeExists(this.txtname.Text, this.txtcode.Text))
            this.Label1.Text = "cube/cube code already exists";
        else if (this.txtname.Text == "" || this.txtprice.Text == "" || this.txtcode.Text == "")
            this.Label1.Text="one or more of the fields is Empty";
        else

        {
            if (this.FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(this.MapPath("~/images/" + FileUpload1.FileName));
                Label1.Text = "File Uploaded: " + FileUpload1.FileName;
                string sql = string.Format("insert into [products] values('{0}','{1}',{2},'{3}')",FileUpload1.FileName, this.txtname.Text, int.Parse(this.txtprice.Text), this.txtcode.Text);
                db.DoCommand(sql);
                this.Label1.Text = "you have entered your data successfully";
                this.DetailsView1.DataBind();
            }
            else
            {
                this.Label1.Text = "You have to insert a picture";
            }
            
        }
    }


    protected void txtcode_TextChanged(object sender, EventArgs e)
    {
        Function123 db = new Function123();

        if (db.CubeExists(this.txtname.Text, this.txtcode.Text))
            this.Label1.Text = "cube/cube code already exists";
        else
            this.Label1.Text = "cube confirmed";


    }
}