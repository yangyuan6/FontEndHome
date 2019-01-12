using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class User_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.HttpMethod.Equals("POST"))
        {
            login();
        }
    }

    protected void login()
    {
        string phone = Request["phone"];
        string pass = Request["password"];
        if (phone==null||pass==null||"".Equals(phone) || "".Equals(pass))
        {
            Response.Write("<script>alert('您输入的用户名或密码有误！');location.href='/User/login.aspx';</script>");
            return;
        }
        UserBLL userbll=new UserBLL();
        DataSet dataSet= userbll.Login(phone, pass);
        if (dataSet != null)
        {
            string userName = dataSet.Tables[0].Rows[0]["user_name"].ToString();
            Session["userName"] = userName;
            Session["userPhone"] = phone;
            Session["userId"]= phone;
            Session["userPhoto"]= dataSet.Tables[0].Rows[0]["user_photo"].ToString();
            Response.Redirect("/index");
        }
        else
        {
            Response.Write("<script>alert('您输入的用户名或密码有误！');location.href='/User/login.aspx';</script>");
        }
    }
}