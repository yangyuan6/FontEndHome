using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class index : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        ArticleBLL articleBll = new ArticleBLL();
        string keyword = Request["keyword"];
        if (string.IsNullOrEmpty(keyword))
        {

            DataSet dataSet = articleBll.GetArticleDataSet();
            if (dataSet != null && dataSet.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = dataSet.Tables[0].DefaultView;
                DataList1.DataBind();
            }
        }
        else
        {
            DataSet dataSet = articleBll.queryArticle(keyword);
            if (dataSet != null && dataSet.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = dataSet.Tables[0].DefaultView;
                DataList1.DataBind();
            }
        }


    }
}