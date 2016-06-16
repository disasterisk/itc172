using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class followNewArtist : System.Web.UI.Page
{
    artistFanService data = new artistFanService();
    assignment3 d2 = new assignment3();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserKey"] == null)
        { Response.Redirect("Default.aspx"); }
        if (!IsPostBack)
        { populateArtists(); }
    }
    protected void populateArtists()
    {
        List<string> artists = d2.getArtist();
        addArtistCheckList.DataSource = artists;
        addArtistCheckList.DataBind();
    }
    protected void addArtists()
    {
        int key = (int)Session["UserKey"];
        foreach(ListItem i in addArtistCheckList.Items)
        {
            if (i.Selected)
            {
                int x = data.fanArtist(key, i.Text);
            }
            
        }
    }

    protected void addArtistButton_Click(object sender, EventArgs e)
    {
        addArtists();
        addArtistError.Text = "Artists added!";
    }

    protected void fanArtistQuitButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("fanLanding.aspx");
    }
}