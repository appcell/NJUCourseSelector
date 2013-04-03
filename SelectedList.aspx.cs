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
            string UserMail = Session["UserMail"].ToString();
            string PassWord = Session["PassWord"].ToString();
            Int32 UserID = Convert.ToInt32(Session["UserID"]);

            DBFunction db = new DBFunction();


            if (Page.IsPostBack == true)
            {

            }
            else
            {
                string sql = "select * from Course where ID in (select CourseID from Selection,UserData,Course where UserData.ID=" + UserID + " and UserData.ID=Selection.UserID and Selection.CourseID=Course.ID)";
                DataSet ds = db.GetDataSet(sql);
                OleDbDataReader ListText = db.GetReader(sql);
                List1.DataSource = ListText;
                List1.DataBind();
                ListText.Close();


            }

    }



    protected void IfClicked(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "SelectCourse")
        {

            string UserMail = Session["UserMail"].ToString();
            string PassWord = Session["PassWord"].ToString();
            Int32 UserID = Convert.ToInt32(Session["UserID"]);

            string selectIDtmp = this.List1.DataKeys[e.Item.ItemIndex].ToString();
            Int32 SelectCourseID = Convert.ToInt32(selectIDtmp);
            DBFunction db = new DBFunction();
            string SelectSql = "delete from Selection where UserID=" + UserID + " and CourseID=" + SelectCourseID;
            DataSet ds = db.GetDataSet(SelectSql);
            SelectSql = "update UserData set CourseNum=CourseNum-1 where ID=" + UserID;
            ds = db.GetDataSet(SelectSql);
            SelectSql = "update Course set Population=Population-1 where ID=" + SelectCourseID;
            ds = db.GetDataSet(SelectSql);
            Response.Write("<script language='javascript'> alert('退选成功！'); </script>");
            Response.Write("<script language='javascript'> window.location.href='SelectedList.aspx'; </script>");
            
        }
    }
}