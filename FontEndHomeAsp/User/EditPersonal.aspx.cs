using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Util;

public partial class User_EditPersonal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userPhone = (string)Session["userPhone"];
        if (string.IsNullOrEmpty(userPhone))
        {
            Response.Redirect("/User/login.aspx");
        }
    }

    protected void uploadPersonalInfo(object sender, EventArgs e)
    {
        try
        {
            string fileName;
            string[] str;

            if (FileUpload_userPhoto.PostedFile.ContentLength != 0)
            {
                string savepath = Server.MapPath("~/upload/");
                string userNamestr = Text_userName.Value;
                if (!System.IO.Directory.Exists(savepath))
                {
                    System.IO.Directory.CreateDirectory(savepath);
                }
                fileName = FileUpload_userPhoto.PostedFile.FileName.ToString();
                str = fileName.Split('\\');
                savepath = savepath + "\\" + str[str.Length - 1];
                FileUpload_userPhoto.PostedFile.SaveAs(savepath);
                string photourl = QiniuUploadUtil.upLoadImg(savepath, str[str.Length - 1]);
                File.Delete(savepath);
                string userPhone = (string)Session["userPhone"];
                UserBLL userBll = new UserBLL();
                userBll.updateUser(userNamestr, photourl, userPhone);
                Response.Write("<script>alert('提交成功');</script>");


            }
        }
        catch (Exception exception)
        {
            Console.WriteLine(exception);
            Response.Write("<script>alert('参数错误');</script>");
        }
    }
}