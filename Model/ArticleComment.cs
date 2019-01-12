using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class ArticleComment
    {
        private string id;
        private DateTime addTime;
        private string articleId;
        private string content;
        private string userId;
        

        public string Id {
            get { return id; }
            set { id = value; }
        }

        public DateTime AddTime
        {
            get { return addTime; }
            set { addTime = value; }
        }

        public string ArticleId
        {
            get { return articleId; }
            set { articleId = value; }
        }

        public string Content
        {
            get { return content; }
            set { content = value; }
        }
        public string UserId {
            get { return userId; }
            set { userId = value; }
        }
    }
}
