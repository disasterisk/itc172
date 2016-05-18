<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="loginForm" runat="server">
        <div>
            <h1>Login</h1>
            <table>
                <tr>
                    <td>username: </td>
                    <td><asp:TextBox ID="usernameText" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>password: </td>
                    <td><asp:TextBox ID="passwordText" TextMode="Password" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="loginSubmit" Text="Login" runat="server" OnClick="loginSubmit_Click" /></td>
                    <td><asp:Label ID="loginError" Text="" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>
        <em><asp:LinkButton ID="registerLink" PostBackUrl="register.aspx" Text="or register..." runat="server"></asp:LinkButton></em>
    </form>
</body>
</html>
