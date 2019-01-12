<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTopic.aspx.cs" Inherits="Topic_ShowTopic" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/style/css/style.css"/>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }
        body {
           /* background: url("/Admin/AdminStatic/images/bg.jpg");*/
            background: url("/style/images/banner.png");
           /* background-repeat: no-repeat;*/
        }
        #content {
            /*border: 1px solid red;*/
            margin: 0 auto;
            text-align: center;
            width: 1210px;
            margin-bottom: 400px;
        }

        #tab_bar {
            width: 1210px;
            height: 30px;
            float: left;
        }

        #tab_bar ul {
            padding: 0px;
            margin: 0px;
            height: 30px;
            text-align: center;
        }

        #tab_bar li {
            list-style-type: none;
            float: left;
            width: 133.3px;
            height: 30px;
            background-color: gray;
        }

        .tab_css {
            width: 1210px;
            height: 800px;
            /*background-color: orange;*/
            display: none;
            float: left;
        }

        #editor {
            margin-top: 5px;
            font-size: 20px;
        }

        #tab_bar {
            line-height: 30px;
        }

        /*单选按钮结束*/
        .button {
            outline: none;
            width: 300px;
            display: inline-block;
            position: relative;
            margin: 10px;
            padding: 0 20px;
            text-align: center;
            text-decoration: none;
            font: bold 20px/35px Arial, sans-serif;
            line-height: 40px;
            text-shadow: 1px 1px 1px rgba(255, 255, 255, .22);

            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;

            -webkit-box-shadow: 1px 1px 1px rgba(0, 0, 0, .29), inset 1px 1px 1px rgba(255, 255, 255, .44);
            -moz-box-shadow: 1px 1px 1px rgba(0, 0, 0, .29), inset 1px 1px 1px rgba(255, 255, 255, .44);
            box-shadow: 1px 1px 1px rgba(0, 0, 0, .29), inset 1px 1px 1px rgba(255, 255, 255, .44);

            -webkit-transition: all 0.15s ease;
            -moz-transition: all 0.15s ease;
            -o-transition: all 0.15s ease;
            -ms-transition: all 0.15s ease;
            transition: all 0.15s ease;
        }

        .green {
            background: #89ffc3; /* Old browsers */
        }

        .input_form {
            width: 80%;
            margin: 0 auto;
            /*background-color: #f2f2f2;*/
            border-radius: 12px;
        }

        .title {
            outline: none;
           /* border: 1px solid #8cffc3;*/
            background: none;
            border-radius: 25px;
            -webkit-border-radius: 25px;
            -moz-border-radius: 25px;
            -o-border-radius: 25px;
            -ms-border-radius: 25px;
            padding: 15px 10px;
            width: 96%;
            font-size: 2em;
            /*color: #79eac5;*/
            text-align: center;
            font-family: 'Raleway', sans-serif;
            margin-bottom: 20px;
            margin-top: 100px;
            background-color: #f2f2f2;
        }



        .fc {
            font-color: #5bcf9f;
        }

        .inputText {
            outline: none;
            display: block;
            width: 600px;
            margin: 0 auto;
            height: 200px;
            line-height: 30px;
            border-radius: 12px;
            background-color: #baf4ee;
            font-size: 25px;
            padding: 30px 30px;
            margin-top: 20px;

        }
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
        .type {
            outline: none;
            background: none;
            border-radius: 25px;
            -webkit-border-radius: 25px;
            -moz-border-radius: 25px;
            -o-border-radius: 25px;
            -ms-border-radius: 25px;
            padding: 15px 10px;
            width: 96%;
            font-size: 1em;
            font: bold 20px/35px Arial, sans-serif;
           /* color: #79eac5;*/
            text-align: center;
            font-family: 'Raleway', sans-serif;
            margin-bottom: 20px;
            margin-top: 20px;
            background-color: #f2f2f2;
        }
    </style>    
    <script src="/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>


