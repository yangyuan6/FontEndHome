using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Request.HttpMethod);
        Response.Write(Request.Form["Text1"]);
        Response.Write("6666666");
        Response.Write(Request["Text1"]);
        /*Response.Write(Text1.Value);
        Response.Write(TextBox1.Text);*/
    }
}