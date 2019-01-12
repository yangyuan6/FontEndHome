using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Admin_login : System.Web.UI.Page
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
        string phone = Request["name"];
        string pass = Request["password"];
        if (phone == null || pass == null || "".Equals(phone) || "".Equals(pass))
        {
            Response.Write("<script>alert('您输入的用户名或密码有误！');location.href='/Admin/login.aspx';</script>");
            return;
        }
        AdminBLL adminBll = new AdminBLL();
        DataSet dataSet = adminBll.Login(phone, pass);
        if (dataSet != null)
        {
            string userName = dataSet.Tables[0].Rows[0]["admin_name"].ToString();
            Session["adminName"] = userName;
            Session["adminId"] = dataSet.Tables[0].Rows[0]["id"].ToString();
            Session["adminPhoto"] = dataSet.Tables[0].Rows[0]["admin_photo"].ToString();
            Response.Redirect("/Admin/index");
        }
        else
        {
            Response.Write("<script>alert('您输入的用户名或密码有误！');location.href='/Admin/login.aspx';</script>");
        }
    }
}