</head>
<body>
<br/>
<script type="text/javascript" color="0,0,255" opacity='0.7' zIndex="-2" count="150" src="/js/canvas.js"></script>
<div id="header">
    <div class="wrapper">
        <a href="index.html" class="logo">
            <img src="/style/images/logo.png" width="229" height="43"
                 alt="前端之家"/>
        </a>
        <ul class="reset" id="navheader">
            <li ><a href="/index.aspx">笔记</a></li>
            <li><a href="/Topic/TopicList.aspx" target="_blank">话题</a></li>
            <li><a href="/Article/addArticle.aspx" rel="nofollow">写笔记</a></li>
            <%--<li><a href="create.html" rel="nofollow">资料</a></li>--%>
        </ul>
        <ul class="loginTop">
            <%
                string userName = (string)Session["userName"];
                if (string.IsNullOrEmpty(userName))
                {
                    Response.Write("<li><a href=\"/User/login.aspx\" rel=\"nofollow\">登录</a></li>"+
                                   "<li>|</li>"+"<li><a href=\"/Register.aspx\" rel=\"nofollow\">注册</a></li>");
                }
                else
                {
                    Response.Write("<li><a href=\"/User/EditPersonal.aspx\" rel=\"nofollow\">个人</a></li>"+
                                   "<li>|</li>"+"<li><a href=\"/Ajax/logout.aspx\" rel=\"nofollow\">登出</a></li>"); 
                }
            %>
            
        </ul>
    </div>
</div><!-- end #header -->
<div id="content">
    <!--类型选择-->
    <div class="input_form">
        <div id="TopicName" class="title">
          <asp:Label ID="LabelTopic_name" runat="server" Text="Label"></asp:Label>
        </div>
        <input id="inputHiddenTopicId" type="hidden" runat="server"/>
    </div>
    <div class="type">
        <span><b class="fc">描述：&nbsp&nbsp </b>
             <%--<b id="articleAuthor"> 666先生</b>--%>
            <asp:Label ID="LabelTopic_describe" runat="server" Text="Label"></asp:Label>
        </span>
    </div>
    <br/>
    <div  style="font-size: 25px;">&nbsp;评论列表：</div>
<asp:DataList ID="DataList1" runat="server">
<SeparatorStyle BorderStyle="None"/>
<ItemTemplate>
    <div class="clearfix">
        <img class="userPhoto" src="<%#Eval("user_photo") %>">
        </img>
        <div class="showCommentBox">
            <%#Eval("comment_content") %>
        </div>
        </div>
    </ItemTemplate>
</asp:DataList>
<%--    <div class="clearfix">
        <img class="userPhoto" src="img/user1.jpg">
        </img>
        <div class="showCommentBox">Hi,asfdsf
            am in small well !!aasdfasfffffffffffffffffffffffffff
            阿萨德法师法师的发阿斯顿发生的发生
            fffffffffffffffff
            fffffffff
        </div>
    </div> --%>
    <div class="clearfix" id="tag" style="margin: 0px auto;width: 600px;">
        <div  style="font-size: 25px;width: 500px;">&nbsp;输入评论内容:</div>
        <textarea rows="3" cols="20" class="inputText" id="TextAreaComment">
        </textarea>
        <button id="addComment" class="button green">评论</button>
    </div>
</div>
</body>
<script type="text/javascript">
    $("#addComment").click(function () {
        var commentConent = $('#TextAreaComment').val();
       // alert(commentConent);
        var topicId = $("#inputHiddenTopicId").val();
            $.ajax({
                type: 'POST',
                data: {
                    'commentConent': commentConent,
                    'topicId':topicId
        },
            url: '/Ajax/addComment.ashx'
        }).done(function (result) {
           // alert(result);
            var json = eval("(" + result + ")");
            if (json.state == 1) {
                var strhtml=" <div class=\"clearfix\">" +
                    "<img class=\"userPhoto\" src=\""+json.userPhoto+"\">" +
                    " </img><div class=\"showCommentBox\">" +
                    commentConent +
                    "</div></div>";
                var html=$(strhtml);
                $("#tag").before(
                    html
                )
            } else if (json.state == 2) {
                    alert(json.msg);
                    window.location.href = json.url;
                } else {
                alert(json.msg);
            }
            });
    });
</script>
</html>
