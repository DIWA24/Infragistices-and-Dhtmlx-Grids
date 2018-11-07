using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BatchUpdating : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // WebDataGrid1.ClearDataSource();
        WebDataGrid1.DataSource = this.GetDataSource();
        WebDataGrid1.DataBind();
    }
    private DataSet GetDataSource()
    {
        DataSet dst = new DataSet();
        if (this.Session["GRIDDATA"] == null)
        {
            Class1 obj = new Class1();

            dst = obj.GetData();
            //dst = obj.UpdateData(usrname.Value, email.Value, psw.Value, country.Text, gender.Text);
            this.Session.Add("GRIDDATA", dst);
        }
        else
        {
            dst = (DataSet)this.Session["GRIDDATA"];
        }

        return dst;
    }
}
