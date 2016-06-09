<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Show</title>
</head>
<body>
    <form id="showForm" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="3">
                        <h1>Add show</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="sNameLabel" runat="server">Show Name: </asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="sNameText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireSName" runat="server" ErrorMessage="Please add a show name" ControlToValidate="sNameText"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="sDateLabel" runat="server">Show Date: </asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="sDatetext" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireSDate" runat="server" ErrorMessage="Please add a show date " ControlToValidate="sDatetext"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="validDate" runat="server" ErrorMessage="Please enter a valid date" ControlToValidate="sDatetext" ValidationExpression="(\d\d)(/|-)(\d\d)(/|-)(\d\d|\d{4})"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="sTimeLabel" runat="server">Show Time: </asp:Label> 
                    </td>
                    <td>
                        <asp:TextBox ID="sTimeText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireSTime" runat="server" ErrorMessage="Please add a show time " ControlToValidate="sTimeText"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="validTime" runat="server" ErrorMessage="Please enter a valid time" ControlToValidate="sTimeText" ValidationExpression="\d{1,2}:[0-5]\d"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="sTicketsLabel" runat="server">Ticket Info: </asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="sTicketsText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireSTickets" runat="server" ErrorMessage="Please add ticket information" ControlToValidate="sTicketsText"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="showButton" Text="Add show!" runat="server" OnClick="showButton_Click"/>
                    </td>
                    <td>
                        <asp:Button ID="sDoneButton" Text="Quit" runat="server" OnClick="sDoneButton_Click" />
                    </td>
                    <td>
                        <asp:Label ID="showError" Text="" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
