using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    assignment3Reference.Iassignment3Client showTracker = new assignment3Reference.Iassignment3Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            makeArtistDropdown();
            makeVenueDropdown();
        }
        artistDropdown.Items[0].Attributes.Add("disabled", "true");
        venueDropdown.Items[0].Attributes.Add("disabled", "true");
    }

    protected void makeArtistDropdown()
    {
        string[] artists = showTracker.getArtist();
        artistDropdown.DataSource = artists;
        artistDropdown.DataBind();
        artistDropdown.Items.Insert(0, "Select Artist");
    }
    protected void makeVenueDropdown()
    {
        string[] venues = showTracker.getVenues();
        venueDropdown.DataSource = venues;
        venueDropdown.DataBind();
        venueDropdown.Items.Insert(0, "Select Venue");
    }

    protected void venueDropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        string venue = venueDropdown.SelectedItem.Text;
        assignment3Reference.show[] shows = showTracker.byVenue(venue);
        data.DataSource = shows;
        data.DataBind();
        venueDropdown.SelectedIndex = 0;
    }
    protected void artistDropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        string artist = artistDropdown.SelectedItem.Text;
        assignment3Reference.show[] shows = showTracker.byArtist(artist);
        data.DataSource = shows;
        data.DataBind();
        artistDropdown.SelectedIndex = 0;
    }

    protected void showButton_Click(object sender, EventArgs e)
    {
        string[] shows = showTracker.getShows();
        data.DataSource = shows;
        data.DataBind();
    }
}