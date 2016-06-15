using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editShow : System.Web.UI.Page
{
    showManagerReference.IaddShowServiceClient data = new showManagerReference.IaddShowServiceClient();
    assignment3Ref.Iassignment3Client d2 = new assignment3Ref.Iassignment3Client();
    showDataService sdata = new showDataService();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserKey"]==null)
        {
            Response.Redirect("venueLogin.aspx");
        }
        if(!IsPostBack)
        {
            makeShowDrop();
            makeArtistDrop();
        }
        showDrop.Items[0].Attributes.Add("disabled", "true");
        detailArtistDrop.Items[0].Attributes.Add("disabled", "true");
    }
    
    protected void makeShowDrop()
    {
        string venue = d2.getVenue((int)(Session["UserKey"]));
        List<assignment3Ref.show> shows = d2.byVenue(venue).ToList();
        List<string> showList = new List<string>();
        foreach(var s in shows)
        {
            showList.Add(s.name);
        }
        showDrop.DataSource = showList;
        showDrop.DataBind();
        showDrop.Items.Insert(0, "Select Show");
        showDrop.SelectedIndex = 0;
    }
    protected void addDetailButton_Click(object sender, EventArgs e)
    {
        data.addDetail(showDrop.SelectedItem.Text, detailArtistDrop.SelectedItem.Text, TimeSpan.Parse(artistStartText.Text), moreDetailText.Text);
    }

    protected void makeArtistDrop()
    {
        detailArtistDrop.DataSource = d2.getArtist();
        detailArtistDrop.DataBind();
        detailArtistDrop.Items.Insert(0, "Select Artist");
        detailArtistDrop.SelectedIndex = 0;
    }

    protected void eDoneButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("start.html");
    }

    protected void showDrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        showData.DataSource = sdata.getDetail(showDrop.SelectedItem.Text, (int)(Session["Userkey"]));
    }
}