<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addArticle.aspx.cs" Inherits="Article_addArticle" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="/style/css/popup.css"/>
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
        border: 1px solid red;
        margin: 0 auto;
        text-align: center;
        width: 1210px;
        margin-bottom: 400px;
        background-color: #fff;
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
    /*单选按钮开始*/
    .radioGroup {
        font-size: 22px;
        outline: none;
        width: 1210px;
        height: 200px;
        -webkit-transform: translateZ(0);
        -ms-transform: translateZ(0);
        -o-transform: translateZ(0);
        transform: translateZ(0);
    }

    .radioGroup > legend {
        color: #79EAC5;
    }

    .radioGroup label {
        position: relative;
        padding-left: 1.3em;
        cursor: pointer;
        -webkit-transition: .2s;
        -o-transition: .2s;
        transition: .2s;
    }

    .radioGroup label:hover {
        color: #34ff8f;
    }

    .radioGroup label::before, .radioGroup label::after {
        content: '';
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        margin: auto;
        width: 1em;
        height: 1em;
        border-radius: 50%;
    }

    .radioGroup label::before {
        box-shadow: 0 1px 0 rgba(255, 255, 255, 0.25), 0 2px 5px 6px rgba(0, 0, 0, 0.5) inset;
    }

    .radioGroup label::after {
        background: #79EAC5;
        opacity: .2;
        -webkit-transform: scale(0);
        -ms-transform: scale(0);
        -o-transform: scale(0);
        transform: scale(0);
        -webkit-transition: .3s;
        -o-transition: .3s;
        transition: .3s;
    }

    .radioGroup label:hover::after {
        -webkit-transform: scale(0.6);
        -ms-transform: scale(0.6);
        -o-transform: scale(0.6);
        transform: scale(0.6);
        opacity: 1;
        -webkit-transition: 0.2s;
        -o-transition: 0.2s;
        transition: 0.2s;
    }

    .radioGroup input {
        position: absolute;
        left: -24px;
        z-index: -1;
        opacity: 0;
    }

    .radioGroup input:checked + label::after {
        -webkit-transform: scale(0.8);
        -ms-transform: scale(0.8);
        -o-transform: scale(0.8);
        transform: scale(0.8);
        opacity: 1;
        box-shadow: 0 0 15px -1px #79EAC5;
    }

    fieldset {
        display: block;
        white-space: nowrap;
        color: rgba(0, 149, 147, 0.9);
        padding-top: 30px;
        padding-bottom: 30px;
        /*padding: 30px 60px 50px;*/
        border: 4px solid rgba(0, 0, 0, 0.15);
        box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 -160px 50px -80px rgba(0, 0, 0, 0.1) inset;
        border-radius: 20px;
        margin: 50px auto;
        /*border: 0px;*/
        text-shadow: 1px 3px 1px rgba(0, 0, 0, 0.3);
    }


    legend {
        padding: 0 20px;
        dislpay: block;
        text-transform: uppercase;
    }

    fieldset label {
        line-height: 65px;
        margin: 0 20px;
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
        text-shadow: 1px 1px 1px rgba(255,255,255, .22);
        -webkit-border-radius: 30px;
        -moz-border-radius: 30px;
        border-radius: 30px;
        -webkit-box-shadow: 1px 1px 1px rgba(0,0,0, .29), inset 1px 1px 1px rgba(255,255,255, .44);
        -moz-box-shadow: 1px 1px 1px rgba(0,0,0, .29), inset 1px 1px 1px rgba(255,255,255, .44);
        box-shadow: 1px 1px 1px rgba(0,0,0, .29), inset 1px 1px 1px rgba(255,255,255, .44);
        -webkit-transition: all 0.15s ease;
        -moz-transition: all 0.15s ease;
        -o-transition: all 0.15s ease;
        -ms-transition: all 0.15s ease;
        transition: all 0.15s ease;
    }

    .green {
        background: #34ff8f; /* Old browsers */
    }

    .input_form {
        width: 50%;
        margin: 0 auto;
    }

    .input_form input[type="text"], .input_form input[type="submit"], .input_form input[type="password"], .input_form select {
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
        font-size: 1em;
        color: #79eac5;
        text-align: center;
        font-family: 'Raleway', sans-serif;
    }

    .input_form input[type="text"], .input_form input[type="file"], .input_form input[type="submit"], .input_form input[type="password"], .input_form select {
        margin: 1.5em 0;
    }
    .tab{
        outline: none;
        border-radius: 5px;
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
<br />
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
            <li class="current"><a href="/Article/addArticle.aspx" rel="nofollow">写笔记</a></li>
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
        <input name="articleName" value="" placeholder="文章标题" type="text" class="input">
    </div>
    <fieldset tabindex="0" class='radioGroup'>
        <legend>文章类型</legend>
        <input id='g1o1' name="ArticletType" value="HtmlCode" checked type="radio">
        <label for='g1o1'>HTML/CSS代码</label>
        <input id='g1o2' name="ArticletType" value="jsCode" type="radio">
        <label for='g1o2'>JavaScript代码</label>
        <input id='g1o3' name="ArticletType" value="HtmlNote" type="radio">
        <label for='g1o3'>HTML/CSS笔记</label>
        <br />
        <input id='g1o4' name="ArticletType" value="jsNote" type="radio">
        <label for='g1o4'>JavaScript笔记</label>
        <input id='g1o5' name="ArticletType" value="Node" type="radio">
        <label for='g1o5'>Node</label>
        <input id='g1o6' name="ArticletType" value="Browser" type="radio">
        <label for='g1o6'>浏览器</label>
        <br />
        <input id='g1o7' name="ArticletType" value="Frame" type="radio">
        <label for='g1o7'>类库框架</label>
        <input id='g1o8' name="ArticletType" value="Optimize" type="radio">
        <label for='g1o8'>性能优化</label>
        <input id='g1o9' name="ArticletType" value="Safety" type="radio">
        <label for='g1o9'>前端安全</label>
        <input id='g1o10' name="ArticletType" value="Interview" type="radio">
        <label for='g1o10'>面试经验</label>
    </fieldset>
    <div id="tab_bar">
        <ul>
            <li id="tab1" onclick="myclick(1)" class="tab" style="background-color: #8cffc3">HTML/CSS代码</li>
            <li id="tab2" onclick="myclick(2)" class="tab" style="background-color: #a5cbff;">
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
    <br />
    <br />
    <br />
    <button id="addArticle" class="button green">添加文章</button>
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
    editor.gotoLine(8);
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
    $(":radio").click(function () {
        if ($(this).val() == 'jsCode') {
            editor.session.setMode("ace/mode/javascript");
            //      $("#tab1").html("JavaScript代码");
            //alert($(this).html);
            $("#tab2").show();
        } else if ($(this).val() == 'HtmlCode') {
            editor.session.setMode("ace/mode/html");
            //      $("#tab1").html("HTML/CSS代码");
            $("#tab2").show();
        } else {
            editor.session.setMode("ace/mode/text");
            $("#tab2").hide();

            var divs = document.getElementsByClassName("tab_css");
            divs[0].style.display = "block";
            divs[1].style.display = "none";
            document.getElementsByTagName("li")[0].style.backgroundColor = "orange";
            $("#tab1")
            //      $("#tab1").innerText=$(this).html;
        }
        switch ($(this).val()) {
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

        //alert("您是..." + $(this).val());
    });
    $("#addArticle").click(function () {

        var type = $('input[name="ArticletType"]:checked').val();
        /*alert(value);*/
        var articleName = $("input[name='articleName']").val();
        /*alert(articleName);*/
        if (articleName == "") {
            alert("请输入文章标题");
            return;
        }

        $.ajax({
            type: 'POST',
            data: { 'typeid': type, 'content': editor.getValue(), 'articleName': articleName },
            url: '/Ajax/addArticle'
        }).done(function (result) {
           // console.log(result);
            var json = eval("(" + result + ")");
           // alert(result);
            if (json.state=="1") {
                alert(json.msg);
                window.location.href = json.url;
            }
            if (json.state == "2") {
                alert(json.msg);
                window.location.href = json.url;
            } else {
                alert(json.msg);
                /* $('#beError').text(result.msg).show();*/
            }
            /* $(form).find(":submit").attr("disabled", false);*/
        });
    });
</script>
</html>