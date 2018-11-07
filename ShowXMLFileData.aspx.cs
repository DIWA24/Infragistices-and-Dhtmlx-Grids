using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml;
using ClassLibrary1;

public partial class ShowXMLFileData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ShowXMLFileData();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("UserData.xml"));
        XmlElement ParentElement = xmldoc.CreateElement("Users");

        XmlElement name = xmldoc.CreateElement("UserName");
        name.InnerText = usrname.Text;
        XmlElement email1 = xmldoc.CreateElement("Email");
        email1.InnerText = email.Text;
        XmlElement passowrd = xmldoc.CreateElement("Passowrd");
        passowrd.InnerText = psw.Text;
        XmlElement country1 = xmldoc.CreateElement("Country");
        country1.InnerText = country.Text;
        XmlElement Gender = xmldoc.CreateElement("Gender");
        Gender.InnerText = gender.Text;

        ParentElement.AppendChild(name);
        ParentElement.AppendChild(email1);
        ParentElement.AppendChild(passowrd);
        ParentElement.AppendChild(country1);
        ParentElement.AppendChild(Gender);
        xmldoc.DocumentElement.AppendChild(ParentElement);

        xmldoc.Save(Server.MapPath("UserData.xml"));
        ShowXMLFileData1();
        usrname.Text = string.Empty;
        email.Text= string.Empty;
        psw.Text = string.Empty;
        country.Text = string.Empty;
        gender.Text = string.Empty;

    }
    private void ShowXMLFileData1()
    {
        using (DataSet ds = new DataSet())
        {
            ds.Readxml(Server.MapPath("~//UserData.xml"));
            if(ds.Tables.Count>0)
            {
                gv1.DataSource = ds.Tables[0];
                gv1.DataBind();
            }
        }
    }

}