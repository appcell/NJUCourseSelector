using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class NewCourse : System.Web.UI.Page
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
            string IfAdmin = "select ID from UserData where ID=" + UserID + " and Admin=1";
            DataSet IfAdminTemp = db.GetDataSet(IfAdmin);

            if (IfAdminTemp.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script language='javascript'> alert('您无权进行此操作！'); </script>");

                Response.Write("<script language='javascript'> window.location.href='UnselectedList.aspx'; </script>");
            }

        }
    }
    protected void AddCourse_Click(object sender, EventArgs e)
    {
        string ncn = NewCourseName.Text.ToString();
        string nct = NewCourseTime.Text.ToString();
        string nca = NewCourseAddress.Text.ToString();
        Int32 ncmp = Convert.ToInt32(NewCourseMaxPop.Text);
        
        string sql = "insert into Course(CourseName,CourseTime,CourseAddress,MaxPopulation,Population) values ('" + ncn + "','" + nct +"','" + nca + "'," + ncmp + ",0 )" ;
        DBFunction db = new DBFunction();
        DataSet ds = db.GetDataSet(sql);
        Response.Write("<script language='javascript'> alert('增加课程成功！'); </script>");
        Response.Write("<script language='javascript'> window.location.href='NewCourse.aspx'; </script>");
    }
    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("UnselectedList.aspx");
    }
}