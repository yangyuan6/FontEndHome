using Microsoft.VisualStudio.TestTools.UnitTesting;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL.Tests
{
    [TestClass()]
    public class TopicDALTests
    {
        [TestMethod()]
        public void addTopicTest()
        {
            Topic topic = new Topic();
            topic.TopicName = "#说个身边的小故事、小秘密呗#";
            topic.TopicDescribe = "***";
            new TopicDAL().addTopic(topic);
        }

        [TestMethod()]
        public void DeleteTopicByIdTest()
        {
            new TopicDAL().DeleteTopicById("aa4f8c1e6b22486792dec2500c18b461");
        }
    }
}