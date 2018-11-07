using Infragistics.Web.UI.LayoutControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DynamicTabs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblusername.Text = Request.QueryString["UserName"];
        ContentTabItem Tab = new ContentTabItem();
        Tab.Text = "View Data";
        WebTab1.Tabs.Add(Tab);


    }
    protected void SoutButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}