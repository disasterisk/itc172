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
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserKey"]==null)
        {
            Response.Redirect("../assignment6/Default.aspx");
        }
        if(!IsPostBack)
        {
            makeShowDrop();
        }
        showDrop.Items[0].Attributes.Add("disabled", "true");
        detailArtistDrop.Items[0].Attributes.Add("disabled", "true");
    }
    
    protected void makeShowDrop()
    {
        string venue = d2.getVenue((int)(Session["UserKey"]));
        List<showManagerReference.Show> shows = new List<showManagerReference.Show>(d2.byVenue(venue));
        List<string> showList = new List<string>();
        foreach(var s in shows)
        {
            showList.Add()
        }
        showDrop.DataBind();
        showDrop.Items.Insert(0, "Select Show");
    }
    protected void addDetailButton_Click(object sender, EventArgs e)
    {
        data.addDetail(showDrop.SelectedItem.Text, detailArtistDrop.SelectedItem.Text, TimeSpan.Parse(artistStartText.Text), moreDetailText.Text);
    }

    protected void showDrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        showData.DataSource = showDrop.SelectedItem;
        detailArtistDrop.DataSource = d2.getArtist();
        detailArtistDrop.DataBind();
        detailArtistDrop.Items.Insert(0, "Select Artist");
    }

    protected void eDoneButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("start.html");
    }
}