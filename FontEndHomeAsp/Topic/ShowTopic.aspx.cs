using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Topic_ShowTopic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string topicId = Request["topicId"];
        string topic_name = Request["topic_name"];
        string topic_describe = Request["topic_describe"];
        LabelTopic_name.Text = topic_name;
        LabelTopic_describe.Text = topic_describe;
        this.inputHiddenTopicId.Value = topicId;
        if (!string.IsNullOrEmpty(topicId))
        {
            try
            {
                CommentBLL commentBll=new CommentBLL();
                DataSet dataSet = commentBll.GetCommentDataSet(topicId);
                if (dataSet != null && dataSet.Tables[0].Rows.Count > 0)
                {
                    DataList1.DataSource = dataSet.Tables[0].DefaultView;
                    DataList1.DataBind();
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
            }
        }
    }
}