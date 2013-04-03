<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateCourse.aspx.cs" Inherits="Default2"  Debug="true" enableEventValidation="false" %>

<%@ Import Namespace="System.Data.OleDb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta http-equiv="Content-Type" content="charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/index.css" media="screen"/>
    <title></title>
    <script type="text/javascript" src="Scripts/Validate.js"></script>

</head>
<body style="background-color: #fff">
    <form id="form1" runat="server">
    <div id="mainframe">
    <div id="TableTitle">
        <table>
            <tr>
                <td style="width: 155px">课程名称</td>
                <td style="width: 85px">上课时间</td>
                <td style="width: 80px">上课地点</td>
                <td style="width: 130px">人数限额</td>
                <td style="width: 50px"> </td>
                <td style="width: 50px"> </td>
            </tr>
        </table>
    </div>
                <asp:DataGrid ID="List1" runat="server" AutoGenerateColumns="False" DataKeyField="ID" onitemcommand="IfClicked" CssClass="list" CellPadding="10" GridLines="None" >
                    <AlternatingItemStyle CssClass="listAlternating"/>
                <Columns>
                    <asp:BoundColumn DataField="CourseName" ><HeaderStyle Width="200px" /></asp:BoundColumn>
                    <asp:BoundColumn DataField="CourseTime" ><HeaderStyle Width="85px" /></asp:BoundColumn>
                    <asp:BoundColumn DataField="CourseAddress" ><HeaderStyle Width="85px" /></asp:BoundColumn>
                    <asp:BoundColumn DataField="MaxPopulation" ><HeaderStyle Width="80px" /></asp:BoundColumn>
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="EditCourse" 
                                Text="编辑" class="ControlButton"/> 
                        </ItemTemplate>
                        <HeaderStyle Width="50px" />
                    </asp:TemplateColumn>
                                        <asp:TemplateColumn>
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="DeleteCourse" 
                                Text="删除" class="DeleteButton" OnClientClick="return CheckDelete();"/> 
                        </ItemTemplate>
                        <HeaderStyle Width="50px" />
                    </asp:TemplateColumn>

                </Columns>
                <ItemStyle CssClass="listItem"/>
            </asp:DataGrid>
    </div>
    </form>
</body>
</html>
