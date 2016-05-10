using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "venueOwnerService" in code, svc and config file together.
public class venueOwnerService : IvenueOwnerService
{
    venueOwnerEntities data = new venueOwnerEntities();
    public bool registerVenue(string venueName, string venueAddress, string venueCity, string venueState, string venueZip, string venuePhone, string venueEmail, string venueWebPage, int ageRestriction, string venueLogin, string venuePassword)
    {
        bool result = true;
        int pass = data.usp_RegisterVenue(venueName, venueAddress, venueCity, venueState, venueZip, venuePhone, venueEmail, venueWebPage, ageRestriction, venueLogin, venuePassword);
        if (pass==-1)
        {
            result = false;
        }
        
        return result;
    }

    public int venueLogin(string venueLogin, string venuePassword)
    {
        int vKey = 0;
        int result = data.usp_venueLogin(venueLogin, venuePassword);
        if ( result!=-1 )
        {
            var key = (from l in data.VenueLogins from v in data.Venues where l.VenueLoginUserName.Equals(venueLogin) select new { v.VenueKey }).FirstOrDefault();
            vKey = key.VenueKey;
        }
        return vKey;
    }
}
