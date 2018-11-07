using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OleDb;
using System.Xml;
using System.Text;
using ClassLibrary1;
using Infragistics.Documents.Excel;


public partial class ExcelConv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        var fileName = string.Format("{0}\\fileNameHere", Directory.GetCurrentDirectory());
        var connectionString = string.Format("Provider=Microsoft.Jet.OracleDB; data source={0}; Extended Properties=Excel 8.0;", fileName);
        string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
        string path = Server.MapPath("~/UploadDocumnets/" + FileUpload1.FileName);
        FileUpload1.SaveAs(path);
        Label1.Text = FileUpload1.FileName + "\'s Data showing into the GridView";
    }
          private DataSet GetDataSource()
    {
        DataSet dst = new DataSet();
        Class1 obj = new Class1();
        dst = Class1.GetData1();
        return dst;
    }
}


