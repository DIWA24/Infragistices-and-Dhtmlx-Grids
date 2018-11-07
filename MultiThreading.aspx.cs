using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class MultiThreading : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitbtn_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("reddydiwa.p@gmail.com", "chinnama");
            MailMessage mm = new MailMessage();
            mm.To.Add(to.Text);
            mm.From = new MailAddress("reddydiwa.t@gmail.com");
            mm.Subject = subject.Text;
            mm.Body = body.Text;
            client.Send(mm);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('message has been Sent!!!!');");
            Response.Write("");
        }
        catch(Exception ex)
        {
            Response.Write("Couldn't Send email" + ex.Message);
        }
    }
}