using System;
using ClassLibrary1;
using System.Collections;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Infragistics.Web.UI.GridControls;
using System.IO;
using Infragistics.Web.UI.Framework.Persistence;

public partial class Default2 : System.Web.UI.Page
{
    private string _userIPAdress;

    //protected override void OnPreRender(EventArgs e)
    //{
    //    base.OnPreRender(e);
    //    //if (!IsPostBack)
    //    {
    //        WebDataGrid1.ClearDataSource();
    //        WebDataGrid1.DataSource = this.GetDataSource();
    //        WebDataGrid1.DataBind();
    //   }
    //}

    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Page.IsPostBack && hiddenDelete.Value != "")
        {
            DeleteData();
            WebDataGrid1.DataSource = this.GetDataSource();                 
        }

        if (!this.Page.IsPostBack)
        {
            WebDataGrid1.DataSource = this.GetDataSource();
        }
        Session.Abandon();
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Clear();
    }
    //private DataSet GetDataSource()
    //{
    //    DataSet dst = new DataSet();
    //    if (this.Session["GRIDDATA"] == null)
    //    {
    //        Class1 obj = new Class1();
    //        dst = obj.GetData();
    //        this.Session.Add("GRIDDATA", dst);
    //    }
    //    else
    //    {
    //        dst = (DataSet)this.Session["GRIDDATA"];
    //    }

    //    return dst;
    //}
    private DataSet GetDataSource()
    {
        DataSet dst = new DataSet();
        dst = Class1.GetData();
        return dst;
    }
    protected void DeleteData()
    {
        Class1.DeleteData(hiddenDelete.Value);
       
    }

    protected void Btn_Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}

