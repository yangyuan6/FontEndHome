<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditPersonal.aspx.cs" Inherits="User_EditPersonal" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="/Admin/AdminStatic/css/pintuer.css">
    <link rel="stylesheet" href="/Admin/AdminStatic/css/admin.css">
    <script src="/Admin/AdminStatic/js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <style>
        .showCommentBox{
            float: left;
            background-color: #f2f2f2;
            line-height: 30px;
            font-size: 25px;
            width: 900px;
            height: auto;
            word-wrap: break-word;/*自动换行*/
            border: 2px solid #8cffc3;
            border-radius: 10px;
            padding: 15px 15px;
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 10px;
            margin-right: 20px;

        }
        .userPhoto{
            float: left;
            width:100px;height:100px;
            box-shadow: 2px 2px 2px rgba(121, 234, 197, 0.7);
            background-repeat: no-repeat;
            border:4px solid rgba(20, 255, 102, 0.4);
            border-radius:50%;
            margin: 10px 10px;
        }
        .clearfix:before, .clearfix:after {
            content: "";
            display: table;
        }

        .clearfix:after {
            clear: both;
        }

        .clearfix {
            *zoom: 1; /*IE/7/6*/
        }
        .mid {
            margin: 0 auto;
            width: 60%;
        }
    </style>
</head>
<body>
<div class="clearfix">
    <img class="userPhoto" src="<%Response.Write(Session["userPhoto"]); %>">
    </img>
 <div class="showCommentBox">Hi,asfdsf
       <%Response.Write(Session["userName"]); %>
    </div>
</div>
<div class="panel admin-panel margin-top" id="add">
    
    <div class="body-content">
        <form method="post" class="form-x" runat="server">
            <div class="form-group">
                <div class="label">
                    <label>昵称</label>
                </div>
                <div class="field">
                    <input ID="Text_userName" type="text" class="input w50" value="" name="title" runat="server" />
                    
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>头像</label>
                </div>
                <div class="field">
                    <asp:FileUpload ID="FileUpload_userPhoto" class="input w50" value="" name="title"   data-validate="required:请选择头像"  runat="server" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <asp:Button ID="Button_submit" class="button bg-main icon-check-square-o" runat="server" OnClick="uploadPersonalInfo" Text="提交"></asp:Button >
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
