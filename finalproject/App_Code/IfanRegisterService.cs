using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IfanRegisterService" in both code and config file together.
[ServiceContract]
public interface IfanRegisterService
{
    [OperationContract]
    bool registerFan(string fName, string fEmail, string fUsername, string password);

    [OperationContract]
    int fanLogin(string fUName, string password);
}
