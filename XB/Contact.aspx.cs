using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XB
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage msg = new MailMessage();
                
                msg.To.Add("taufik_hidayanto@ymail.com");
                MailAddress address = new MailAddress("ethentias@live.com", "CyberClass");
                msg.From = address;
                msg.Subject = txtName.Text + " (" + txtEmail.Text.ToLower() + ") : " + ddlSubject.Text + " | From CyberClass";
                msg.Body = txtMessage.Text;
                

                SmtpClient client = new SmtpClient("smtp.live.com", 25);
                client.EnableSsl = true;
                NetworkCredential credential = new NetworkCredential("ethentias@live.com", "live.com");
                client.Credentials = credential;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                
                client.Send(msg);

                lblResult.Text = "Your message was sent.";

                txtName.Text = "";
                txtMessage.Text = "";
                txtEmail.Text = "";
            }
            catch (Exception ex)
            {
                //lblResult.Text = "Sending message failed, please try again.";
                lblResult.Text = "Failed : " + ex.Message;
            }
        }
    }
}