<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseList.aspx.cs" Inherits="Default2"  Debug="true"%>
<%@ Import Namespace="System.Data.OleDb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/index.css" media="screen"/>
    <title></title>
</head>
<body style="background-color: #fff">
    <form id="form1" runat="server">
    <div id="mainframe">
    <div id="TableTitle">
        <table>
            <tr>
                <td style="width: 168px")>课程名称</td>
                <td style="width: 100px">上课时间</td>
                <td style="width: 100px">上课地点</td>
                <td style="width: 87px">人数限额</td>
                <td style="width: 95px">已选人数</td>
            </tr>
        </table>
    </div>
                <asp:DataGrid id="List1" runat="server" AutoGenerateColumns="False" CssClass="list" CellPadding="10" GridLines="None" >
                    <AlternatingItemStyle CssClass="listAlternating"/>
                <Columns>
                    <asp:BoundColumn DataField="CourseName">
                        <HeaderStyle Width="180px" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="CourseTime">
                        <HeaderStyle Width="100px" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="CourseAddress">
                        <HeaderStyle Width="100px" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="MaxPopulation">
                        <HeaderStyle Width="85px"/>
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Population">
                        <HeaderStyle Width="85px" />
                    </asp:BoundColumn>
                </Columns>

                    <ItemStyle CssClass="listItem"/>
            </asp:DataGrid>
    </div>
    </form>
</body>
</html>
