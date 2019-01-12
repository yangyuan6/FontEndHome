using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class AdminDAL
    {
        private SQLHelper sqlHelper = new SQLHelper();
        public DataSet Login(string adminName, string adminPassword)
        {
            string sqlStr = "select * from [tb_admin] where admin_name=@admin_name and admin_password=@admin_password";
            SqlParameter[] sqlParameters =
            {
                new SqlParameter("@admin_name",adminName),
                new SqlParameter("@admin_password",adminPassword),
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
    }
}
