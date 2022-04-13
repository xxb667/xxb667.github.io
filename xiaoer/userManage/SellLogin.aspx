<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellLogin.aspx.cs" Inherits="Manage_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>管理员登录</title>
    <style >
   body {margin-top:0px}
        .auto-style1 {
            width: 273px;
            height: 86px;
        }
   </style> 
</head>
<body style="text-align: center;">
    <form id="form1" runat="server">
    <div style="width:310px; height:334px; background-image: url('../images/卖家登录.jpg');background-attachment:fixed;"  align =center >
    <br />
        <br />
        <br />
    <br />
    <br />
    <table style="font-size: 9pt;" border="0" cellpadding="0" cellspacing="0" align="left" class="auto-style1" >
            <tr style ="width: 152px;height: 18px;" valign =top >
                <td style="width: 263px" align =right>
                    用户名：</td>
                <td style="width: 113px">
                    <asp:TextBox ID="txtName" runat="server" Height="12px" Width="101px"></asp:TextBox></td>
                <td style="width: 51px">
                    </td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 263px;" valign="top" align =right>
                    密码：</td>
                <td style="width: 113px; " valign="top">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="101px" Height="12px"></asp:TextBox></td>
                <td style="width: 51px;" valign="top">
                    </td>
            </tr>
            <tr style="color: #000000" valign =top >
                <td style="width: 263px" align =right>
                     验证码 ：</td>
                <td style="width: 113px">
                    <asp:TextBox ID="txtValid" runat="server" Height="12px" Width="101px"></asp:TextBox></td>
                <td style="width: 51px" valign =top >
                    &nbsp; 
                    <asp:Label ID="labValid" runat="server"  BackColor="Silver">8888</asp:Label></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; height: 29px;" align =center >
          
                    &nbsp; &nbsp;&nbsp;&nbsp; <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click"/>
                   &nbsp; &nbsp;<asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" CausesValidation="False"/>
                    &nbsp;&nbsp;<asp:Button ID="btnCancel" runat="server" Text="返回" OnClick="btnCancel_Click" CausesValidation="False"/>&nbsp; </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
