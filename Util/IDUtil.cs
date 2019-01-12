using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Util
{
    public class IDUtil
    {
        public static string doAction()
        {
            return System.Guid.NewGuid().ToString().Replace("-", "");
        }
    }
}