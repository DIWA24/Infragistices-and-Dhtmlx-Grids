using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using ClassLibrary1;



public partial class Registered_Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        WebDataGrid1.DataSource = this.GetDataSource();
    }
    private DataSet GetDataSource()
    {
        DataSet dst = new DataSet();
        dst = Class1.Method3();
        return dst;
    }
}