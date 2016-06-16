using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "fanRegisterService" in code, svc and config file together.
public class fanRegisterService : IfanRegisterService
{
    fEntities data = new fEntities();
    public int fanLogin(string fUName, string password)
    {
        int fKey = 0;
        int pass = data.usp_FanLogin(fUName, password);
        if (pass!=-1)
        {
           fKey = (from l in data.FanLogins where l.FanLoginUserName.Equals(fUName) select  l.FanKey ).First() ?? 0;

        }
        return fKey;
    }

    public bool registerFan(string fName, string fEmail, string fUsername, string password)
    {
        bool result = false;
        int pass = data.usp_RegisterFan(fName, fEmail, fUsername, password);
        data.SaveChanges();
        if (pass!=-1)
        {
            result = true;
        }
        return result;
    }
}
