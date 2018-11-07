using Infragistics.Web.UI.LayoutControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Infragistics.Web.UI;
using Infragistics.Web.UI.LayoutControls;
using Infragistics.Documents.Reports.Report.Index;

public partial class InfragisticsTabEx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblusername.Text = Request.QueryString["UserName"];
        ContentTabItem Tab = new ContentTabItem();
        Tab.Text = "View Data";
        WTab.Tabs.Add(Tab);
        Tab.ContentUrl = "Default.aspx";
        ContentTabItem Tab1 = new ContentTabItem();
        WTab.Tabs.Add(Tab1);
        Tab1.Text = "Logout";
        Tab1.ContentUrl = "Login.aspx";
        Session.Remove("Tab1");
    }
   
}