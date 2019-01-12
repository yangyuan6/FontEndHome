using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Util;
using Model;

namespace DAL
{
    public class ArticleDAL
    {
        private SQLHelper sqlHelper=new SQLHelper();
        public bool addArticle(Article article)
        {
            string sqlStr = "insert into [tb_article](id,add_time,article_name,typeid,content,userid,content_encode)  values(@id,@add_time,@ArticleName,@typeid,@Content,@userid,@content_encode)";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@id", IDUtil.doAction()),
                    new SqlParameter("@add_time", DateTime.Now),
                    new SqlParameter("@ArticleName",article.ArticleName),
                    new SqlParameter("@typeid", article.Typeid),
                    new SqlParameter("@Content", article.Content),
                    new SqlParameter("@userid", article.UserId),
                    new SqlParameter("@content_encode",article.ContentEncode), 
                };
            if (sqlHelper.ExcuteCommand(sqlStr, parameters))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataSet GetArticleDataSet()
        {
            string sqlStr = "SELECT tb_article.id,tb_article.article_name,tb_article.content,tb_article.content_encode,tb_article.userid,tb_article.typeid,tb_type.type_name,tb_user.user_name,tb_user.user_photo FROM tb_article inner join tb_user on tb_article.userid=tb_user.user_phone inner join tb_type on tb_article.typeid=tb_type.id;";
            DataSet dataSet=sqlHelper.GetDataSet(sqlStr);
            return dataSet;
        }

        public Article GetArticleByid(string articleId)
        {
            string sqlStr = "SELECT tb_article.id,tb_article.article_name,tb_article.content,tb_article.content_encode,tb_article.userid,tb_article.typeid,tb_type.type_name,tb_user.user_name,tb_user.user_photo FROM tb_article inner join tb_user on tb_article.userid=tb_user.user_phone inner join tb_type on tb_article.typeid=tb_type.id WHERE tb_article.id=@articleId;";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@articleId", articleId),
                };
            DataSet dataSet= sqlHelper.GetDataSet(sqlStr, parameters);
            if (dataSet != null && dataSet.Tables[0].Rows.Count > 0)
            {
                Article article=new Article();
                article.ArticleName = dataSet.Tables[0].Rows[0]["article_name"].ToString();
                article.Content = dataSet.Tables[0].Rows[0]["content"].ToString();
                article.UserId = dataSet.Tables[0].Rows[0]["userid"].ToString();
                article.Typeid = dataSet.Tables[0].Rows[0]["typeid"].ToString();
                article.Author=new User();
                article.ArticleType=new Model.Type();
                article.ArticleType.TypeName = dataSet.Tables[0].Rows[0]["type_name"].ToString();
                article.Author.userName = dataSet.Tables[0].Rows[0]["user_name"].ToString();
                article.Author.userPhoto = dataSet.Tables[0].Rows[0]["user_photo"].ToString();
                return article;
            }
            else
            {
                return null;
            }
        }
        public bool deleteArticleById(string articleId)
        {
            string sqlStr = "delete from [tb_article] where id=@id";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@id", articleId),
                };
            if (sqlHelper.ExcuteCommand(sqlStr, parameters))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public DataSet queryArticle(string keyword)
        {
            /*string sqlStr = "SELECT tb_article.id,tb_article.article_name,tb_article.content,tb_article.content_encode,tb_article.userid,tb_article.typeid,tb_type.type_name,tb_user.user_name,tb_user.user_photo FROM tb_article inner join tb_user on tb_article.userid=tb_user.user_phone inner join tb_type on tb_article.typeid=tb_type.id WHERE tb_article.article_name like '%@keyword%' or tb_article.content like '%@keyword%' or tb_user.user_name like '%@keyword%';";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@keyword", keyword),
                };
            return sqlHelper.GetDataSet(sqlStr, parameters);*/
            string sqlStr = "SELECT tb_article.id,tb_article.article_name,tb_article.content,tb_article.content_encode,tb_article.userid,tb_article.typeid,tb_type.type_name,tb_user.user_name,tb_user.user_photo FROM tb_article inner join tb_user on tb_article.userid=tb_user.user_phone inner join tb_type on tb_article.typeid=tb_type.id WHERE tb_article.article_name like N'%" + keyword + "%' or tb_article.content like N'%" + keyword + "%' or tb_user.user_name like N'%" + keyword+"%';";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@keyword", keyword),
                };
            return sqlHelper.GetDataSet(sqlStr);
        }
    }
}