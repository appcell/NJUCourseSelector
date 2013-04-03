<%@ Page Language="C#"
    CodeFile="main.aspx.cs" Inherits="_Default" Debug="true"%>
    <%@ Import Namespace="System.Data.OleDb" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/index.css" />

    <script type="text/javascript" src="Scripts/Validate.js"></script>

  <title>学生选课系统</title>
</head>

<body>
<form runat="server">
<div id="navBar">
	<div class="titleMain">
		<div id="logo"></div>
		<div class="userInfo"><asp:LinkButton ID="ExitBtn" runat="server" 
                Font-Underline="False" onclick="ExitBtn_Click"  OnClientClick="return CheckExit();">退出</asp:LinkButton></div>
	</div>
	
</div>

<div id="bodyMain">
	<div id="login">
    <div id="PSInfoTitle"></div>
    <div class="line" id="PSInfoLine1"></div>
        <div class="line" id="PSInfoLine2"></div>
            <div class="line" id="PSInfoLine3"></div>
                <div class="line" id="PSInfoLine4"></div>



    <div id="PSInfo">
        <div class="AvatarDisplay"><asp:Image ID="Image1" runat="server" CssClass="Avatar"/></div>
        <asp:Label ID="Name" runat="server" ></asp:Label>
        <asp:Label ID="IfAdminLabel" runat="server" ></asp:Label>
        <div id="EditInfo"><a href="EditCourse.aspx" id="PSInfoEdit">修改个人信息</a><a href="EditCourse.aspx" id="DeleteUser">注销账户</a></div>
        </div>
        <div id="CourseStatic">
            <asp:Label ID="MaxCourseNum" runat="server"></asp:Label>
            <asp:Label ID="SelectedNum" runat="server"></asp:Label>
            <asp:Label ID="MCNLabel" runat="server" Text="可选课程数"></asp:Label>
            <asp:Label ID="SNLabel" runat="server" Text="已选课程数"></asp:Label>
        </div>
                 <!--<div class="line" id="line4"></div>-->
                 <div id="suggest"><a href='registration.aspx'>>> 给CourSelect提建议 <<</a></div>
    </div>


    



	<div id="update">
		<img id="updateTitle" src="images/update.png" alt="update"/>
		<div class="line" id="line3"> </div>
		<li>1.1 节日快乐</li><li>12.31 节日前一天快乐</li><li>12.30  节日前两天快乐</li>
	</div>


	<div id="rightPane">
		<div id="subNavigation" runat="server">
            <asp:Panel id="Unselected" CssClass="SubNavAct" runat="server"><asp:LinkButton
                    ID="SelectCourse" runat="server" CssClass="SubNavText" 
                    onclick="SelectCourse_Click" >选课</asp:LinkButton></asp:Panel>

            <asp:Panel id="Selected" CssClass="SubNavInAct" runat="server" target="iFrame" ><asp:LinkButton ID="SelectedList" runat="server" CssClass="SubNavText" 
                      onclick="SelectedList_Click">已选课程</asp:LinkButton></asp:Panel>

            <asp:Panel id="CourseList" CssClass="SubNavInAct" runat="server"><asp:LinkButton
                    ID="Course" runat="server" CssClass="SubNavText" 
                    onclick="Course_Click">全校课程</asp:LinkButton></asp:Panel>

            <asp:Panel CssClass="SubNavInAct" id="HiddenSubNav1" runat="server" visible="False"><asp:LinkButton
                    ID="NewCourse" runat="server" CssClass="SubNavText" 
                    onclick="NewCourse_Click">增加课程</asp:LinkButton></asp:Panel>

            <asp:Panel  CssClass="SubNavInAct" id="HiddenSubNav2" runat="server" visible="False"><asp:LinkButton
                    ID="UpdateCourse" runat="server" CssClass="SubNavText" 
                    onclick="UpdateCourse_Click">编辑/删除课程</asp:LinkButton></asp:Panel>
    
    </div>

        <iframe id="iFrame" runat="server" name="iFrame" src="UnselectedList.aspx"/>

            <asp:Button ID="Button1" runat="server" Text="Button" />

        </div>

        </div>
	
	<div class="footer" id="footer2"><span class="footText">Copyright (c) Zhu Yiqing</span><a>关于</a>&nbsp;&nbsp;&nbsp;&nbsp;<a>English</a></div>
</form>
</body>

</html>