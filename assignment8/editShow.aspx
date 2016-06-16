<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editShow.aspx.cs" Inherits="editShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Show</title>
</head>
<body>
    <form id="showEditForm" runat="server">
        <table>
            <tr>
                <td colspan="3">
                    <h1>Edit Show</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="showSelectLabel" runat="server">Select Show: </asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="showDrop" runat="server" AutoPostBack="True" OnSelectedIndexChanged="showDrop_SelectedIndexChanged"></asp:DropDownList>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="detailArtistLabel" runat="server">Add Artist</asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="detailArtistDrop" runat="server"></asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireDetailArtist" runat="server" ErrorMessage="Please select an artist" ControlToValidate="detailArtistDrop" InitialValue="0"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="artistStartLabel" runat="server">Artist Start Time: </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="artistStartText" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireStartDetail" runat="server" ErrorMessage="Please enter a start time " ControlToValidate="artistStartText"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="validStartDetail" runat="server" ErrorMessage="Please enter a valid time" ControlToValidate="artistStartText" ValidationExpression="(\d{1,2}):(\d\d)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="moreDetailLabel" runat="server">More Info: </asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="moreDetailText" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="addDetailButton" Text="Update Show!" runat="server" OnClick="addDetailButton_Click" />
                </td>
                <td>
                    <asp:Button ID="eDoneButton" Text="Quit" runat="server" OnClick="eDoneButton_Click" />
                </td>
                <td>
                    <asp:Label ID="detailError" Text="" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
