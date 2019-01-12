<%@ WebHandler Language="C#" Class="getArticleById" %>

using System;
using System.Collections.Generic;
using System.Web;
using BLL;
using Model;
using Util;

public class getArticleById : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        /*context.Response.ContentType = "text/plain";
        context.Response.Write("Hello World");*/
        try
        {
            string articleId = context.Request["articleId"];
            ArticleBLL articleBll=new ArticleBLL();
            Article article = articleBll.GetArticleByid(articleId);
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("state", "1");
            dict.Add("msg", "添加成功！");
            dict.Add("article_name", article.ArticleName);
            dict.Add("content", article.Content);
            dict.Add("userid", article.UserId);
            dict.Add("typeid", article.Typeid);
            dict.Add("type_name", article.ArticleType.TypeName);
            dict.Add("user_name", article.UserId);
            dict.Add("user_photo", article.UserId);
            string json = JsonHelper.SerializeObject(dict);
            context.Response.Write(json);
        }
        catch (Exception e)
        {   Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("state", "0");
            dict.Add("msg", "没有该文章");
            dict.Add("url", "/index");
            string json = JsonHelper.SerializeObject(dict);
            context.Response.Write(json);
        }
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}