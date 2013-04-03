<%@ Page Language="C#"
    CodeFile="Default.aspx.cs" Inherits="_Default" Debug="true"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/index.css" media="screen"/>

  <title>学生选课系统</title>
</head>

<body>

<div id="navBar">
	<div class="titleMain">
		<div id="logo"></div>
		<div class="userInfo"><p>注册&nbsp;&nbsp;|&nbsp;&nbsp;登录</p></div>
	</div>
	
</div>

<div id="bodyMain">
	<div id="login">
		<img id="loginTitle" src="images/login2.png" alt="loginTitle"/>
		<div class="line"> </div>
			<form method='post' runat="server">
            <asp:Panel ID="pl1" runat="server">
			    <table>
				    <tr>
				    	<td><div id="loginEmailImg" /></div>
				    	<asp:TextBox ID="tbMail" runat="server" class="loginInput"></asp:TextBox>
					
				    	</td>
			    	</tr>
				    <tr>
				    	<td><div id="loginPwImg" /></div>
				    	<asp:TextBox ID="tbPW" runat="server" TextMode="Password"></asp:TextBox><td>
				    </tr>
				    <tr>
				    	<td>
				    	<asp:Button ID="loginBtn" type="submit" runat="server" onclick="btnLogin_Click" class='button' Text="登录" />					
				    	</td>
				    </tr>
			</table> 
            </asp:Panel>
			<div id="stayLogin"><asp:Panel ID="pl2" runat="server" style = 'border:0'>
			<label>用户名或密码错误</label>
			</asp:Panel></div>
			</form>

		<div class="line" id="line2"> </div>

	<div id="forgetPwd"><a href='AdminReg.aspx'><p>想要申请成为管理员？</p></a></div>
	<div id="suggest"><a href='registration.aspx'>>> 点击这里注册新帐号 <<</a></div>

</div>


	<div id="update">
		<img id="updateTitle" src="images/update.png" />
		<div class="line" id="line3"> </div>
		<li>1.1 节日快乐</li><li>12.31 节日前一天快乐</li><li>12.30  节日前两天快乐</li>
	</div>


	<div id="rightPane">
		<div id="subNavigation"></div>
		<div id="contentPane">
			<div id="photo">这里应该有张图</div>
			<div id="about"><h1>学生选课系统</h1><li>所有界面设计部分均为原创。右边四个方块代表主要会用到的前景色。</li><p><li>还有很多需要改的地方，ado有点难理解。</li><p></div>
			<div id="icon1" class="icon"></div>
			<div id="icon2" class="icon"></div>
			<div id="icon3" class="icon"></div>
			<div id="icon4" class="icon"></div>
		</div>
	</div>
	
	<div class="footer" id="footer1"><span class="footText">Copyright (c) Zhu Yiqing</span><a>关于</a>&nbsp;&nbsp;&nbsp;&nbsp;<a>English</a></div>

</div>

</body>

</html>