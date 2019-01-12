using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class AdminBLL
    {
        private AdminDAL adminDal=new AdminDAL();
        public DataSet Login(string adminName, string adminPassword)
        {
            return adminDal.Login(adminName, adminPassword);
        }
    }
}
