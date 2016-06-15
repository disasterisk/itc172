using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    showManagerReference.IaddShowServiceClient data = new showManagerReference.IaddShowServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserKey"] == null)
            Response.Redirect("venueLogin.aspx");
    }

    protected void showButton_Click(object sender, EventArgs e)
    {
        addShow();
    }

    protected void addShow()
    {
        int venue = (int)(Session["UserKey"]);
        try
        {
            data.addShow(sNameText.Text, Convert.ToDateTime(sDatetext.Text), TimeSpan.Parse(sTimeText.Text), sTicketsText.Text, venue);
            showError.Text = "Show Added!";
        }
        catch
        {
            showError.Text = "There was a problem adding your show";
        }
    }

    protected void sDoneButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("start.html");
    }
}