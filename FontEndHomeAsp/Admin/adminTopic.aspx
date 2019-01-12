<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminTopic.aspx.cs" Inherits="Admin_adminTopic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <form id="form1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="60%" Width="100%" >
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" >
            <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="topic_name" HeaderText="话题名称" SortExpression="topic_name" >
            <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="topic_describe" HeaderText="描述" SortExpression="topic_describe" >
            <ItemStyle Width="40%" />
            </asp:BoundField>
            <asp:BoundField DataField="add_time" HeaderText="添加时间" SortExpression="add_time" >
            <ItemStyle Width="15%" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [tb_topic] WHERE [id] = @id" InsertCommand="INSERT INTO [tb_topic] ([id], [topic_name], [topic_describe], [add_time]) VALUES (@id, @topic_name, @topic_describe, @add_time)" SelectCommand="SELECT [id], [topic_name], [topic_describe], [add_time] FROM [tb_topic] ORDER BY [add_time] DESC" UpdateCommand="UPDATE [tb_topic] SET [topic_name] = @topic_name, [topic_describe] = @topic_describe, [add_time] = @add_time WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="String" />
                <asp:Parameter Name="topic_name" Type="String" />
                <asp:Parameter Name="topic_describe" Type="String" />
                <asp:Parameter Name="add_time" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="topic_name" Type="String" />
                <asp:Parameter Name="topic_describe" Type="String" />
                <asp:Parameter Name="add_time" Type="DateTime" />
                <asp:Parameter Name="id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="40%" Width="1354px"  style="margin-right: 448px">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="topic_name" HeaderText="topic_name" SortExpression="topic_name" />
                <asp:BoundField DataField="add_time" HeaderText="add_time" SortExpression="add_time" />
                <asp:BoundField DataField="topic_describe" HeaderText="topic_describe" SortExpression="topic_describe" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM [tb_topic] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
