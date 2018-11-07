using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Save_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadDocuments/" + FileUpload1.FileName));
        }
        DataTable dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("Type", typeof(string));
        foreach (string strFile in Directory.GetFiles(Server.MapPath("~/UploadDocuments/")))
        {
            FileInfo f = new FileInfo(strFile);
            dt.Rows.Add(f.Name, f.Extension);
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


    protected void btn_Download_Click(object sender, EventArgs e)
    {
        
        String filename = TextBox1.Text;
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.ContentType = "application/octect-stream";
        Response.AppendHeader("content-disposition", "attachment;filename=" + filename);
        Response.TransmitFile(Server.MapPath("~/UploadDocuments/") + filename);
        Response.End();


    }
}
