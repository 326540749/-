<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainIndex.aspx.cs" Inherits="WebAutomaticCheckIn.MainIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="text-align: center; color: orangered; font-size: 19px; margin: auto auto; width: 1024px;" border="1">
                <tr>
                    <td colspan="4">会议签到结束</td>
                </tr>
                <tr>
                    <td>昵称：</td>
                    <td><%=vName %></td>
                    <td>性别：</td>
                    <td>女</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
