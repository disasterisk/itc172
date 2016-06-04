using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "addShowService" in code, svc and config file together.
public class addShowService : IaddShowService
{
    showEntities data = new showEntities();
    public bool addArtist(string artistName, string artistWeb, string artistEmail)
    {
        Artist artist = new Artist();
        artist.ArtistName = artistName;
        artist.ArtistWebPage = artistWeb;
        artist.ArtistEmail = artistEmail;
        bool result = true;
        try
        {
            data.Artists.Add(artist);
            data.SaveChanges();
        }
        catch
        {
            result = false;
        }
        return result;
    }

    public bool addShow(string showName, DateTime showDate, TimeSpan showTime, string showTickets, int venueKey)
    {
        Show show = new Show();
        show.ShowName = showName;
        show.ShowDate = showDate;
        show.ShowTime = showTime;
        show.ShowTicketInfo = showTickets;
        show.VenueKey = venueKey;
        bool result = true;
        try
        {
            data.Shows.Add(show);
            data.SaveChanges();
        }
        catch
        { result = false; }
        return result;
    }

    public bool addDetail(string showName, string artistName, TimeSpan artistStart, string moreDetail)
    {
        ShowDetail detail = new ShowDetail();
        bool result = true;
        detail.ArtistKey = data.Artists.FirstOrDefault(x => x.ArtistName.Equals(artistName)).ArtistKey;
        detail.ShowKey = data.Shows.FirstOrDefault(x => x.ShowName.Equals(showName)).ShowKey;
        detail.ShowDetailArtistStartTime = artistStart;
        detail.ShowDetailAdditional = moreDetail;
        try
        {
            data.ShowDetails.Add(detail);
            data.SaveChanges();
        }
        catch
        {
            result = false;
        }
        return result;
    }
}
