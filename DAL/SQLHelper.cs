using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace DAL
{
    public class SQLHelper
    {
        private static SqlConnection con;
        private static string conStr = "Data Source=(localdb)\\Projects;Initial Catalog=fondendhome;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";

        #region Connection属性
        public static SqlConnection Con
        {
            get {
                if (con == null)
                {
                    con = new SqlConnection(conStr);
                    con.Open();
                }
                else if (con.State == ConnectionState.Broken) {
                    con.Close();
                    con.Open();
                }
                else if (con.State == ConnectionState.Closed) {
                    con.Open();
                }
                return SQLHelper.con;
            }
            set { SQLHelper.con = value; }
        }
        #endregion
        
        #region 填充数据对象，参数为sql语句字符串，parameter参数
        //根据查询条件填充数据
        //返回数据集对象
        public DataSet GetDataSet(string sqlStr, SqlParameter[] param) {
            
            SqlCommand cmd = new SqlCommand(sqlStr, Con);
            cmd.Parameters.AddRange(param);
            DataSet ds = new DataSet();
            SqlDataAdapter dapt = new SqlDataAdapter(cmd);
            dapt.Fill(ds);
            if (ds != null && ds.Tables[0].Rows.Count > 0)
            {
                return ds;
            }
            else
            {
                return null;
            }
           
        }
        #endregion
        #region 填充数据对象，参数为sql语句字符串
        public DataSet GetDataSet(string sqlStr) {
            SqlCommand cmd = new SqlCommand(sqlStr, Con);
            DataSet ds = new DataSet();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            sqlDataAdapter.Fill(ds);
            if (ds != null && ds.Tables[0].Rows.Count > 0)
            {
                return ds;
            }
            else
            {
                return null;
            }

        }
        #endregion
        public bool ExcuteCommand(string sqlStr) {
            SqlCommand cmd = new SqlCommand(sqlStr, Con);
            cmd.ExecuteNonQuery();
            return true;
        }
        public bool ExcuteCommand(string sqlStr, SqlParameter[] param) {
            SqlCommand cmd = new SqlCommand(sqlStr, Con);
            cmd.Parameters.AddRange(param);
            cmd.ExecuteNonQuery();
            return true;
        }
    }

}