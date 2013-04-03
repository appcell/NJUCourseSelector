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

        if (Page.IsPostBack == false)
        {
            string IfAdmin = "select ID from UserData where ID=" + UserID + " and Admin=1";
            DataSet IfAdminTemp = db.GetDataSet(IfAdmin);

            if (IfAdminTemp.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script language='javascript'> alert('您无权进行此操作！'); </script>");

                Response.Write("<script language='javascript'> window.location.href='UnselectedList.aspx'; </script>");
            }
            CourseName.Text = Session["CourseName"].ToString();
            CourseTime.Text = Session["CourseTime"].ToString();
            CourseAddress.Text = Session["CourseAddress"].ToString();
            CourseMaxPop.Text = Session["MaxPopulation"].ToString();

        }

    }
    public void EditCourse_Click(object sender, EventArgs e)
    {
        string tmp = Session["CourseID"].ToString();
        Int32 CourseID = Convert.ToInt32(tmp);
        string ncn = CourseName.Text.ToString();
        string nct = CourseTime.Text.ToString();
        string nca = CourseAddress.Text.ToString();
        Int32 ncmp = Convert.ToInt32(CourseMaxPop.Text);
        string sql = "update Course set CourseName='" + ncn + "',CourseTime='" + nct + "',CourseAddress='" + nca + "',MaxPopulation=" + ncmp + " where ID=" + CourseID ;
        DBFunction db = new DBFunction();
        DataSet ds = db.GetDataSet(sql);
        Response.Write("<script language='javascript'> alert('编辑课程成功！'); </script>");
        Response.Write("<script language='javascript'> window.location.href='UpdateCourse.aspx'; </script>");
    }

    protected void Back_Click(object sender, EventArgs e)
    {

        Response.Redirect("UpdateCourse.aspx");

    }
}