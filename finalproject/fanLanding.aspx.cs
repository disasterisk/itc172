using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fanLanding : System.Web.UI.Page
{
    fEntities lData = new fEntities();
    assignment3 service = new assignment3();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserKey"]==null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            makeArtistDropdown();
            makeVenueDropdown();
            //fillFollowedData((int)Session["UserKey"]);
        }
        artistDropdown.Items[0].Attributes.Add("disabled", "true");
        venueDropdown.Items[0].Attributes.Add("disabled", "true");
    }

    protected void makeArtistDropdown()
    {
        List<string> artists = service.getArtist();
        artistDropdown.DataSource = artists;
        artistDropdown.DataBind();
        artistDropdown.Items.Insert(0, "Select Artist");
    }
    protected void makeVenueDropdown()
    {
        List<string> venues = service.getVenues();
        venueDropdown.DataSource = venues;
        venueDropdown.DataBind();
        venueDropdown.Items.Insert(0, "Select Venue");
    }

    protected void venueDropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        string venue = venueDropdown.SelectedItem.Text;
        List<show> shows = service.byVenue(venue);
        data.DataSource = shows;
        data.DataBind();
        venueDropdown.SelectedIndex = 0;
    }
    protected void artistDropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        string artist = artistDropdown.SelectedItem.Text;
        List<show> shows = service.byArtist(artist);
        data.DataSource = shows;
        data.DataBind();
        artistDropdown.SelectedIndex = 0;
    }

    protected void showButton_Click(object sender, EventArgs e)
    {
        List<string> shows = service.getShows();
        data.DataSource = shows;
        data.DataBind();
    }
    //can't quite get to work
    /*protected void fillFollowedData(int fKey)
    {
        Fan aFan = (from f in lData.Fans where f.FanKey.Equals(fKey) select f).First();
        List<Show> shows = new List<Show>();
        foreach (Artist a in aFan.Artists)
        {
            var fShows = from sd in lData.ShowDetails
                         where sd.ArtistKey.Equals(a.ArtistKey)
                         select sd.Show;
            foreach (var s in fShows)
            {
                shows.Add(s);
            }
            followedData.DataSource = shows;
            followedData.DataBind();
            }
        }*/
    }
    