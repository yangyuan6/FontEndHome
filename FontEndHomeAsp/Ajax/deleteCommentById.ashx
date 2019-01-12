<%@ WebHandler Language="C#" Class="deleteCommentById" %>

using System;
using System.Collections.Generic;
using System.Web;
using BLL;
using Model;
using Util;

public class deleteCommentById : IHttpHandler,System.Web.SessionState.IRequiresSessionState  {

    public void ProcessRequest (HttpContext context) {
        string commentId = context.Request["commentId"];
        Dictionary<string, string> dict = new Dictionary<string, string>();
        try
        {
            CommentBLL commentBll=new CommentBLL();
            string adminName = (string)context.Session["adminName"];
            if (string.IsNullOrEmpty(commentId))
            {
                //
                dict.Add("state", "0");
                dict.Add("msg", "参数错误！");
                string json = JsonHelper.SerializeObject(dict);
                context.Response.Write(json);
                    return;

            }
          /*  if (string.IsNullOrEmpty(adminName))
            {
                dict.Add("state", "2");
                dict.Add("msg", "请先登录！");
                string json = JsonHelper.SerializeObject(dict);
                context.Response.Write(json);
                return;
            }*/
            if (commentBll.deleteCommentById(commentId))
            {
                dict.Add("state", "1");
                dict.Add("msg", "删除成功！");
                string json = JsonHelper.SerializeObject(dict);
                context.Response.Write(json);
            }
            else
            {
                dict.Add("state", "0");
                dict.Add("msg", "删除失败！");
                string json = JsonHelper.SerializeObject(dict);
                context.Response.Write(json);
            }  
        }
        catch (Exception e)
        {   dict.Add("state", "0");
            dict.Add("msg", "删除失败！");
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