<%@ Page Language="C#"
    CodeFile="AdminReg.aspx.cs" Inherits="_Default" Debug="true"%>
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/index.css" media="screen"/>
    <script type="text/javascript" src="Scripts/Validate.js"></script>

  <title>学生选课系统</title>
</head>

<body>

<div id="navBar">
	<div class="titleMain">
		<div id="logo"></div>
		<div class="userInfo"><p>注册&nbsp;&nbsp;|&nbsp;&nbsp;登录</p></div>
	</div>
	
</div>
<form id="RegPane" method='post' runat="server" >
<div id="Regline2" class="RegLine"></div>
<asp:LinkButton ID="RegBack" runat="server" onclick="Back_Click">>>返回首页</asp:LinkButton>
<div id="RegLine1" class="RegLine"></div>

        <div id="div1-1" class="CourseEditLabelReg">
            <asp:Label ID="Label1" runat="server" Text="注册邮箱"></asp:Label>
            <asp:TextBox ID="RegMail" runat="server" CssClass="CourseEditTBox" ></asp:TextBox>
            <div class="textBoxBG" ></div>
            <div id="changelabel2"><asp:Label ID="Label2" runat="server" Text="示例：abc@abc.com" CssClass="TipLabel"></asp:Label></div>
        </div>

        <div id="div2-1" class="CourseEditLabelReg">
            <asp:Label ID="Label3" runat="server" Text="用户名"></asp:Label>
            <asp:TextBox ID="RegName" runat="server" CssClass="CourseEditTBox"></asp:TextBox>
            <div class="textBoxBG" ></div>
            <div id="changelabel4"><asp:Label ID="Label4" runat="server" Text="示例：abc" CssClass="TipLabel"></asp:Label></div>
        </div>

        <div id="div3-1" class="CourseEditLabelReg">
            <asp:Label ID="Label5" runat="server" Text="密码"></asp:Label>
            <asp:TextBox ID="RegPW" runat="server" CssClass="CourseEditTBox" TextMode="Password"></asp:TextBox>
            <div class="textBoxBG" ></div>
            <div id="changelabel6"><asp:Label ID="Label6" runat="server" Text="请使用较复杂密码" CssClass="TipLabel"></asp:Label></div>
        </div>

         <div id="div4-1" class="CourseEditLabelReg">
            <asp:Label ID="Label7" runat="server" Text="入学年份"></asp:Label>
            <asp:DropDownList ID="RegDropDownList" runat="server" >
                <asp:ListItem Value=7>2009</asp:ListItem>
                <asp:ListItem Value=6>2010</asp:ListItem>
                <asp:ListItem Value=5>2011</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label9" runat="server" Text="入学年份与选课总数有关" CssClass="TipLabel"></asp:Label>
        </div>
<asp:Label ID="AdminRegLabel" runat="server" Text="申请理由："></asp:Label>
<asp:TextBox ID="AdminRegText" runat="server" TextMode="MultiLine"></asp:TextBox>

        <asp:Button ID="AdminRegSubmit" runat="server" class="button" Text="注册管理员帐号" onclick="RegSubmit_Click" OnClientClick="return CheckForm(this);"/>
</form>
	
<div id="footer2" class="footer"><span class="footText">Copyright (c) Zhu Yiqing</span><a>关于</a>&nbsp;&nbsp;&nbsp;&nbsp;<a>English</a></div>



</body>

</html>