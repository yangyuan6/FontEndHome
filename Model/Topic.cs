using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Topic
    {
        public string Id { get; set; }
        public string TopicName { get; set; }
        public DateTime AddTime { get; set; }
        public string TopicDescribe { get; set; }
    }
}