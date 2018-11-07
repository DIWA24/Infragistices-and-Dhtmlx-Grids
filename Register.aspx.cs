using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary1;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }
     protected void ImageButton1_Click(object Sender,ImageClickEventArgs e)
    {
        if(Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        dob.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Class1 objClass1 = new Class1();
        objClass1.Method1(txt_name.Text, usrname.Text, dob.Text, txt_email.Text, pass1.Value, gender.Text, country.Text,phone.Value);
    }
}