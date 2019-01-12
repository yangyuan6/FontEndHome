<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminArticle.aspx.cs" Inherits="Admin_adminArticle" %>

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
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100%" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="article_name" HeaderText="文章名称" SortExpression="article_name" >
            <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="typeid" HeaderText="类型" SortExpression="typeid" >
            <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="content" HeaderText="内容" SortExpression="content" >
            <ItemStyle Width="50%" />
            </asp:BoundField>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="True" Visible="False" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [tb_article] WHERE [id] = @id" InsertCommand="INSERT INTO [tb_article] ([content], [typeid], [article_name], [id]) VALUES (@content, @typeid, @article_name, @id)" SelectCommand="SELECT [content], [typeid], [article_name], [id] FROM [tb_article]" UpdateCommand="UPDATE [tb_article] SET [content] = @content, [typeid] = @typeid, [article_name] = @article_name WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="typeid" Type="String" />
                <asp:Parameter Name="article_name" Type="String" />
                <asp:Parameter Name="id" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="typeid" Type="String" />
                <asp:Parameter Name="article_name" Type="String" />
                <asp:Parameter Name="id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
