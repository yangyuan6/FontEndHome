using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Resource
    {
        public int Id { get; set; }
        public DateTime AddTime { get; set; }
        public string ResourceDescribe { get; set; }
        public string ResoruceUrl { get; set; }
    }
}