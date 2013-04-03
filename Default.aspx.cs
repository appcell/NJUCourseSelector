using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pl2.Visible = false;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string mail = tbMail.Text.ToString();
        string pw = tbPW.Text.ToString();
        Session["UserMail"] = mail;
        Session["PassWord"] = pw;

        string sql = "select * from UserData where UserMail='" + mail + "'and UserPW='" + pw + "'";
        DBFunction db = new DBFunction();
        DataSet ds = db.GetDataSet(sql);







        if (ds.Tables[0].Rows.Count > 0)
        {
            string SearchSql = "select ID from UserData where UserMail= '" + mail + "' and UserPW='" + pw + "'";
            Session["UserID"] = db.SearchDatabase(SearchSql).ToString();
            Response.Redirect("main.aspx");
        }
        else
        {
            pl2.Visible = true;
        }
    }
}
