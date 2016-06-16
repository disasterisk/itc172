<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fan Login</title>
</head>
<body>
    <form id="fLogInForm" runat="server">
    <table>
        <tr>
            <td colspan="2">
                <h1>Fan Login</h1>
            </td>
        </tr>
        <tr>
            <td>
                <label>username: </label>
            </td>
            <td>
                <asp:TextBox ID="fUNameText" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label>password: </label>
            </td>
            <td>
                <asp:TextBox ID="fPassText" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="fLogInButton" Text="Log In!" runat="server" OnClick="fLogInButton_Click" />
            </td>
            <td>
                <asp:Label ID="fLogInError" Text="" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
        <a href="fanRegister.aspx">Or register...</a>
    </form>
</body>
</html>
