using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void mailRegister(object sender, EventArgs e)
    {
        /*string emailnum = emailnumber.Value;
        string emailpwd = emailpassword.Value;
        string emailrepwd = emailpasswordRepeat.Value;

        if (emailpwd == emailrepwd)
        {
            Response.Write("<script>alert('注册成功！');location.href='Index.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('您两次输入的密码不一致，请重新输入！');location.href='Register.aspx';</script>");
        }*/
    }


    protected void phoneRegister(object sender, EventArgs e)
    {
        string phonenum = phone.Value;
        string phonepwd = phonepassword.Value;
        string phonerepwd = phonepasswordRepeat.Value;
        string checkCode = code.Value;
        string ccc = (string)Session["cc"];
        if (!checkCode.Equals(ccc))
        {
            Response.Write("<script>alert('手机验证码错误，请重新输入！');location.href='Register.aspx';</script>");
            return;
        }
        if (phonepwd == phonerepwd)
        {
            UserBLL userBll=new UserBLL();
            if (userBll.addUser(userName.Value, phonenum, phonepwd))
            {
                Response.Write("<script>alert('注册成功！');location.href='/index.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('注册失败！');location.href='Register.aspx';</script>");
            }

        }
        else
        {
            Response.Write("<script>alert('您两次输入的密码不一致，请重新输入！');location.href='Register.aspx';</script>");
        }
    }
}