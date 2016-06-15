using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "showDataService" in code, svc and config file together.
public class showDataService : IshowDataService
{
    ShowDetailEntities data = new ShowDetailEntities();
    public List<ShowDetail> getDetail(string sName, int vKey)
    {
        var sDetails = from d in data.ShowDetails
                       from s in data.Shows
                       from a in data.Artists
                       where s.ShowName.Equals(sName)
                       where s.VenueKey.Equals(vKey)
                       select new
                       {
                           d.Artist,
                           d.ShowDetailArtistStartTime,
                           d.ShowDetailAdditional
                       };
        List<ShowDetail> details = new List<ShowDetail>();
        foreach (var e in sDetails)
        {
            ShowDetail newDetail = new ShowDetail();
            newDetail.Artist = e.Artist;
            newDetail.ShowDetailArtistStartTime = e.ShowDetailArtistStartTime;
            newDetail.ShowDetailAdditional = e.ShowDetailAdditional;

            details.Add(newDetail);
        }
        return details;
    }
}
