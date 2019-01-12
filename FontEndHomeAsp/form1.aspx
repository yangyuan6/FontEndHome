%@ Page Language="C#" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form2"  method="post" action="form1"   >
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <input id="Text1" name="Text1" type="text"  />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <input id="Text2"  name="Text2" type="text" runat="server"/><input id="Submit1" type="submit" value="submit" />
    </div>
    </form>
</body>
</html>
