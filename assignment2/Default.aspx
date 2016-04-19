<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Stylish.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="dropdown" runat="server" OnSelectedIndexChanged="dropdown_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
        <asp:DataGrid ID="grid" runat="server"></asp:DataGrid>
    </div>
    </form>
</body>
</html>
