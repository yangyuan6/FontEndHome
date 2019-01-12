<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="User_login" %>
<!DOCTYPE html>
<html>
<head>
    <script id="allmobilize" charset="utf-8" src="/style/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="alternate" media="handheld" />
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>登录-前端之家</title>
    <meta content="前端之家" name="description">
    <meta content="前端之家" name="keywords">

    <meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

    <!-- <div class="web_root"  style="display:none">h</div> -->
    <link rel="Shortcut Icon" href="/style/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/style/css/style.css" />

    <script src="/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

    <script type="text/javascript" src="/style/js/jquery.lib.min.js"></script>
    <script type="text/javascript" src="/style/js/core.min.js"></script>
</head>

<body id="login_bg">
<div class="login_wrapper">
    <div class="login_header">
        <a href="/Home/Index"><img src="/style/images/logo.png" width="285" height="62" alt="前端之家" /></a>
        <div id="cloud_s"><img src="/style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
        <div id="cloud_m"><img src="/style/images/cloud_m.png" width="136" height="95" alt="cloud" /></div>
    </div>
    <div class="login_box">
        <form method="post" id="loginForm">
            <input type="text" id="email" name="phone" value="" tabindex="1" placeholder="请输入手机号" />
            <input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码"  />
            <span class="error" style="display:none;" id="beError"></span>
           <%-- <a href="reset.html" class="fr" target="_blank">忘记密码？</a>--%>

            <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录"/>
                          <%-- <a style="color:#fff;" href="index.html" class="submitLogin" title="登 &nbsp; &nbsp; 录" />登 &nbsp; &nbsp; 录</a>--%>
        </form>
        <div class="login_right">
            <div>还没有前端之家帐号？</div>
            <a href="/Register.aspx" class="registor_now">立即注册</a>
        </div>
    </div>
    <div class="login_box_btm"></div>
</div>

<script type="text/javascript">
    $(function () {
       /* $("#submitLogin").click(function() {
            var phone = $("#email").val();
            var pass = $("#password").val();
            if (phone == '' || pass == '') {
                alert("请输入手机号和密码！");
                $("#phone").focus();
            } else {
                $("#loginForm").submit();
            }
        });*/

    })
    
</script>
</body>
</html>