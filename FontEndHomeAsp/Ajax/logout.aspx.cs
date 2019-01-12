using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ajax_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["userName"] = "";
        Session["userPhone"] = "";
        Session["userId"] = "";
        Session["userPhoto"] = "";
        Session.Clear();
        Response.Redirect("/index.aspx");

    }
}