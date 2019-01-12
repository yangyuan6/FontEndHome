using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Article_showArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string articleIdStr = Request["articleId"];
        if (string.IsNullOrEmpty(articleIdStr))
        {
            Response.Redirect("/index");
        }
        else
        {
            articleId.Value = Request["articleId"];
        }
    }
}