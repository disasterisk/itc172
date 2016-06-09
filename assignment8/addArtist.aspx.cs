using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addArtist : System.Web.UI.Page
{
    showManagerReference.IaddShowServiceClient data = new showManagerReference.IaddShowServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserKey"] == null)
            Response.Redirect("../assignment6/Default.aspx");
    }

    protected void addArtistButton_Click(object sender, EventArgs e)
    {
        newArtist();
    }
    protected void newArtist()
    {
        int venue = (int)(Session["UserKey"]);
        try
        {
            data.addArtist(aNameText.Text, aWebText.Text, aEmailText.Text);

        }
        catch
        {
            artistError.Text = "There was a problem adding this artist";
        }
    }

    protected void aDoneButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("start.html");
    }
}