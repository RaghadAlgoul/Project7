using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (name.Value == "" && email.Value == "" && subject.Value == "" && messagetextarea.Value == "")
            {
                return;
            }

            else
            {
                MailMessage mail = new MailMessage();
                mail.To.Add("adodat91@gmail.com");
                mail.From = new MailAddress($"{email.Value}");
                mail.Subject = subject.Value;

                mail.Body = messagetextarea.Value;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("nsreennedal", "jmvcufnewgrwmaov");
                smtp.Send(mail);


                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);
                //Response.Redirect("contact.aspx");
                name.Value = "";
                email.Value = "";
                subject.Value = "";
                messagetextarea.Value = "";

            }
        }





        protected void message1_Click(object sender, EventArgs e)
        {




            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);

            if (name.Value == "" && email.Value == "" && subject.Value == "" && messagetextarea.Value == "")
            {
                return;
            }

            else
            {
                MailMessage mail = new MailMessage();
                mail.To.Add("nsreennedal@gmail.com");
                mail.From = new MailAddress($"{email.Value}");
                mail.Subject = subject.Value;

                mail.Body = messagetextarea.Value;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("nsreennedal", "jmvcufnewgrwmaov");
                smtp.Send(mail);


                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);
                //Response.Redirect("contact.aspx");
                name.Value = "";
                email.Value = "";
                subject.Value = "";
                messagetextarea.Value = "";

            }




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("www.google.com");
        }
    }
}