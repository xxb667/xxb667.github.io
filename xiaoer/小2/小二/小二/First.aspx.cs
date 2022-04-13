using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class First : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuy_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void btnSell_Click(object sender, EventArgs e)
    {
        Response.Redirect("./userManage/SellManage.aspx");
    }

    protected void btnAdmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("./userManage/Login.aspx");
    }
}