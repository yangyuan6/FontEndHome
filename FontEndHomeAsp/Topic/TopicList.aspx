<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TopicList.aspx.cs" Inherits="Topic_TopicList" %>

<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <script id="allmobilize" charset="utf-8"
            src="style/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate" media="handheld"/>
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>前端之家</title>
    <meta content="前端之家" name="description">
    <meta content="前端之家" name="keywords">
    <meta name="author" content="前端之家"/>
    <!-- <div class="web_root"  style="display:none">h</div> -->
    <script type="text/javascript">
        var ctx = "h";
        console.log(1);
    </script>
    <style>
        .ui-autocomplete {
            width: 488px;
            background: #fafafa !important;
            position: relative;
            z-index: 10;
            border: 2px solid #91cebe;
        }

        .ui-autocomplete-category {
            font-size: 16px;
            color: #999;
            width: 50px;
            position: absolute;
            z-index: 11;
            right: 0px; /*top: 6px; */
            text-align: center;
            border-top: 1px dashed #e5e5e5;
            padding: 5px 0;
        }

        .ui-menu-item {
            *width: 439px;
            vertical-align: middle;
            position: relative;
            margin: 0px;
            margin-right: 50px !important;
            background: #fff;
            border-right: 1px dashed #ededed;
        }

        .ui-menu-item a {
            display: block;
            overflow: hidden;
        }
    </style>
    <link rel="Shortcut Icon" href="/style/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/style/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/style/css/external.min.css"/>
    <link rel="stylesheet" type="text/css" href="/style/css/popup.css"/>
    <script src="/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/style/js/jquery.lib.min.js"></script>
    <script src="/style/js/ajaxfileupload.js" type="text/javascript"></script>
    <script type="text/javascript" src="/style/js/additional-methods.js"></script>

    <!--[if lte IE 8]>
        <script type="text/javascript" src="style/js/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
  </script>
    <script type="text/javascript" src="/style/js/conv.js"></script>
</head>
<body>
<script type="text/javascript" color="0,0,255" opacity='0.7' zIndex="-2" count="150" src="/js/canvas.js"></script>
<div id="body">
<div id="header">
    <div class="wrapper">
        <a href="index.html" class="logo">
            <img src="/style/images/logo.png" width="229" height="43"
                 alt="前端之家"/>
        </a>
        <ul class="reset" id="navheader">
            <li ><a href="/index.aspx">笔记</a></li>
            <li class="current"><a href="/Topic/TopicList.aspx" target="_blank">话题</a></li>
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
<div id="container">
    <div id="sidebar">
        <div class="mainNavs">
            <div class="menu_box">
                <div class="menu_main">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="content">
 <div id="search_box">
    <form id="searchForm" name="searchForm" method="post">
        <ul id="searchType">
            <li data-searchtype="1" class="type_selected">笔记</li>
           <%-- <li data-searchtype="4">资源</li>--%>
        </ul>
        <div class="searchtype_arrow"></div>
        <input type="text" id="search_input" name="keyword" tabindex="1" value=""
               placeholder="请输入话题名称"/>
        <input type="submit" id="search_button" value="搜索"/>
    </form>
</div>

<%--<script type="text/javascript" src="/style/js/search.min.js"></script>--%>
<!--    <dl class="hotSearch">
    <dt>热门搜索：</dt>
    <dd><a href="list.htmlJava?labelWords=label&city=">Java</a></dd>
    <dd><a href="list.htmlPHP?labelWords=label&city=">CSS</a></dd>
    <dd><a href="list.htmlAndroid?labelWords=label&city=">Html</a></dd>
    <dd><a href="list.htmliOS?labelWords=label&city=">javaScript</a></dd>
    <dd><a href="list.html前端?labelWords=label&city=">Node</a></dd>

    <dd><a href="list.htmlUI?labelWords=label&city=">UI</a></dd>
    <dd><a href="list.htmlBD?labelWords=label&city=">React</a></dd>
