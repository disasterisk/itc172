using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginSubmit_Click(object sender, EventArgs e)
    {
        login();
    }

    protected void login()
    {
        venueLoginReference.IvenueOwnerServiceClient service = new venueLoginReference.IvenueOwnerServiceClient();
        int key = service.venueLogin(usernameText.Text, passwordText.Text);
        if (key!=0)
        {
            Session["Userkey"] = key;
            Response.Redirect("addShow.aspx");
        }
        else
        { loginError.Text = "Invalid username or password"; }


    }
}