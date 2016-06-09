<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addArtist.aspx.cs" Inherits="addArtist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Artist</title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="artistForm" runat="server">
    <table>
        <tr>
            <td colspan="3">
                <h1>Add Artist</h1>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="aNameLabel" runat="server">artist name: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="aNameText" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="requireAName" runat="server" ErrorMessage="Please enter artist name" ControlToValidate="aNameText"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="aWebLabel" runat="server">artist web page: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="aWebText" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="validWeb" runat="server" ErrorMessage="Please enter a valid website" ControlToValidate="aWebText" ValidationExpression="(http(s)?://)?([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="aEmailLabel" runat="server">artist email: </asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="aEmailText" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="requireAEmail" runat="server" ErrorMessage="Please enter artist's email " ControlToValidate="aEmailText"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="validEmail" runat="server" ErrorMessage="Please enter a valid email" ControlToValidate="aEmailText" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="addArtistButton" Text="Add Artist!" runat="server" OnClick="addArtistButton_Click" />
            </td>
            <td>
                <asp:Button ID="aDoneButton" Text="Quit" runat="server" OnClick="aDoneButton_Click" />
            </td>
            <td>
                <asp:Label ID="artistError" Text="" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
