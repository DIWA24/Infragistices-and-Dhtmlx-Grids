using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary1;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Abandon();
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Clear();
    }

    protected void Btn_Register_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add.aspx");
    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/Octet-stream";
        Response.AppendHeader("content-disposition", "attachment,filename=" + fileName);
        string s = Server.MapPath("~/UploadDocuments/" + fileName);
        Response.TransmitFile(s);
        Response.End();
        Class1 objClass = new Class1();
        string str = objClass.Method2(usrname.Value, psw.Value);
        if (str != null)
        {
            Response.Redirect("InfragisticsTabEx.aspx?UserName=" + usrname.Value);
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid User Id or Password')</script>");
        }
    }
}