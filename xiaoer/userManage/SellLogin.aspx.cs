using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Manage_Login : System.Web.UI.Page
{
    CommonClass ccObj = new CommonClass();
    DBClass dbObj = new DBClass();
    UserClass ucObj = new UserClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.labValid.Text =ccObj.RandomNum(4);//产生验证码
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //判断用户是否已输入了必要的信息
        if (this.txtName.Text.Trim() == "" || this.txtPassword.Text.Trim() == "")
        {
            Response.Write(ccObj.MessageBox("登录名和密码不能为空！"));
        }
        else
        {
            //判断用户输入的验证码是否正确
            if (txtValid.Text.Trim() == labValid.Text.Trim())
            {
                //调用UserClass类的UserLogin方法判断用户是否为合法用户
                DataTable dsTable = ucObj.UserLogin(this.txtName.Text.Trim(), this.txtPassword.Text.Trim());
                if (dsTable != null) //判断用户是否存在
                {
                    Session["UserID"] = Convert.ToInt32(dsTable.Rows[0][0].ToString()); //保存用户ID
                    Session["Username"] = dsTable.Rows[0][1].ToString(); //保存用户登录名
                    //Response.Redirect(Request.CurrentExecutionFilePath); //跳转到当前请求的虚拟路径
                    Response.Redirect("SellManage.aspx"); //跳转到当前请求的虚拟路径
                }
                else
                {
                    Response.Write(ccObj.MessageBoxPage("您的登录有误，请核对后再重新登录！"));
                }
            }
            else
            {
                Response.Write(ccObj.MessageBoxPage("请正确输入验证码！"));
            }
        }
    }
       
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>window.close();location='javascript:history.go(-1)';</script>");
        Response.Redirect("../First.aspx");
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}
