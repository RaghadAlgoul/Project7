using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using p7.Models;

namespace p7.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            project7Entities1 context = new project7Entities1();

            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");


                var userUpdate = context.AspNetUsers.Find(user.Id);
                userUpdate.Name = Name.Text;
                userUpdate.Age = Convert.ToDateTime(Age.Text);
                userUpdate.PhoneNumber = Phone.Text;
                
                int gender = Convert.ToInt32(Request.Form["gender"]);
                userUpdate.Gender = Convert.ToBoolean(gender);
                context.SaveChanges();


                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                manager.AddToRole(user.Id, "User");
                IdentityHelper.RedirectToReturnUrl("~/Account/Login.aspx", Response);
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}