<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewCourse.aspx.cs" Inherits="NewCourse" debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<link rel="stylesheet" type="text/css" href="css/index.css" media="screen"/>
    <script type="text/javascript" src="Scripts/CourseValidate.js"></script>

    <title></title>
</head>
<body style="background-color: #fff">
    <form id="form1" runat="server">
    <div>
    
        <div id="div1" class="CourseEditLabel">
            <asp:Label runat="server" Text="课程名称"></asp:Label>
            <asp:TextBox ID="NewCourseName" runat="server" CssClass="CourseEditTBox"></asp:TextBox>
            <div class="textBoxBG" ></div>
            <div id="changelabel2"><asp:Label ID="Label2" runat="server" Text="示例：近代物理" CssClass="TipLabel"></asp:Label></div>
        </div>

        <div id="div2" class="CourseEditLabel">
            <asp:Label runat="server" Text="上课时间"></asp:Label>
            <asp:TextBox ID="NewCourseTime" runat="server" CssClass="CourseEditTBox" BorderColor="Black"></asp:TextBox>
            <div class="textBoxBG" ></div>
            <div id="changelabel4"><asp:Label ID="Label4" runat="server" Text="示例：周三 3-4节" CssClass="TipLabel"></asp:Label></div>
        </div>

        <div id="div3" class="CourseEditLabel">
            <asp:Label runat="server" Text="上课地点"></asp:Label>
            <asp:TextBox ID="NewCourseAddress" runat="server" CssClass="CourseEditTBox"></asp:TextBox>
            <div class="textBoxBG" ></div>
            <div id="changelabel6"><asp:Label ID="Label6" runat="server" Text="示例：仙I-206" CssClass="TipLabel"></asp:Label></div>
        </div>

        <div id="div4" class="CourseEditLabel">
            <asp:Label runat="server" Text="人数限额"></asp:Label>
            <asp:TextBox ID="NewCourseMaxPop" runat="server" CssClass="CourseEditTBox" onkeyup="if(isNaN(value))execCommand('undo')" onafterpaste="if(isNaN(value))execCommand('undo')"></asp:TextBox>
            <div class="textBoxBG" ></div>
            <div id="changelabel8"><asp:Label ID="Label8" runat="server" Text="示例：10" CssClass="TipLabel"></asp:Label></div>
        </div>

        <asp:Button ID="AddCourse" runat="server" Text="增加课程" 
            onclick="AddCourse_Click" class="button" OnClientClick="return CheckFormNew(this);"/>
        <asp:Button ID="Back" runat="server" Text="返回" class="button" 
            onclick="Back_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>
