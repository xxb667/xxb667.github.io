<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu.ascx.cs" Inherits="userControl_menu" %>
 <style type="text/css">
     .auto-style1 {
         width: 778px;
         height: 53px;
     }
     .auto-style2 {
         width: 778px;
         height: 159px;
     }
     .auto-style3 {
         height: 20px;
         width: 758px;
         margin-top: 0px;
     }
     .auto-style4 {
         height: 51px;
         margin-top: 51px;
     }
     .auto-style5 {
         width: 824px;
         height: 31px;
     }
 </style>
 <table style="　font-size: 9pt; font-family: 宋体; vertical-align :top; background-image: url('../images/1.jpg'); background-repeat:no-repeat"  border="0" cellpadding="0" cellspacing="0" class="auto-style2">
    <tr valign =top >
    <td  align =left  valign =top class="auto-style1">
     <p align="right" class="auto-style3">
         &nbsp; &nbsp;
     <a href="mailto:mingrisoft@mingrisoft.com" style=" color:Black; font-size: 9pt; font-family: 宋体;  text-decoration :none;">联系客服</a> 

          |<a href="mailto:mingrisoft@mingrisoft.com" style=" color:Black; font-size: 9pt; font-family: 宋体;  text-decoration :none;">个人中心</a> 

    |<a href="#" style=" color:Black; font-size: 9pt; font-family: 宋体;  text-decoration :none;" onclick ="this.style.behavior='url(#default#homepage)';this.sethomepage('hppt://www.mingrisoft.com')">设置主页</a>
    |<a href="#" onclick="window.external.addFavorite('http://www.mingrisoft.com','小二在线平台');"><font color="white" style=" color:Black; font-size: 9pt; font-family: 宋体;  text-decoration :none;">收藏本站</font></a>&nbsp;
        </p>
        <p class="auto-style4" >
       <%-- <p align="right">--%>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="shopCart.aspx" style=" color:Black; font-size: 12pt; font-family: 宋体;  text-decoration :none;"><font color =black>购物车</font></a>
    |<a href="buyFlow.aspx" style=" color:Black; font-size: 12pt; font-family: 宋体;  text-decoration :none;"><font color =black>购物流程</font></a>

             |<a href="shopCart.aspx" style=" color:Black; font-size: 12pt; font-family: 宋体;  text-decoration :none;"><font color =black>论坛</font></a>

             |<a href="shopCart.aspx" style=" color:Black; font-size: 12pt; font-family: 宋体;  text-decoration :none;"><font color =black>失物招领</font></a>

    |<asp:LinkButton ID="lnkbtnfeedback" runat="server" Font-Underline=false  ForeColor =black OnClick="lnkbtnfeedback_Click" CausesValidation="False" >网站留言</asp:LinkButton>
    |<asp:LinkButton ID="lnkbtnMyWord" runat="server" Font-Underline=false ForeColor =black OnClick="lnkbtnMyWord_Click" CausesValidation="False" >我的留言</asp:LinkButton>
    |<asp:LinkButton ID="lnkbtnOut" runat="server" Font-Underline=false ForeColor =black OnClick="lnkbtnOut_Click" CausesValidation="False" >退出登录</asp:LinkButton>&nbsp;&nbsp;
        </p>
   
        <p align="center" class="auto-style5">
        
           <%-- &nbsp; &nbsp; &nbsp;<asp:Label ID="labDate"
                runat="server" Text="Label" BorderColor="White" BackColor="#66FFFF"></asp:Label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--%>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Font-Underline="False" BorderColor="#66FFFF" >首页</asp:HyperLink>
           <%-- <font color="black">|&nbsp; </font>--%>

       <%-- <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/goodsList.aspx?var=1&&id=1 " Font-Underline="False" >新品上市</asp:HyperLink>
            <font color="black">|&nbsp; </font>--%>
       |&nbsp; <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/goodsList.aspx?id=2&&var=1" Font-Underline="False" >精品推荐</asp:HyperLink>

<%--            <font color="black">|&nbsp; </font>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/goodsList.aspx?id=3&&var=1" Font-Underline="False">特价商品</asp:HyperLink>--%>
           <%-- <font color="black">|&nbsp; </font>--%>
       |&nbsp; <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/goodsList.aspx?id=4&&var=1" Font-Underline="False" BorderColor="Aqua" >热销商品</asp:HyperLink>
        <br />
       </td> 
     </tr> 
     </table>
