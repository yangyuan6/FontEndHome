using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Topic_TopicList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TopicBLL topicBll = new TopicBLL();
        string keyword = Request["keyword"];
        if (string.IsNullOrEmpty(keyword))
        {
            DataSet dataSet = topicBll.GetTopicDataSet();
            if (dataSet != null && dataSet.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = dataSet.Tables[0].DefaultView;
                DataList1.DataBind();
            }
        }
        else
        {
            DataSet dataSet = topicBll.QueryTopic(keyword);
            if (dataSet != null && dataSet.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = dataSet.Tables[0].DefaultView;
                DataList1.DataBind();
            }
            else
            {
            }
        }
    }
}