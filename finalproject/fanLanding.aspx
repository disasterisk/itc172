<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fanLanding.aspx.cs" Inherits="fanLanding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="venueDropdown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="venueDropdown_SelectedIndexChanged"></asp:DropDownList>
        <asp:DropDownList ID="artistDropdown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="artistDropdown_SelectedIndexChanged"></asp:DropDownList>
        <asp:Button ID="showButton" runat="server" Text="All Shows!" OnClick="showButton_Click"></asp:Button>
        <asp:DataGrid ID="data" runat="server"></asp:DataGrid>
        <hr />
        <asp:DataGrid ID="followedData" runat="server"></asp:DataGrid>
        <a href="followNewArtist.aspx">Follow Artists!</a>
    </form>
</body>
</html>
