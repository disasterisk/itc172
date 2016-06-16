using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fanRegister : System.Web.UI.Page
{
    fEntities data = new fEntities();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void fRegisterButton_Click(object sender, EventArgs e)
    {
        registerFan();
    }
    protected void registerFan()
    {
        fanRegisterService r = new fanRegisterService();
        bool result = r.registerFan(fNameText.Text, fEmailText.Text, fUNameText.Text, fPassText.Text);
        if (result)
        { Response.Redirect("Default.aspx"); }
        else
        { fRegisterError.Text = "Error"; }
    }

    protected void fRegisterQuitButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}