<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Birthday Calculator</title>
        <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    </head>
    <body>
        <h1>Birthday Calculator</h1>
        <form id="form1" runat="server">
            <p>
                What is your name? <asp:TextBox ID="userName" runat="server"></asp:TextBox>
                <asp:Button ID="enterName" runat="server" Text="Enter" OnClick="greet" />
            </p>
            <p>
                <asp:Label ID="greeting" runat="server" Text=""></asp:Label>
            </p>
            <p>When is your birthday?</p>
            <asp:DropDownList runat="server" ID="year">
                <asp:ListItem Value="0" Selected="True"> Year</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1970</asp:ListItem>
                <asp:ListItem>1969</asp:ListItem>
                <asp:ListItem>1968</asp:ListItem>
                <asp:ListItem>1967</asp:ListItem>
                <asp:ListItem>1966</asp:ListItem>
                <asp:ListItem>1965</asp:ListItem>
                <asp:ListItem>1964</asp:ListItem>
                <asp:ListItem>1963</asp:ListItem>
                <asp:ListItem>1962</asp:ListItem>
                <asp:ListItem>1961</asp:ListItem>
                <asp:ListItem>1960</asp:ListItem>
                <asp:ListItem>1959</asp:ListItem>
                <asp:ListItem>1958</asp:ListItem>
                <asp:ListItem>1957</asp:ListItem>
                <asp:ListItem>1956</asp:ListItem>
                <asp:ListItem>1955</asp:ListItem>
                <asp:ListItem>1954</asp:ListItem>
                <asp:ListItem>1953</asp:ListItem>
                <asp:ListItem>1952</asp:ListItem>
                <asp:ListItem>1951</asp:ListItem>
                <asp:ListItem>1950</asp:ListItem>
                <asp:ListItem>1949</asp:ListItem>
                <asp:ListItem>1948</asp:ListItem>
                <asp:ListItem>1947</asp:ListItem>
                <asp:ListItem>1946</asp:ListItem>
                <asp:ListItem>1945</asp:ListItem>
                <asp:ListItem>1944</asp:ListItem>
                <asp:ListItem>1943</asp:ListItem>
                <asp:ListItem>1942</asp:ListItem>
                <asp:ListItem>1941</asp:ListItem>
                <asp:ListItem>1940</asp:ListItem>
                <asp:ListItem>1939</asp:ListItem>
                <asp:ListItem>1938</asp:ListItem>
                <asp:ListItem>1937</asp:ListItem>
                <asp:ListItem>1936</asp:ListItem>
                <asp:ListItem>1935</asp:ListItem>
                <asp:ListItem>1934</asp:ListItem>
                <asp:ListItem>1933</asp:ListItem>
                <asp:ListItem>1932</asp:ListItem>
                <asp:ListItem>1931</asp:ListItem>
                <asp:ListItem>1930</asp:ListItem>
                <asp:ListItem>1929</asp:ListItem>
                <asp:ListItem>1928</asp:ListItem>
                <asp:ListItem>1927</asp:ListItem>
                <asp:ListItem>1926</asp:ListItem>
                <asp:ListItem>1925</asp:ListItem>
                <asp:ListItem>1924</asp:ListItem>
                <asp:ListItem>1923</asp:ListItem>
                <asp:ListItem>1922</asp:ListItem>
                <asp:ListItem>1921</asp:ListItem>
                <asp:ListItem>1920</asp:ListItem>
                <asp:ListItem>1919</asp:ListItem>
                <asp:ListItem>1918</asp:ListItem>
                <asp:ListItem>1917</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList runat="server" ID="month">
                <asp:ListItem Selected="True" Value="0">Month</asp:ListItem>
                <asp:ListItem Value="1">January</asp:ListItem>
                <asp:ListItem Value="2">February</asp:ListItem>
                <asp:ListItem Value="3">March</asp:ListItem>
                <asp:ListItem Value="4">April</asp:ListItem>
                <asp:ListItem Value="5">May</asp:ListItem>
                <asp:ListItem Value="6">June</asp:ListItem>
                <asp:ListItem Value="7">July</asp:ListItem>
                <asp:ListItem Value="8">August</asp:ListItem>
                <asp:ListItem Value="9">September</asp:ListItem>
                <asp:ListItem Value="10">October</asp:ListItem>
                <asp:ListItem Value="11">November</asp:ListItem>
                <asp:ListItem Value="12">December</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="enterYearMonth" runat="server" Text="Enter" OnClick="updateCalendar"/>
            <asp:Calendar runat="server" ID="birthdayCalendar" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
            <p><asp:Label ID="results" runat="server" Text=""></asp:Label></p>
        </form>
    </body>
</html>
