<%@ WebHandler Language="C#" Class="addComment" %>

using System;
using System.Collections.Generic;
using System.Web;
using BLL;
using Model;
using Util;

public class addComment : IHttpHandler,System.Web.SessionState.IRequiresSessionState {

    public void ProcessRequest (HttpContext context)
    {
        Dictionary<string, string> dict = new Dictionary<string, string>();
       // string userId = (string)context.Session["userPhone"];
        string userId = "156611";
        if (string.IsNullOrEmpty(userId))
        {
            dict.Add("state", "2");
            dict.Add("msg", "您还没有登录");
            dict.Add("url", "/User/login.aspx");
            string json = JsonHelper.SerializeObject(dict);
            context.Response.Write(json);
        }
        else
        {
            string topicId = context.Request["topicId"];
            string commentConent = context.Request["commentConent"];
            if (string.IsNullOrEmpty(topicId) || string.IsNullOrEmpty(commentConent))
            {
                dict.Add("state", "0");
                dict.Add("msg", "参数错误");
                string json = JsonHelper.SerializeObject(dict);
                context.Response.Write(json);
            }
            else
            {
                CommentBLL commentBll=new CommentBLL();
                Comment comment=new Comment();
                comment.CommentContent = commentConent;
                comment.TopicId = topicId;
                comment.UserId = userId;
                if (commentBll.addComment(comment))
                {
                    dict.Add("state", "1");
                    dict.Add("msg", "评论成功");
                   // dict.Add("userPhoto", context.Session["userPhoto"].ToString());
                   dict.Add("userPhoto","http://www.wsfjq.com/photos/bd13471794.jpg");
                    string json = JsonHelper.SerializeObject(dict);
                    context.Response.Write(json);
                }
                else
                {
                    dict.Add("state", "0");
                    dict.Add("msg", "评论失败");
                    string json = JsonHelper.SerializeObject(dict);
                    context.Response.Write(json);
                }
            }
        }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}