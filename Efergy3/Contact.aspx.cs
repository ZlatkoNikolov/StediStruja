using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Efergy3
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {





        }
        protected void SendMail()
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(YourEmail.Text);
            mail.To.Add("zlatkonikolov_vinica@yahoo.com");
            mail.Subject = YourSubject.Text;
            mail.Body = "First Name: " + YourName.Text + "\n";
            mail.Body += "Email: " + YourEmail.Text + "\n";
            mail.Body += "Comments: " + Comments.Text + "\n";
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "your_relay_mail_server";
            smtp.Send(mail);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //here on button click what will done 
                SendMail();
                DisplayMessage.Text = "Вашиот мејл е испратен";
                DisplayMessage.Visible = true;
                Reset();
            }
            catch (Exception) { }
        }

        protected void Reset()
        {
            YourSubject.Text = "";
            YourEmail.Text = "";
            YourName.Text = "";
            Comments.Text = "";
        }
    }
}