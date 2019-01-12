<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminComment.aspx.cs" Inherits="Admin_adminComment" %>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="AdminStatic/css/pintuer.css">
    <link rel="stylesheet" href="AdminStatic/css/admin.css">
    <script src="AdminStatic/js/jquery.js"></script>
    <script src="AdminStatic/js/pintuer.js"></script>
    <script src="/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
    <table class="table table-hover text-center">
        <tr>
            <th width="10%">评论用户</th>
            <th width="70%">评论内容</th>
            <th width="10%">操作</th>
        </tr>
        </table>
    <asp:DataList ID="DataList1" runat="server" Width="100%">
    <SeparatorStyle BorderStyle="None"/>
    <ItemTemplate>
        <table class="table table-hover text-center" id="<%#Eval("id") %>">
            <td width="10%"><%#Eval("user_name") %></td>
            <td width="70%">
                <%#Eval("comment_content") %>
            </td>
            <td width="10%"><div class="button-group">  <a class="button border-red" href="javascript:void(0)" onclick="del('<%#Eval("id")%>')"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </table>
        </ItemTemplate>
    </asp:DataList>
<%--        <tr>
            <td>用户名</td>
            <td>评论内容撒打发斯蒂芬大  阿萨德法师打发  46464646466644664
                评论内容撒打发斯蒂芬大  阿萨德法师打发  46464646466644664
                评论内容撒打发斯蒂芬大  阿萨德法师打发  46464646466644664
                评论内容撒打发斯蒂芬大  阿萨德法师打发  46464646466644664
                评论内容撒打发斯蒂芬大  阿萨德法师打发  46464646466644664
                评论内容撒打发斯蒂芬大  阿萨德法师打发  46464646466644664
                评论内容撒打发斯蒂芬大  阿萨德法师打发  46464646466644664
            </td>
            <td><div class="button-group">  <a class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr>

    </table>--%>
</div>
<script type="text/javascript">
    function del(id){
        if(confirm("您确定要删除吗?")) {
           // alert(id);
            $.ajax({
                type: 'POST',
                data: {
                    'commentId':id
                },
                url: '/Ajax/deleteCommentById.ashx'
            }).done(function(result) {
               // alert(result);
                var json = eval("(" + result + ")");
                if (json.state == 1) {
                    alert(json.msg);
                    document.getElementById(id).remove();
                } else if (json.state == 2) {
                    alert(json.msg);
                    window.location.href = json.url;
                } else {
                        alert(json.msg);
                }
            })
        }
    }
</script>
</body>
</html>