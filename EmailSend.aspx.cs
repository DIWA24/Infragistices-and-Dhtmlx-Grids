using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class EmailSend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitbtn_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mailMsg = new MailMessage();
            mailMsg.From = new MailAddress("reddydiwa.p@gmail.com");
            mailMsg.Subject = "Test Subject";
            mailMsg.Body = "Six Pack";
            mailMsg.IsBodyHtml = true;
            mailMsg.To.Add(new MailAddress("reddydiwa.p@gmail.com"));

            SmtpClient smptp = new SmtpClient();
            smptp.Host = "smtp.gmail.com";
            smptp.EnableSsl = true;
            NetworkCredential networkCred = new NetworkCredential();
            networkCred.UserName = "reddydiwa.p@gmail.com";
            networkCred.Password = "chinnama";
            smptp.UseDefaultCredentials = true;
            smptp.Port = 587;
            smptp.Send(mailMsg);
            Response.Write("message has been Sent!!!!");

            
        }
        catch (Exception ex)
        {
            Response.Write("Couldn't Send email" + ex.Message);
        }
    }
}