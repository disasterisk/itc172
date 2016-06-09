using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "assignment3" in code, svc and config file together.
public class assignment3 : Iassignment3
{
    ShowTrackerEntities data = new ShowTrackerEntities();
    public List<string> getArtist()
    {
        var artists = from a in data.Artists orderby a.ArtistName select new { a.ArtistName };
        List<string> artistList = new List<string>();
        foreach (var a in artists)
        {
            artistList.Add(a.ArtistName.ToString());
        }

        return artistList;
    }

    public List<string> getShows()
    {
        var shows = from s in data.Shows orderby s.ShowName select new { s.ShowName };
        List<string> showList = new List<string>();
        foreach (var s in shows)
        {
            showList.Add(s.ShowName.ToString());
        }

        return showList;
    }

    public List<string> getVenues()
    {
        var venues = from v in data.Venues orderby v.VenueName select new { v.VenueName };
        List<string> venueList = new List<string>();
        foreach (var v in venues)
        {
            venueList.Add(v.VenueName.ToString());
        }

        return venueList;
    }

    public List<show> byVenue(string vName)
    {
        var shows = from s in data.Shows
                    from v in data.Venues
                    where v.VenueName.Equals(vName)
                    select new
                    {
                        s.ShowName,
                        s.ShowDate,
                        s.ShowTime,
                        v.VenueName
                    };
        List<show> vShows = new List<show>();
        foreach (var entry in shows)
        {
            show info = new show();
            info.name = entry.ShowName;
            info.date = entry.ShowDate.ToShortDateString();
            info.start = entry.ShowTime.ToString();
            info.venue = entry.VenueName;

            vShows.Add(info);
        }

        return vShows;
    }

    public List<show> byArtist(string aName)
    {
        var shows = from a in data.Artists
                    from v in data.Venues
                    from s in data.Shows
                    where a.ArtistName.Equals(aName)
                    select new
                    {
                        v.VenueName,
                        s.ShowName,
                        s.ShowDate,
                        s.ShowTime
                    };
        List<show> aShow = new List<show>();
        foreach (var entry in shows)
        {
            show info = new show();
            info.venue = entry.VenueName;
            info.name = entry.ShowName;
            info.date = entry.ShowDate.ToShortDateString();
            info.start = entry.ShowTime.ToString();

            aShow.Add(info);
        }

        return aShow;
    }
     public string getVenue(int key)
    {
        string venue = (from v in data.Venues where v.VenueKey.Equals(key) select v.VenueName).ToString();
        return venue;
    }
}
