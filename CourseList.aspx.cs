using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {

        }
        else
        {
            string sql = "select * from Course";
            DBFunction db = new DBFunction();
            DataSet ds = db.GetDataSet(sql);
            OleDbDataReader ListText = db.GetReader(sql);
                List1.DataSource = ListText;
                List1.DataBind();
                ListText.Close();


        }
    }

}