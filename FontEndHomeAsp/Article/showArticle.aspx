<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showArticle.aspx.cs" Inherits="Article_showArticle" %>

<<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="/style/css/external.min.css"/>

<style type="text/css">
    * {
        margin: 0;
        padding: 0;
    }
    body {
        font-family: 'Raleway', sans-serif !important;
        background: url("../../style/images/banner.png") 0px 0px;
    }
    #content {
        background-color: #f2f2f2;
        border: 1px solid red;
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
    }

    .title {
        outline: none;
        border: 1px solid #999;
        background: none;
        border-radius: 25px;
        -webkit-border-radius: 25px;
        -moz-border-radius: 25px;
        -o-border-radius: 25px;
        -ms-border-radius: 25px;
        padding: 15px 10px;
        width: 96%;
        font-size: 1.5em;
        color: #79eac5;
        text-align: center;
        font-family: 'Raleway', sans-serif;
        margin-bottom: 20px;
        margin-top: 100px;
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
        color: #79eac5;
        text-align: center;
        font-family: 'Raleway', sans-serif;
        margin-bottom: 20px;
        margin-top: 20px;
    }

    .tab {
        outline: none;
        border-radius: 5px;
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

        margin-top: 100px;
        margin-bottom: 50px;
        margin-left: 10px;
        margin-right: 20px;

    }
    .userPhoto{
        outline: none;
        float: left;
        width:150px;height:150px;
        box-shadow: 2px 2px 2px rgba(121, 234, 197, 0.7);
        background-repeat: no-repeat;
        border:4px solid rgba(20, 255, 102, 0.4);
        border-radius:50%;
        margin: 50px 10px;
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

</style>
<script src="http://cdn.bootcss.com/ace/1.2.4/ace.js"></script>
<script src="http://cdn.bootcss.com/ace/1.2.4/ext-language_tools.js"></script>
<script src="http://cdn.bootcss.com/ace/1.2.4/ext-old_ie.js"></script>
<script src="http://cdn.bootcss.com/ace/1.2.4/theme-monokai.js"></script>
<script src="http://cdn.bootcss.com/ace/1.2.4/theme-twilight.js"
        type="text/javascript" charset="utf-8"></script>
<script src="http://cdn.bootcss.com/ace/1.2.4/mode-javascript.js"
        type="text/javascript" charset="utf-8"></script>
<script src="/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>


</head>
<body>
<br/>
<div id="gadgetSWF" style="padding:10px"><embed type="application/x-shockwave-flash" src="http://cdn.abowman.com/widgets/fish/fish.swf" width="100%" height="200" id="flashID" name="flashID" bgcolor="#F0F7FF" quality="high" scale="noscale" salign="tl" flashvars="up_backgroundColor=F0F7FF" wmode="opaque" allowscriptaccess="always"></div>
<script type="text/javascript" color="0,0,255" opacity='0.8' zIndex="-2" count="300" src="/js/canvas.js"></script>
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
        <div id="articleName" class="title">
            文章标题
        </div>
        <input id="articleId" type="hidden" runat="server"/>
        <div class="type">
            <span><b class="fc">作者：&nbsp&nbsp </b> <b
                                                       id="articleAuthor"> 666先生</b></span>
        </div>
        <div class="type">
            <span><b class="fc">类别：&nbsp&nbsp</b><b
                                                     id="articleType">HtmlCode</b></span>
        </div>


    </div>
    <div id="tab_bar">
        <ul>
            <li id="tab1" onclick="myclick(1)" class="tab"
                style="background-color: #8cffc3">HTML/CSS代码
            </li>
            <li id="tab2" onclick="myclick(2)" class="tab"
                style="background-color: #a5cbff;">
                效果
            </li>
        </ul>
    </div>
    <div class="tab_css" id="tab1_content" style="display: block">
        <div id="editor" style="height:80%;width:100%;">
        </div>
    </div>
    <div class="tab_css" id="tab2_content">
        <iframe id="iframeShow" frameborder="0" width=100% height=100%></iframe>
    </div>
    <br/>
    <br/>
    <br/>
<%--    <div  style="font-size: 25px;">&nbsp;评论列表：</div>
    <div class="clearfix">
        <img class="userPhoto"id="userPhoto" src="img/user1.jpg">
        </img>
        <div class="showCommentBox">Hi,asfdsf
            am in small well !!aasdfasfffffffffffffffffffffffffff阿萨德法师法师的发阿斯顿发生的发生
            fffffffffffffffff
            fffffffff
        </div>
        <div  style="font-size: 25px;width: 500px;" class="clearfix">&nbsp;输入评论内容:</div>
    </div>
    <textarea rows="3" cols="20" class="inputText" id="comment">
</textarea>
    <button id="addComment" class="button green">评论</button>--%>
</div>
</body>
<script type="text/javascript">
    var editor = ace.edit("editor");
    ace.require("ace/ext/language_tools");
    editor.session.setMode("ace/mode/html");
    editor.setTheme("ace/theme/tomorrow");
    editor.setValue("<!DOCTYPE html>\n" +
        "<html lang=\"en\">\n<head>\n<meta charset=\"UTF-8\">\n <title>Title</title>\n" +
        "</head>\n<body>\n\n</body>\n</html>");
    //自动提示
    editor.setOptions({
        enableBasicAutocompletion: true,
        enableSnippets: true,
        enableLiveAutocompletion: true
    });

    var myclick = function (v) {

        var llis = document.getElementsByTagName("li");
        for (var i = 0; i < llis.length; i++) {
            var lli = llis[i];
            if (lli == document.getElementById("tab" + v)) {
                lli.style.backgroundColor = "#8cffc3";
            } else {
                lli.style.backgroundColor = "#a5cbff";
            }
        }

        var divs = document.getElementsByClassName("tab_css");
        for (var i = 0; i < divs.length; i++) {
            var divv = divs[i];
            if (divv == document.getElementById("tab" + v + "_content")) {
                divv.style.display = "block";
            } else {
                divv.style.display = "none";
            }
        }
        if (v == 2) {
            //var test="<script>alert(123)<\/script>";
            var Text = editor.getValue();
            //alert($("#tab1").html());
            if ($("#tab1").html() == "HTML/CSS代码") {
                var iframe = document.getElementById('iframeShow');
                iframe.contentWindow.document.open();
                iframe.contentWindow.document.write(Text);
                iframe.contentWindow.document.close();
            } else if ($("#tab1").html() == "JavaScript代码") {
                var lastLog;
                var consoleLogs = [];
                console.oldLog = console.log;
                console.log = function (str) {
                    lastLog = str;
                    consoleLogs.push(str);
                }

                //var jsCode="var i=0;console.log(123213);console.log(4546546);console.log(i);";
                var jsCode = editor.getValue();
                eval(jsCode);
                var showLog_str = '';
                for (var index in consoleLogs) {
                    showLog_str += "console.log : " + consoleLogs[index] + "</br>";
                }
                var str1;
                if (consoleLogs.length == 0) {
                    str1 = "<!DOCTYPE html>" +
                        "<body><div id='div1'></div></body></html> <script>" +
                        "var div1=document.getElementById(\"div1\");" +
                        "div1.innerHTML='" + "该js代码没有输出内容" +
                        "';" +
                        "<\/script>";
                } else {
                    str1 = "<!DOCTYPE html>" +
                        "<body><div id='div1'></div></body></html> <script>" +
                        "var div1=document.getElementById(\"div1\");" +
                        "div1.innerHTML='" + showLog_str +
                        "';" +
                        "<\/script>";
                }

                var iframe = document.getElementById('iframeShow');
                iframe.contentWindow.document.open();
                iframe.contentWindow.document.write(str1);
                iframe.contentWindow.document.close();
                console.log = console.oldLog();
                // alert(str1);
            }
            //alert(htmlText);

        }
    }
    function $$(id) {
        return document.getElementById(id);
    }

    $("#addArticle").click(function () {

        var type = $('input[name="ArticletType"]:checked').val();
        /*alert(value);*/
        $.ajax({
            type: 'POST',
            data: {
                'typeid': type,
                'content': editor.getValue(),
                'articleName': $("input[name='articleName']").val()
            },
            url: '~/Article/doAddArticle'
        }).done(function (result) {
            if (result.success) {
                if (result.content.loginToUrl) {
                    window.location.href = result.content.loginToUrl;
                } else {
                    window.location.href = ctx + '/';
                }
            } else {
                $('#beError').text(result.msg).show();
            }
            $(form).find(":submit").attr("disabled", false);
        });
    });
    $(function() {
        var articleId = $('#articleId').val();
        $.ajax({
            type: 'POST',
            data: {
                'articleId': articleId
            },
            url: '/Ajax/getArticleById.ashx'
        }).done(function (result) {
            var json = eval("(" + result + ")");
            $('#articleName').html(json.article_name);
            $('#articleAuthor').html(json.user_name);
            $('#articleType').html(json.type_name);
            editor.setValue(json.content);
          //  alert(json.typeid);
            if (json.typeid != 'HtmlCode' && json.typeid != 'jsCode') {
                $("#tab2").hide();
                editor.session.setMode("ace/mode/text");
            }
            switch (json.typeid) {
            case "HtmlCode": {
                $("#tab1").html("HTML/CSS代码");
                break;
            }
            case "jsCode": {
                $("#tab1").html("JavaScript代码");
                break;
            }
            case "Node": {
                $("#tab1").html("Node.js");
                break;
            }
            case "HtmlNote": {
                $("#tab1").html("HTML/CSS笔记");
                break;
            }
            case "jsNote": {
                $("#tab1").html("JavaScript笔记");
                break;
            }
            case "Browser": {
                $("#tab1").html("浏览器");
                break;
            }
            case "Frame": {
                $("#tab1").html("类库框架");
                break;
            }
            case "Optimize": {
                $("#tab1").html("性能优化");
                break;
            }
            case "Safety": {
                $("#tab1").html("前端安全");
                break;
            }
            case "Interview": {
                $("#tab1").html("面试经验");
                break;
            }
            }

            

        });
    })
</script>
</html>