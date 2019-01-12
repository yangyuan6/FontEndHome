using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using DAL;
using Model;
namespace BLL
{
    public class ArticleBLL
    {
        private ArticleDAL articleDal=new ArticleDAL();
        public bool addArticle(Article article)
        {
            return articleDal.addArticle(article);
        }

        public DataSet GetArticleDataSet()
        {
            return articleDal.GetArticleDataSet();
        }

        public Article GetArticleByid(string articleId)
        {
           return articleDal.GetArticleByid(articleId);
        }

        public DataSet queryArticle(string keyword)
        {
            return articleDal.queryArticle(keyword);
        }
    }
}