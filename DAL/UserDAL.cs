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
    public class UserDAL
    {
        private SQLHelper sqlHelper = new SQLHelper();
        public bool addUser(string userName,string userPhone,string  userPass)
        {
            string sqlStr = "insert into [tb_user](user_name,user_phone,user_password,user_photo) values(@userName,@userPhone,@userPass,@userPhoto)";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@userName", userName),
                    new SqlParameter("@userPhone", userPhone),
                    new SqlParameter("@userPass", userPass),
                    new SqlParameter("@userPhoto", "http://www.wsfjq.com/photos/bd13471794.jpg")
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

        public DataSet Login(string userPhone, string userPassword)
        {
            string sqlStr = "select * from [tb_user] where user_phone=@userPhone and user_password=@userPassword";
            SqlParameter[] sqlParameters =
            {
                new SqlParameter("@userPhone",userPhone),
                new SqlParameter("@userPassword",userPassword), 
            };
            DataSet dataset=sqlHelper.GetDataSet(sqlStr,sqlParameters);
            if (dataset != null && dataset.Tables[0].Rows.Count > 0)
            {
                return dataset;
            }
            else
            {
                return null;
            }
        }
        public DataSet LoginByPhone(string userPhone, string userPassword)
        {
            string sqlStr = "select * from [tb_user] where user_phone=@userPhone and user_password=@userPassword";
            SqlParameter[] sqlParameters =
            {
                new SqlParameter("@userPhone",userPhone),
                new SqlParameter("@userPassword",userPassword), 
            };
            DataSet dataset = sqlHelper.GetDataSet(sqlStr, sqlParameters);
            if (dataset != null && dataset.Tables[0].Rows.Count > 0)
            {
                return dataset;
            }
            else
            {
                return null;
            }
        }
        public bool deleteUserById(string userId)
        {
            string sqlStr = "delete from [tb_user] where id=@id";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@id", userId),
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

        public bool updateUser(string userName, string userPhoto,string userPhone)
        {

            string sqlStr = "update  [tb_user] set user_name=@userName,user_photo=@userPhoto  WHERE user_phone=@userPhone";
            SqlParameter[] parameters
                =
                {
                    new SqlParameter("@userName", userName),
                    new SqlParameter("@userPhoto", userPhoto),
                    new SqlParameter("@userPhone", userPhone),
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