using Microsoft.VisualStudio.TestTools.UnitTesting;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace DAL.Tests
{
    [TestClass()]
    public class UserDALTests
    {
        [TestMethod()]
        public void LoginByPhoneTest()
        {
            //Assert.AreSame("", ));
        }

        [TestMethod()]
        public void CreateUserTest()
        {
            Assert.AreEqual(true, new UserDAL().addUser("666你好", "1566111", "666"));
            //Assert.AreSame(true,new UserDAL().CreateUser("666你好","156611","666"));
        }

        [TestMethod()]
        public void LoginTest()
        {
            DataSet dataSet= new UserDAL().Login("156611", "666");
            Assert.AreEqual(true, new UserDAL().addUser("666你好", "1566111", "666"));
        }
    }
}