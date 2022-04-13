<%@ Page Language="C#" AutoEventWireup="true" CodeFile="First.aspx.cs" Inherits="First" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="text-align:center">
    <form id="form1" runat="server" >
        <div>
      <h1> 请选择身份：</h1>      
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBuy" runat="server" Text="买家" OnClick="btnBuy_Click" BackColor="#66FFFF" Width="300px" Font-Size="XX-Large" />
            <br />
           
            <br />
&nbsp;&nbsp; &nbsp;
            <asp:Button ID="btnSell" runat="server" Text="卖家" OnClick="btnSell_Click" BackColor="#66FFFF" Width="300px" Font-Size="XX-Large" />
            <br />
            <br /> 
            &nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="btnAdmin" runat="server" Text="管理员" BackColor="#66FFFF" OnClick="btnAdmin_Click" Width="300px" Font-Size="XX-Large" />
        </div>
    </form>
</body>
</html>