</dl>-->
<script type="text/javascript" src="/style/js/home.min.js"></script>
<script type="text/javascript" src="/style/js/core.min.js"></script>
<div id="home_banner">
    <ul class="banner_bg">
        <li class="banner_bg_1 current">
            <a
                href="#"
                target="_blank"><img
                                    src="/style/images/showimg/web1.jpg" width="612"
                                    height="160" alt="前端之家"/></a>
        </li>
        <li class="banner_bg_2">
            <a
                href="#"
                target="_blank"><img
                                    src="/style/images/showimg/web2.jpg" width="612"
                                    height="160" alt="前端之家"/></a>
        </li>
        <li class="banner_bg_3">
            <a
                href="#"
                target="_blank"><img
                                    src="/style/images/showimg/web3.jpg" width="612"
                                    height="160" alt="前端之家"/></a>
        </li>
    </ul>
    <div class="banner_control">
        <em></em>
        <ul class="thumbs">
            <li class="thumbs_1 current">
                <i></i>
                <img src="/style/images/showimg/web1min.jpg"
                     width="113" height="42"/>
            </li>
            <li class="thumbs_2">
                <i></i>
                <img src="/style/images/showimg/web2min.jpg"
                     width="113" height="42"/>
            </li>
            <li class="thumbs_3">
                <i></i>
                <img src="/style/images/showimg/web3min.jpg"
                     width="113" height="42"/>
            </li>
        </ul>
    </div>
</div><!--/#main_banner-->
<ul class="reset hotabbing">
    <li class="current">话题列表</li>
</ul>
<div id="hotList">
    <ul class="hot_pos reset">
    <asp:DataList ID="DataList1" runat="server">
    <SeparatorStyle BorderStyle="None"/>
    <ItemTemplate>
        <li class="clearfix">
            <div class="hot_pos_l">
                <div class="mb10">
                    <a href="/Topic/ShowTopic.aspx?topicId=<%#Eval("id") %>&topic_name=<%#Eval("topic_name") %>&topic_describe=<%#Eval("topic_describe") %>" target="_blank"><%#Eval("topic_name") %></a>
                    &nbsp;
                   <%-- <span class="c9">[北京]</span>--%>
                </div>
                <%--<span><em class="c7">浏览 </em>13</span>
                <span><em class="c7">回复</em> 3</span>
                <span><em class="c7">分类 </em>HTML/CSS</span>--%>
                <br/>
                <span><em class="c7">描述</em><br/><%#Eval("topic_describe") %></span>
                <br/>
               <!-- <span>1天前发布</span>-->
                <!-- <a  class="wb">分享到微博</a> -->
            </div>
        </li>
        </ItemTemplate>
    </asp:DataList>
<%--        <li class="clearfix">
            <div class="hot_pos_l">
                <div class="mb10">
                    <a href="h/jobs/148783.html" target="_blank">网页产品设计师</a>
                    &nbsp;
                    <span class="c9">[北京]</span>
                </div>
                <span><em class="c7">月薪： </em>8k-10k</span>
                <span><em class="c7">经验：</em> 1-3年</span>
                <span><em class="c7">最低学历： </em>本科</span>
                <br/>
                <span><em class="c7">职位诱惑：</em>六险一金，饭补，班车，晋升机制，氛围好</span>
                <br/>
                <span>14:15发布</span>
                <!-- <a  class="wb">分享到微博</a> -->
            </div>

        </li>--%>



      

    </ul>
</div>

