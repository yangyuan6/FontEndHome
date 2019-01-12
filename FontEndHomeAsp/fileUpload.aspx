<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fileUpload.aspx.cs" Inherits="fileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="upload_click" Width="111px" />
    </div>
    </form>
</body>
</html>
