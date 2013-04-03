using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

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
 
                
                string sql = "select * from Course";
                DataSet ds = db.GetDataSet(sql);
                OleDbDataReader ListText = db.GetReader(sql);
                List1.DataSource = ListText;
                List1.DataBind();
                ListText.Close();
                string IfAdmin = "select ID from UserData where ID=" + UserID + " and Admin=1";
                DataSet IfAdminTemp = db.GetDataSet(IfAdmin);

                if (IfAdminTemp.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script language='javascript'> alert('您无权进行此操作！'); </script>");

                    Response.Write("<script language='javascript'> window.location.href='UnselectedList.aspx'; </script>");
                }


            }

    }



    protected void IfClicked(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "DeleteCourse")
        {
            string selectIDtmp = this.List1.DataKeys[e.Item.ItemIndex].ToString();
            Int32 SelectCourseID = Convert.ToInt32(selectIDtmp);
            DBFunction db = new DBFunction();

            string sql = "update UserData,Selection set CourseNum=CourseNum-1 where Selection.CourseID=" + SelectCourseID + " and Selection.UserID=UserData.ID";
            DataSet ds = db.GetDataSet(sql);
            sql = "delete from Selection where CourseID=" + SelectCourseID;
            ds = db.GetDataSet(sql);
            sql = "delete from Course where ID=" + SelectCourseID;
            ds = db.GetDataSet(sql);

            Response.Write("<script language='javascript'> alert('删除课程成功！'); </script>");
            Response.Write("<script language='javascript'> window.location.href='UpdateCourse.aspx'; </script>");


        }


        if (e.CommandName == "EditCourse")
        {
            string selectIDtmp = this.List1.DataKeys[e.Item.ItemIndex].ToString();
            Int32 SelectCourseID = Convert.ToInt32(selectIDtmp);
            DBFunction db = new DBFunction();
            Session["CourseID"] = SelectCourseID;
            string sql = "select CourseName from Course where ID=" + SelectCourseID;
            Session["CourseName"] = db.SearchDatabase(sql);
            sql = "select CourseTime from Course where ID=" + SelectCourseID;
            Session["CourseTime"] = db.SearchDatabase(sql);
            sql = "select CourseAddress from Course where ID=" + SelectCourseID;
            Session["CourseAddress"] = db.SearchDatabase(sql);
            sql = "select MaxPopulation from Course where ID=" + SelectCourseID;
            Session["MaxPopulation"] = db.SearchDatabase(sql);

            Response.Redirect("EditCourse.aspx");

        }
    }

}
