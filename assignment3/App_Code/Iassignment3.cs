using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "Iassignment3" in both code and config file together.
[ServiceContract]
public interface Iassignment3
{
    [OperationContract]
    List<string> getVenues();

    [OperationContract]
    List<string> getArtist();

    [OperationContract]
    List<string> getShows();

    [OperationContract]
    List<show> byVenue(string vName);

    [OperationContract]
    List<show> byArtist(string aName);
}
[DataContract]
public class show
{
    [DataMember]
    public string name { set; get; }
    
    [DataMember]
    public string date { set; get; }

    [DataMember]
    public string start { set; get; }

    [DataMember]
    public string venue { set; get; }
}