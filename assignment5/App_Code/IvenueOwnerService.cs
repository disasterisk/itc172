using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IvenueOwnerService" in both code and config file together.
[ServiceContract]
public interface IvenueOwnerService
{
    [OperationContract]
    bool registerVenue(string venueName, string venueAddress, string venueCity, string venueState, string venueZip, string venuePhone, string venueEmail, string venueWebPage, int ageRestriction, string venueLogin, string venuePassword);

    [OperationContract]
    int venueLogin(string venueLogin, string venuePassword);
}
