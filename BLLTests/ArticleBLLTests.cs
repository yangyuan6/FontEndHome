using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL.Tests
{
    [TestClass()]
    public class ArticleBLLTests
    {
        [TestMethod()]
        public void GetArticleByidTest()
        {
            Article article=new ArticleBLL().GetArticleByid("8dd8091c04f54e1e903812f52d4eb356");
            Console.WriteLine(article.Author.userPhoto);
        }
    }
}