using System;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary1;
using System.Data;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (hiddenDelete.Value != "")
        {
                DeleteData(); 
        }
          else if ( hiddenName.Value != "" && hiddenEmail.Value != "" && hiddenPasswrd.Value != "" && hiddenCountry.Value != "" && hiddenGender.Value != "" && hiddenRole.Value != "" && hiddenPhone.Value!= "" && hiddenFile.Value != "")
        { 
                UpdateData();
            WebDataGrid1.DataSource = this.GetDataSource();

        }
        else if (hiddenFile.Value != "")
        {
            Download();
        }
        else if (this.Page.IsPostBack)
        {
            WebDataGrid1.DataSource = this.GetDataSource();
        }
        WebDataGrid1.DataSource = this.GetDataSource();

        if (!this.Page.IsPostBack)
        {
            WebDataGrid1.DataSource = this.GetDataSource();
        }
    }
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
    protected void UpdateData()
    {
        Class1.UpdateData(hiddenName.Value, hiddenEmail.Value, hiddenPasswrd.Value, hiddenCountry.Value, hiddenGender.Value, hiddenRole.Value,hiddenPhone.Value,hiddenFile.Value);

    }

    protected void AddData_Click(object sender, EventArgs e)
    {
        
        Class1 obj = new Class1();
        obj.Method1(usrname.Text, email.Text, psw.Text, country.Text, gender.Text, role.Text,phone.Text, FileUpload1.FileName);
        WebDataGrid1.DataSource=GetDataSource();
    }
    protected void file_Download_Click(object sender, EventArgs e)
    {
       
    }
    protected void Download()
    {
        string fileName = hiddenFile.Value;
        Response.ContentType = "application/Octet-stream";
        Response.AppendHeader("content-disposition", "attachment;filename=" + fileName);
        Response.TransmitFile(Server.MapPath("~/UploadDocuments/" + fileName));
        Response.End();
    }
}
