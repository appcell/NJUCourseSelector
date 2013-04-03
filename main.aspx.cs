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

            string UserMail = Session["UserMail"].ToString();
            string PassWord = Session["PassWord"].ToString();
            Int32 UserID = Convert.ToInt32(Session["UserID"]);

            string sql = "select * from UserData where UserMail='" + UserMail + "' and UserPW='" + PassWord + "'";
            DBFunction db = new DBFunction();
            DataSet ds = db.GetDataSet(sql);
            OleDbDataReader ListText = db.GetReader(sql);
            if (ds.Tables[0].Rows.Count > 0 || UserMail != null ) 
            {
                string IfAdmin = "select ID from UserData where ID=" + UserID + " and Admin=1";
                DataSet IfAdminTemp = db.GetDataSet(IfAdmin);

                if (IfAdminTemp.Tables[0].Rows.Count >= 1)
                {
                    HiddenSubNav1.Visible = true;
                    HiddenSubNav2.Visible = true;
                    IfAdminLabel.Text = "管理员";
                }
                else
                {
                    IfAdminLabel.Text = "同学";
                }
                sql = "select AvatarUrl from UserData where ID=" + UserID;
                this.Image1.ImageUrl = db.SearchDatabase(sql);
                sql = "select UserName from UserData where ID=" + UserID;
                this.Name.Text = db.SearchDatabase(sql);
                sql = "select MaxCourseNum from UserData where ID=" + UserID;
                this.MaxCourseNum.Text = db.SearchDatabase(sql).ToString();
                sql = "select CourseNum from UserData where ID=" + UserID;
                this.SelectedNum.Text = db.SearchDatabase(sql).ToString();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }

    }

    public void unselected_Click(object sender, EventArgs e)
    {
    }
    private OleDbDataReader GetReader(string sql)
    {
        throw new NotImplementedException();
    }


    protected void ExitBtn_Click(object sender, EventArgs e)
    {
        Response.Write("<script language='javascript'> alert('您已成功退出！'); </script>");
        Session["UserMail"] = null;
        Session["PassWord"] = null;
        Session["UserID"] = null;
        Response.Write("<script language='javascript'> window.location.href='Default.aspx'; </script>");

    }
    protected void SelectCourse_Click(object sender, EventArgs e)
    {
        Unselected.CssClass = "SubNavAct";
        Selected.CssClass = "SubNavInAct";
        CourseList.CssClass = "SubNavInAct";
        HiddenSubNav1.CssClass = "SubNavInAct";
        HiddenSubNav2.CssClass = "SubNavInAct";
        iFrame.Attributes["src"] = "UnselectedList.aspx";
    }
    protected void SelectedList_Click(object sender, EventArgs e)
    {

        Selected.CssClass = "SubNavAct";
        Unselected.CssClass = "SubNavInAct";
        CourseList.CssClass = "SubNavInAct";
        HiddenSubNav1.CssClass = "SubNavInAct";
        HiddenSubNav2.CssClass = "SubNavInAct";
        iFrame.Attributes["src"] = "SelectedList.aspx";
        
    }
        protected void Course_Click(object sender, EventArgs e)
    {
        Unselected.CssClass = "SubNavInAct";
        Selected.CssClass = "SubNavInAct";
        CourseList.CssClass = "SubNavAct";
        HiddenSubNav1.CssClass = "SubNavInAct";
        HiddenSubNav2.CssClass = "SubNavInAct";
        iFrame.Attributes["src"] = "CourseList.aspx";
    }
            protected void NewCourse_Click(object sender, EventArgs e)
    {
        Unselected.CssClass = "SubNavInAct";
        Selected.CssClass = "SubNavInAct";
        CourseList.CssClass = "SubNavInAct";
        HiddenSubNav1.CssClass = "SubNavAct";
        HiddenSubNav2.CssClass = "SubNavInAct";
        iFrame.Attributes["src"] = "NewCourse.aspx";
    }
                protected void UpdateCourse_Click(object sender, EventArgs e)
    {
        Unselected.CssClass = "SubNavInAct";
        Selected.CssClass = "SubNavInAct";
        CourseList.CssClass = "SubNavInAct";
        HiddenSubNav1.CssClass = "SubNavInAct";
        HiddenSubNav2.CssClass = "SubNavAct";
        iFrame.Attributes["src"] = "UpdateCourse.aspx";
    }
}

