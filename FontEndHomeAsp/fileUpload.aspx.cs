using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Util;

public partial class fileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
protected void upload_click(object sender, EventArgs e)
{
    string fileName;
    string[] str;
    if (FileUpload1.PostedFile.ContentLength != 0)
    {
        string savepath = Server.MapPath("~/upload/");
        if (!System.IO.Directory.Exists(savepath))
        {
            System.IO.Directory.CreateDirectory(savepath);
            }
        fileName = FileUpload1.PostedFile.FileName.ToString();
        str = fileName.Split('\\');
        savepath = savepath + "\\" + str[str.Length-1];
            FileUpload1.PostedFile.SaveAs(savepath);
        string photourl=QiniuUploadUtil.upLoadImg(savepath, str[str.Length - 1]);
        File.Delete(savepath);
         Response.Write("<script>alert("+savepath+");</script>");
   
        }
}
}