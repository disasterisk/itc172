using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "artistFanService" in code, svc and config file together.
public class artistFanService : IartistFanService
{
    fEntities data = new fEntities();
    //why does this return an int?
    public int fanArtist(int fKey, string aName)
    {
        int result = 1;
        //This doesn't work
        Fan aFan = (from f in data.Fans where f.FanKey.Equals(fKey) select f).First();
        Artist fArtist = (from a in data.Artists where a.ArtistName.Equals(aName) select a).First();
        aFan.Artists.Add(fArtist);
        data.SaveChanges();
        return result;
    }
}
