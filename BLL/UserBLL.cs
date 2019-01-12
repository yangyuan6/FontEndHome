using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using DAL;

namespace BLL
{
    public class UserBLL
    {
        UserDAL userDal=new UserDAL();
        public DataSet Login(string userPhone, string userPassword)
        {
            return userDal.Login(userPhone,userPassword);
        }

        public bool addUser(string userName, string userPhone, string userPass)
        {
            return userDal.addUser(userName, userPhone, userPass);
        }

        public bool updateUser(string userName, string userPhoto, string userPhone)
        {
            return userDal.updateUser(userName, userPhoto, userPhone);
        }

    }
}