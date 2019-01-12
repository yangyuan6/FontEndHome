using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Model
{
    public class Article
    {
        public string Id { get; set; }
        public DateTime AddTime { get; set; }

        public string ArticleName { get; set; }

        public string Typeid { get; set; }
        public Type ArticleType { get; set; }
        public string Content { get; set; }
        public User Author { get; set; }
        public string UserId { get; set; }
        public string ContentEncode { get; set; }
    }
}