using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using Util;

public partial class Ajax_ajaxtest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       string strID= Request.QueryString["id"];
        Dictionary<string, string> dict = new Dictionary<string, string>();
        dict.Add("state","1");
        dict.Add("msg","hello");
        dict.Add("id",strID);
        Response.Write(JsonHelper.SerializeObject(dict));

    }
}