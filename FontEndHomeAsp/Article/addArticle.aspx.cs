using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;
using Util;

public partial class Article_addArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userName = (string)Session["userName"];
        if (string.IsNullOrEmpty(userName))
        {
            Response.Redirect("/User/login.aspx");
        }
    }
}