<div class="clear"></div>
<div id="linkbox">
    <dl>
        <dt>友情链接</dt>
        <dd>
            <span>|</span>
            <a href="http://zaodula.com/" target="_blank">互联网er的早读课</a>
            <span>|</span>
            <span>|</span>
            <a href="http://www.ucloud.cn/" target="_blank">UCloud</a>
            <span>|</span>
            <a href="http://www.iconfans.com/" target="_blank">iconfans</a> <span>|</span>
            <a href="http://www.html5dw.com/" target="_blank">html5梦工厂</a>
            <span>|</span>
            <a href="http://www.sykong.com/" target="_blank">手游那点事</a>

            <a href="http://www.php100.com/" target="_blank">php100</a>
            <span>|</span>
            <a href="http://www.uehtml.com/" target="_blank">uehtml</a>
            <span>|</span>
            <a href="http://www.w3cplus.com/" target="_blank">W3CPlus</a>
            <span>|</span>
            <a href="http://www.boxui.com/" target="_blank">盒子UI</a>
            <span>|</span>
            <a href="http://www.uimaker.com/" target="_blank">uimaker</a>
            <span>|</span>
            <a href="http://www.yixieshi.com/" target="_blank">互联网的一些事</a>
            <span>|</span>
            <a href="http://www.chuanke.com/" target="_blank">传课网</a>
            <span>|</span>
            <a href="http://www.eoe.cn/" target="_blank">安卓开发</a> <span>|</span>
            <a href="http://www.eoeandroid.com/" target="_blank">安卓开发论坛</a>

            <span>|</span>
            <a href="http://www.hao123.com/" target="_blank">hao123上网导航</a> <span>|</span>
            <a href="http://www.ycpai.com" target="_blank">互联网创业</a><span>|</span>
            <a href="http://www.thinkphp.cn/"
               target="_blank">thinkphp</a><span>|</span>

            <a href="http://w3cshare.com/"
               target="_blank">W3Cshare</a><span>|</span>
            <a href="http://www.199it.com" target="_blank">199it</a><span>|</span>
        </dd>
    </dl>
</div>
</div>
<input type="hidden" value="" name="userid" id="userid"/>
<!-- <div id="qrSide"><a></a></div> -->
<!--  -->

<!-- <div id="loginToolBar">
    <div>
        <em></em>
        <img src="style/images/footbar_logo.png" width="138" height="45" />
        <span class="companycount"></span>
        <span class="positioncount"></span>
        <a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
        <div class="right">
            <a href="register.html?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
        </div>
        <input type="hidden" id="cc" value="16002" />
        <input type="hidden" id="cp" value="96531" />
    </div>
</div>
-->
<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
    <!-- 登录框 -->
    <div id="loginPop" class="popup" style="height:240px;">
        <form id="loginForm">
            <input type="text" id="email" name="email" tabindex="1"
                   placeholder="请输入登录邮箱地址"/>
            <input type="password" id="password" name="password" tabindex="2"
                   placeholder="请输入密码"/>
            <span class="error" style="display:none;" id="beError"></span>
            <label class="fl" for="remember"><input type="checkbox" id="remember"
                                                    value="" checked="checked"
                                                    name="autoLogin"/> 记住我</label>
            <a href="h/reset.html" class="fr">忘记密码？</a>
            <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录"/>
        </form>
        <div class="login_right">
            <div>还没有前端之家帐号？</div>
            <a href="register.html" class="registor_now">立即注册</a>
            <div class="login_others">使用以下帐号直接登录:</div>
            <a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb"
               class="icon_wb" title="使用新浪微博帐号登录"></a>
            <a href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq"
               target="_blank" title="使用腾讯QQ帐号登录"></a>
        </div>
    </div><!--/#loginPop-->
</div>
<!------------------------------------- end ----------------------------------------->
<%--<script type="text/javascript" src="/style/js/Chart.min.js"></script>--%>

<%--<script type="text/javascript" src="/style/js/count.js"></script>--%>
<div class="clear"></div>
<input type="hidden" id="resubmitToken" value=""/>
<a id="backtop" title="回到顶部" rel="nofollow"></a>
</div><!-- end #container -->
</div><!-- end #body -->
<div id="footer">
    <div class="wrapper">
        <a href="h/about.html" target="_blank" rel="nofollow">联系我们</a>
        <a href="h/af/zhaopin.html" target="_blank">互联网公司导航</a>
        <a href="http://e.weibo.com/lagou720" target="_blank"
           rel="nofollow">前端之家微博</a>
        <a class="footer_qr" href="javascript:void(0)"
           rel="nofollow">前端之家微信<i></i></a>
        <div class="copyright">&copy;2013-2014 Lagou <a target="_blank"
                                                        href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a>
        </div>
    </div>
</div>


<%--<script type="text/javascript" src="/style/js/popup.min.js"></script>--%>

<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
-->

</body>
</html>