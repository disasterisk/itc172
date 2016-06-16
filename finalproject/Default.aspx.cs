using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    fanRegisterService data = new fanRegisterService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void fLogInButton_Click(object sender, EventArgs e)
    {
        login();
    }
    protected void login()
    {
        int key = data.fanLogin(fUNameText.Text, fPassText.Text);
        if (key!=0)
        {
            Session["UserKey"] = key;
            Response.Redirect("fanLanding.aspx");
        }
        else
        {
            fLogInError.Text = "Error";
        }
    }
}