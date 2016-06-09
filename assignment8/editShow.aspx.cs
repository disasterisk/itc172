using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editShow : System.Web.UI.Page
{
    showManagerReference.IaddShowServiceClient data = new showManagerReference.IaddShowServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserKey"]==null)
        {
            Response.Redirect("");
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
        List<string> showList = new List<string>();
        showManagerReference.Show[] shows = data.getShows((int)(Session["UserKey"]));
        foreach(var s in shows)
        {
            showList.Add(s.ShowName);
        }
        showDrop.DataSource = showList;
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
        detailArtistDrop.DataSource = data.getArtists();
        detailArtistDrop.DataBind();
        detailArtistDrop.Items.Insert(0, "Select Artist");
    }

    protected void eDoneButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("start.html");
    }
}