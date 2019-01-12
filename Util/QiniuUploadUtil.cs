using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Qiniu.Util;
using Qiniu.Common;
using Qiniu.IO;
using Qiniu.IO.Model;
using Qiniu.Http;

namespace Util
{
   public class QiniuUploadUtil
    {
        public static string upLoadImg(string fileName, string imgName)
        {
            string imgUrl = "";
            string AccessKey = "Z_UFHtV2vX1L_JYvEGhxv1RCN5xLBkzEWKVQWfur";
            string SecretKey = "DBbYQzCsEpKEIZnFhEX0FG11j0DrLoaISnH3G5FO";
            Mac mac = new Mac(AccessKey, SecretKey);
            //七牛云的空间-
            string bucket = "oldbook";
            //图片的名称
            string saveKey = imgName;
            //图片的本地路径
            string localFile = fileName;
            PutPolicy putPolicy = new PutPolicy();
            // 如果需要设置为"覆盖"上传(如果云端已有同名文件则覆盖)，请使用 SCOPE = "BUCKET:KEY"
            // putPolicy.Scope = bucket + ":" + saveKey;
            putPolicy.Scope = bucket;
            // 上传策略有效期(对应于生成的凭证的有效期)          
            putPolicy.SetExpires(3600);
            // 上传到云端多少天后自动删除该文件，如果不设置（即保持默认默认）则不删除
            //putPolicy.DeleteAfterDays = 1;
            // 生成上传凭证，参见       
            string jstr = putPolicy.ToJsonString();
            string token = Auth.CreateUploadToken(mac, jstr);
            UploadManager um = new UploadManager();
            Qiniu.Common.Config.AutoZone(AccessKey, bucket, false);
            //生成外链
            HttpResult result = um.UploadFile(localFile, saveKey, token);
            Console.WriteLine(result);
            //imgUrl =  result.ToString();
            imgUrl = "http://oe1rqbymq.bkt.clouddn.com/" + imgName;
            return imgUrl;
        }
    }
}
