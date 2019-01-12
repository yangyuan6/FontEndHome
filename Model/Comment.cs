using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Comment
    {
        public string Id { get; set; }
        public DateTime AddTime { get; set; }
        public string TopicId { get; set; }
        public string CommentContent { get; set; }
        public string UserId { get; set; }
    }
}