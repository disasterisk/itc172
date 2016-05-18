<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="registerForm" runat="server">
        <div>
            <table>
                <tr>
                    <td>venue name: </td>
                    <td><asp:TextBox ID="vNameText" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireVenueName" runat="server" ErrorMessage="Your venue needs a name!" ControlToValidate="vNameText"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>venue address: </td>
                    <td><asp:TextBox ID="vAddressText" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireVenueAddress" runat="server" ErrorMessage="Your venue needs a location!" ControlToValidate="vAddressText"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>venue city: </td>
                    <td><asp:TextBox ID="vCityText" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireVenueCity" runat="server" ErrorMessage="Your venue needs a location!" ControlToValidate="vCityText"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>venue state: </td>
                    <td>
                        <asp:DropDownList ID="stateDropDown" runat="server">
                            <asp:ListItem Selected="True" Value="0">Select State</asp:ListItem>
                            <asp:ListItem Value="AK">Alaska</asp:ListItem>
                            <asp:ListItem Value="AL">Alabama</asp:ListItem>
                            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                            <asp:ListItem Value="CA">California</asp:ListItem>
                            <asp:ListItem Value="CO">Colorado</asp:ListItem>
                            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                            <asp:ListItem Value="DE">Delaware</asp:ListItem>
                            <asp:ListItem Value="FL">Florida</asp:ListItem>
                            <asp:ListItem Value="GA">Georgia</asp:ListItem>
                            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                            <asp:ListItem Value="IA">Iowa</asp:ListItem>
                            <asp:ListItem Value="ID">Idaho</asp:ListItem>
                            <asp:ListItem Value="IL">Illinois</asp:ListItem>
                            <asp:ListItem Value="IN">Indiana</asp:ListItem>
                            <asp:ListItem Value="KS">Kansas</asp:ListItem>
                            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                            <asp:ListItem Value="MD">Maryland</asp:ListItem>
                            <asp:ListItem Value="ME">Maine</asp:ListItem>
                            <asp:ListItem Value="MI">Michigan</asp:ListItem>
                            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                            <asp:ListItem Value="MO">Missouri</asp:ListItem>
                            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                            <asp:ListItem Value="MT">Montana</asp:ListItem>
                            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                            <asp:ListItem Value="NV">Nevada</asp:ListItem>
                            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                            <asp:ListItem Value="NY">New York</asp:ListItem>
                            <asp:ListItem Value="OH">Ohio</asp:ListItem>
                            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                            <asp:ListItem Value="OR">Oregon</asp:ListItem>
                            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                            <asp:ListItem Value="TX">Texas</asp:ListItem>
                            <asp:ListItem Value="UT">Utah</asp:ListItem>
                            <asp:ListItem Value="VA">Virginia</asp:ListItem>
                            <asp:ListItem Value="VT">Vermont</asp:ListItem>
                            <asp:ListItem Value="WA">Washington</asp:ListItem>
                            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireVenueState" runat="server" ErrorMessage="Please select a state!" ControlToValidate="stateDropDown" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>venue zip code: </td>
                    <td><asp:TextBox ID="vZipText" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireZip" runat="server" ErrorMessage="Your venue needs a zip code! " ControlToValidate="vZipText"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>venue phone: </td>
                    <td><asp:TextBox ID="vPhoneText" TextMode="Phone" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="validPhone" runat="server" ErrorMessage="Please enter valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="vPhoneText"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>venue email: </td>
                    <td><asp:TextBox ID="vEmailText" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="validEmail" runat="server" ErrorMessage="Please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="vEmailText"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>venue webpage: </td>
                    <td><asp:TextBox ID="vWebText" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="validWeb" runat="server" ErrorMessge="Please enter a valid website" ControlToValidate="vWebText" ErrorMessage="Enter valid web address" ValidationExpression="(http(s)?://)?([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>venue age restriction: </td>
                    <td><asp:TextBox ID="ageRestrictionText" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RangeValidator runat="server" ControlToValidate="ageRestrictionText" ErrorMessage="Please enter a number between 0 and 65" MaximumValue="65" MinimumValue="0"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>venue login name: </td>
                    <td><asp:TextBox ID="vLoginNameText" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requireLoginName" runat="server" ErrorMessage="Your venue needs a login name!" ControlToValidate="vLoginNameText"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>login password: </td>
                    <td><asp:TextBox ID="vPasswordText" TextMode="Password" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requirePassword" runat="server" ErrorMessage="You need a password!" ControlToValidate="vPasswordText"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>confirm password: </td>
                    <td><asp:TextBox ID="password2Text" TextMode="Password" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requirePasswordConfirm" runat="server" ErrorMessage="Please confirm password. " ControlToValidate="password2Text"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="matchPassword" runat="server" ErrorMessage="Passwords must match." ControlToCompare="vPasswordText" ControlToValidate="password2Text"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Button ID="registerButton" Text="Register!" runat="server" OnClick="registerButton_Click" /></td>
                    <td><asp:Label ID="registerError" Text="" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>
        <em><asp:LinkButton ID="loginLink" PostBackUrl="default.aspx" Text="or log in..." runat="server"></asp:LinkButton></em>
    </form>
</body>
</html>
