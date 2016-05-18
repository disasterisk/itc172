using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registerButton_Click(object sender, EventArgs e)
    {
        registerVenue();
    }

    protected void registerVenue()
    {
        venueLoginReference.IvenueOwnerServiceClient a = new venueLoginReference.IvenueOwnerServiceClient();
        if (ageRestrictionText.Text == "")
        { ageRestrictionText.Text = "0"; }
        bool result = a.registerVenue(vNameText.Text, vAddressText.Text, vCityText.Text, stateDropDown.SelectedValue, vZipText.Text,vPhoneText.Text,vEmailText.Text,vWebText.Text,int.Parse(ageRestrictionText.Text),vLoginNameText.Text,vPasswordText.Text);

        if (result)
        { Response.Redirect("Default.aspx"); }
        else
        { registerError.Text = "Error"; }
    }
}