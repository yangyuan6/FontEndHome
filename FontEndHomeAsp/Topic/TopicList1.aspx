<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TopicList1.aspx.cs" Inherits="Topic_TopicList1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="178px" Width="702px" DataKeyNames="Id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id号" SortExpression="Id" />
                <asp:BoundField DataField="TopicName" HeaderText="话题名" SortExpression="TopicName" />
                <asp:BoundField DataField="AddTime" HeaderText="添加时间" SortExpression="AddTime" Visible="False" />
                <asp:BoundField DataField="TopicDescribe" HeaderText="话题描述" SortExpression="TopicDescribe" />
                <asp:CommandField ShowDeleteButton="True" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="deleteTopic" SelectMethod="GetTopics" TypeName="BLL.TopicBLL" DataObjectTypeName="Model.Topic">
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
