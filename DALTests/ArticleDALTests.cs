using Microsoft.VisualStudio.TestTools.UnitTesting;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Tests
{
    [TestClass()]
    public class ArticleDALTests
    {
        [TestMethod()]
        public void GetArticleDataSetTest()
        {
            DataSet dataSet = new ArticleDAL().GetArticleDataSet();
            for (int i = 0; i < dataSet.Tables[0].Rows.Count; i++)
            {
                Console.WriteLine(dataSet.Tables[0].Rows[i]["article_name"]);
            }
        }

        [TestMethod()]
        public void queryArticleTest()
        {
            DataSet dataSet = new ArticleDAL().queryArticle("plgy");
            for (int i = 0; i < dataSet.Tables[0].Rows.Count; i++)
            {
                string article_name = (string)dataSet.Tables[0].Rows[i]["article_name"];
               
            }
        }
    }
}