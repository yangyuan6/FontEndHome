using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using Util;

public partial class Ajax_addArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.HttpMethod.Equals("POST"))
        {
            doAddArticle();
        }
    }

    private void doAddArticle()
    {
        Article article = new Article();
        article.ArticleName = Request["articleName"];
        article.Content = Request["content"];
        string contentEncode = this.htmlEncode(article.Content);
        article.Typeid = Request["typeid"];
        string userId = (string) Session["userPhone"];
        
        if (string.IsNullOrEmpty(userId))
        {

            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("state", "2");
            dict.Add("msg", "请登录");
            dict.Add("url", "/User/login.aspx");
            Response.Write(JsonHelper.SerializeObject(dict));
            return;
        }
        article.UserId = userId;
        article.ContentEncode = contentEncode;
        ArticleBLL articleBll = new ArticleBLL();
        if (articleBll.addArticle(article))
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("state", "1");
            dict.Add("msg", "添加成功！");
            dict.Add("url", "/index");
            string json = JsonHelper.SerializeObject(dict);
            Response.Write(json);
        }
        else
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("state", "0");
            dict.Add("msg", "添加失败");
            Response.Write(JsonHelper.SerializeObject(dict));
        }


    }
    private string htmlEncode(string str)
    {
        return Server.HtmlEncode(str).Replace("\n", "<br/>").Replace(" ", " ");
    }
}