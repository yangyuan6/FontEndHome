using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using DAL;
using Model;

namespace BLL
{
    public class TopicBLL
    {
        private TopicDAL topicDal=new TopicDAL();

        public DataSet GetTopicDataSet()
        {
            return topicDal.GetTopicDataSet();
        }

        public List<Topic> GetTopics()
        {
            return topicDal.GetTopics();
        }

        public bool deleteTopic(Topic topic)
        {
            return topicDal.DeleteTopicById(topic.Id);
        }

        public DataSet QueryTopic(string keyword)
        {
            return topicDal.QueryTopic(keyword);
        }
    }
}