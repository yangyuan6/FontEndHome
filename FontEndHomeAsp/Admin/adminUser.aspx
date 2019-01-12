<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminUser.aspx.cs" Inherits="Admin_adminUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_phone" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100%" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="user_name" HeaderText="用户名" SortExpression="user_name">
                <ItemStyle Width="30%" />
                </asp:BoundField>
                <asp:BoundField DataField="user_phone" HeaderText="userPhone" ReadOnly="True" SortExpression="user_phone">
                <ItemStyle Width="30%" />
                </asp:BoundField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [tb_user] WHERE [user_phone] = @user_phone" InsertCommand="INSERT INTO [tb_user] ([user_name], [user_phone]) VALUES (@user_name, @user_phone)" SelectCommand="SELECT [user_name], [user_phone] FROM [tb_user]" UpdateCommand="UPDATE [tb_user] SET [user_name] = @user_name WHERE [user_phone] = @user_phone">
            <DeleteParameters>
                <asp:Parameter Name="user_phone" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_phone" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
