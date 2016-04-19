using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DataClass dc = new DataClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { LoadDropDownList(); }
        //keeps people from reselecting index 0, which has no key
        dropdown.Items[0].Attributes.Add("disabled", "true");
    }
    protected void LoadDropDownList()
    {
        DataTable tbl = dc.getAuthor();
        dropdown.DataSource = tbl;
        dropdown.DataTextField = "authorname";
        dropdown.DataValueField = "authorkey";
        dropdown.DataBind();
        dropdown.Items.Insert(0, "Select author");
    }

    protected void dropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillGrid();
    }

    protected void fillGrid()
    {
        
        int key = int.Parse(dropdown.SelectedValue.ToString());
        DataTable tbl = dc.getBooks(key);
        grid.DataSource = tbl;
        grid.DataBind();
    }
}