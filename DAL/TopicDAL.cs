using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using Model;
using Util;

namespace DAL
{
    public class TopicDAL
    {
        private SQLHelper sqlHelper = new SQLHelper();
        public bool addTopic(Topic topic)
        {
            string sqlStr = "insert into [tb_topic](id,topic_name,add_time,topic_describe) values(@id,@topic_name,@add_time,@topic_describe)";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@id", IDUtil.doAction()),
                    new SqlParameter("@topic_name", topic.TopicName),
                    new SqlParameter("@add_time", DateTime.Now),  
                    new SqlParameter("@topic_describe", topic.TopicDescribe),
                };
            if (sqlHelper.ExcuteCommand(sqlStr, parameters))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public DataSet GetTopicDataSet()
        {
            string sqlStr = "SELECT * from [tb_topic];";
            DataSet dataSet = sqlHelper.GetDataSet(sqlStr);
            return dataSet;
        }
        public bool DeleteTopicById(string topicId)
        {
            string sqlStr = "delete from [tb_topic] where id=@id";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@id", topicId),
                };
            if (sqlHelper.ExcuteCommand(sqlStr, parameters))
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public List<Topic> GetTopics()
        {
            string sqlStr = "SELECT * from [tb_topic];";
            DataSet dataSet = sqlHelper.GetDataSet(sqlStr);
            if (dataSet != null && dataSet.Tables[0].Rows.Count > 0)
            {
                List<Topic> topics=new List<Topic>();
                DateTimeFormatInfo dateTimeFormatInfo=new System.Globalization.DateTimeFormatInfo();
                dateTimeFormatInfo.FullDateTimePattern = "yyyy/MM/dd HH:mm:ss";
                for (int i = 0; i < dataSet.Tables[0].Rows.Count; i++)
                {
                    Topic topic=new Topic();
                    topic.AddTime = Convert.ToDateTime(dataSet.Tables[0].Rows[i]["add_time"].ToString(),dateTimeFormatInfo);
                    topic.Id = dataSet.Tables[0].Rows[i]["id"].ToString();
                    topic.TopicDescribe = dataSet.Tables[0].Rows[i]["topic_describe"].ToString();
                    topic.TopicName = dataSet.Tables[0].Rows[i]["topic_name"].ToString();
                    topics.Add(topic);

                }
                return topics;

            }
            else
            {
                return null;
            }
        }

        public DataSet QueryTopic(string keyword)
        {
            string sqlStr = "SELECT * from [tb_topic] where topic_name like N'%"+ keyword + "%' or topic_describe like N'%" + keyword + "%';";
            DataSet dataSet = sqlHelper.GetDataSet(sqlStr);
            return dataSet;
           /* string sqlStr = "SELECT * from [tb_topic] where topic_name like '%@keyword %' or topic_describe like '%@keyword%';";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@keyword", keyword),
                };
            DataSet dataSet = sqlHelper.GetDataSet(sqlStr, parameters);
            return dataSet;*/
        }


    }
}