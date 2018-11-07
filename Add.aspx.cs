using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Register_Click(object sender, EventArgs e)
    {

            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadDocuments/" + FileUpload1.FileName));
      
        Class1 objClass1 = new Class1();
        if (objClass1.Method1(usrname.Value, email.Value, psw.Value, country.Text, gender.Text, role.Value, phone.Value, FileUpload1.FileName)) ;
        {

            //Server.Transfer("Dhtml2.aspx");
            Server.Transfer("Default.aspx");
        }
    }

    protected void btn_Login_Click(object sender, EventArgs e)
    {
        Server.Transfer("Login.aspx");
    }
  

}