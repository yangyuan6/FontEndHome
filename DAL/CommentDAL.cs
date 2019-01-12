using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Model;
using Util;

namespace DAL
{
    public class CommentDAL
    {
        private SQLHelper sqlHelper = new SQLHelper();
        public bool addComment(Comment comment)
        {
            string sqlStr = "insert into [tb_comment](id,comment_content,add_time,topic_id,user_id) values(@id,@comment_content,@add_time,@topic_id,@user_id);";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@id", IDUtil.doAction()),
                    new SqlParameter("@comment_content", comment.CommentContent),
                    new SqlParameter("@add_time", DateTime.Now),
                    new SqlParameter("@topic_id", comment.TopicId),
                    new SqlParameter("@user_id", comment.UserId),
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
        public DataSet GetCommentDataSet(string topicId)
        {
            string sqlStr = "SELECT tb_comment.id,tb_comment.add_time,tb_comment.comment_content,tb_comment.user_id,tb_user.user_photo,tb_user.user_name from tb_comment inner join tb_user on tb_comment.user_id=tb_user.user_phone where topic_id=@topic_id;";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@topic_id", topicId),
                };
            DataSet dataSet = sqlHelper.GetDataSet(sqlStr, parameters);
            return dataSet;
        }
        public DataSet GetCommentDataSet()
        {
            string sqlStr = "SELECT tb_comment.id,tb_comment.add_time,tb_comment.comment_content,tb_comment.user_id,tb_user.user_photo,tb_user.user_name from tb_comment inner join tb_user on tb_comment.user_id=tb_user.user_phone";
 
            DataSet dataSet = sqlHelper.GetDataSet(sqlStr);
            return dataSet;
        }

        public bool deleteCommentById(string commentId)
        {
            string sqlStr = "delete from [tb_comment] where id=@id";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@id", commentId),
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
    }
}