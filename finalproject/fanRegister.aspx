<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fanRegister.aspx.cs" Inherits="fanRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Fan</title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <form id="fRegisterForm" runat="server">
        <table>
            <tr>
                <td colspan="3">
                    <h1>Fan Registration</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <label>name: </label>
                </td>
                <td>
                    <asp:TextBox ID="fNameText" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireFName" runat="server" ErrorMessage="Please enter a name" ControlToValidate="fNameText"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <label>email: </label>
                </td>
                <td>
                    <asp:TextBox ID="fEmailText" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireFEmail" runat="server" ErrorMessage="Please enter an email " ControlToValidate="fEmailText"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="validEmail" runat="server" ErrorMessage="Please enter a valid email" ControlToValidate="fEmailText" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                <label>username: </label>
                </td>
                <td>
                    <asp:TextBox ID="fUNameText" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireFUName" runat="server" ErrorMessage="Please select a username" ControlToValidate="fUNameText"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <label>password: </label>
                </td>
                <td>
                    <asp:TextBox ID="fPassText" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireFPass" runat="server" ErrorMessage="Please enter a password" ControlToValidate="fPassText"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <label>confirm password: </label>
                </td>
                <td>
                    <asp:TextBox ID="FPass2Text" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireFPass2" runat="server" ErrorMessage="Please confirm your password " ControlToValidate="FPass2Text"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="matchPass" runat="server" ErrorMessage="Passwords must match" ControlToCompare="fPassText" ControlToValidate="FPass2Text"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="fRegisterButton" Text="Register!" runat="server" OnClick="fRegisterButton_Click" />
                </td>
                <td>
                    <asp:Button ID="fRegisterQuitButton" Text="Quit" runat="server" OnClick="fRegisterQuitButton_Click" CausesValidation="false" />
                </td>
                <td>
                    <asp:Label ID="fRegisterError" Text="" CssClass="errorLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
