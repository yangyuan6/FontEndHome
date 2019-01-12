using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using DAL;
using Model;

namespace BLL
{
    public class CommentBLL
    {
        private CommentDAL commentDal=new CommentDAL();

        public DataSet GetCommentDataSet(string topicId)
        {
            return commentDal.GetCommentDataSet(topicId);
        }

        public bool addComment(Comment comment)
        {
           return  commentDal.addComment(comment);
        }

        public DataSet GetCommentDataSet()
        {
           return commentDal.GetCommentDataSet();
        }

        public bool deleteCommentById(string commentId)
        {
            return commentDal.deleteCommentById(commentId);
        }
    }
}