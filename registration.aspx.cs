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
    }

     protected void RegSubmit_Click(object sender, EventArgs e)
    {
        string name = RegName.Text.ToString();
        string pw = RegPW.Text.ToString();
        string mail = RegMail.Text.ToString();
        string mcn = RegDropDownList.SelectedValue;
        int MaxCourseNum = mcn[0] - '0';
        string sql = "select * from UserData where UserMail='" + mail + "'";
        DBFunction db = new DBFunction();
        DataSet ds = db.GetDataSet(sql);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script language='javascript'> alert('对不起，此邮箱已被使用。'); </script>");

        }
        else
        {
            sql = "insert into UserData (UserName, UserPW, Admin, CourseNum, MaxCourseNum, UserMail) values ('" + name + "','" + pw + "', 0, 0, '" + MaxCourseNum + "','" + mail + "')";
            ds = db.GetDataSet(sql);
            Response.Write("<script language='javascript'> alert('注册成功！'); </script>");
            Response.Write("<script language='javascript'> window.location.href='Default.aspx'; </script>");


        }



    }
     protected void Back_Click(object sender, EventArgs e)
     {
         Response.Redirect("Default.aspx");
     }
}
