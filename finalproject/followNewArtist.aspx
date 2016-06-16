<%@ Page Language="C#" AutoEventWireup="true" CodeFile="followNewArtist.aspx.cs" Inherits="followNewArtist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="addArtistForm" runat="server">
        <asp:CheckBoxList ID="addArtistCheckList" runat="server"></asp:CheckBoxList>
        <table>
            <tr>
                <td>
                    <asp:Button ID="addArtistButton" Text="Add Artists" runat="server" OnClick="addArtistButton_Click" />
                </td>
                <td>
                    <asp:Button ID="fanArtistQuitButton" Text="Quit" runat="server" OnClick="fanArtistQuitButton_Click" />
                </td>
                <td>
                    <asp:Label ID="addArtistError" Text="" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
