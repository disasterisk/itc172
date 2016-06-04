using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IaddShowService" in both code and config file together.
[ServiceContract]
public interface IaddShowService
{
    [OperationContract]
    bool addShow(string showName, DateTime showDate, TimeSpan showTime, string showTickets, int venueKey);

    [OperationContract]
    bool addArtist(string artistName, string artistWeb, string artistEmail);

    [OperationContract]
    bool addDetail(string showName, string artistName, TimeSpan artistStart, string moreDetail);
}
