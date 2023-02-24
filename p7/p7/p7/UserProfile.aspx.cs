using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7
{
    public partial class UserProfile : System.Web.UI.Page
    {
        project7Entities1 db = new project7Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                Session["id"] = User.Identity.GetUserId();
                var record = db.AspNetUsers.Find(Session["id"]);

                var ss = db.AspNetUsers.Find(Session["id"]);
                name1.InnerHtml = ss.Name;
                nameLabel.InnerHtml = ss.Name;
                emailLabel.InnerHtml = ss.Email;
                // ageLabel.InnerHtml += ss.Age;
                phoneLabel.InnerHtml += ss.PhoneNumber;

                if (ss.Gender == false)
                {
                    if (ss.Photo == "" || ss.Photo == null) { userImg.ImageUrl = "images\\boy.jfif"; commentImg.ImageUrl = "images\\boy.png"; }
                    else { userImg.ImageUrl = ss.Photo; commentImg.ImageUrl = ss.Photo; }

                }
                if (ss.Gender == true)

                    if (ss.Photo == "" || ss.Photo == null) { userImg.ImageUrl = "images\\girl.jfif"; commentImg.ImageUrl = "images\\girl.png"; }
                    else { userImg.ImageUrl = ss.Photo; commentImg.ImageUrl = ss.Photo; }

            }
            string idUser = User.Identity.GetUserId();
            var res = from m in db.Reservations where m.User_ID == idUser select new { m.AspNetUser.Name, m.Date, m.Time, m.ReservationID };
            var res2 = res.ToList();
            GridView2.DataSource = res2;
            GridView2.DataBind();
        }
    
        protected void Button1_Click(object sender, EventArgs e)
        {

            var ss = db.AspNetUsers.Find(Session["id"]);
            string x = FileUpload1.FileName;
            name1.InnerHtml = x;
        }




        protected void EditBtn_Click1(object sender, EventArgs e)
        {

            PlaceHolder1.Visible = false;
            PlaceHolder3.Visible = false;
            PlaceHolder5.Visible = false;
            PlaceHolder2.Visible = true;
            PlaceHolder4.Visible = true;
            PlaceHolder6.Visible = true;
            //PlaceHolder7.Visible = false;
            //PlaceHolder8.Visible = true;
            EditBtn.Visible = false;
            update.Visible = true;
            FileUpload1.Visible = true;
            var ss = db.AspNetUsers.Find(Session["id"]);
            txtName.Text = ss.Name;
            txtEmail.Text = ss.Email;
            txtPhone.Text = ss.PhoneNumber;
           // txtAge.Text = ss.Age.ToString();


        }

        protected void update_Click(object sender, EventArgs e)
        {
            var ss = db.AspNetUsers.Find(Session["id"]);

            
            
            if(FileUpload1.FileName!= null || FileUpload1.FileName != "")
            {
                string folderPath = Server.MapPath("~/images/");
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                ss.Photo= "/images//"+FileUpload1.FileName;
            }
            ss.Name = txtName.Text;
            ss.Email = txtEmail.Text;
            ss.PhoneNumber = txtPhone.Text;
            //ss.Age = Convert.ToInt32(txtAge.Text);
            db.SaveChanges();
            Response.Redirect("UserProfile.aspx");

        }

        protected void datesBtn_Click(object sender, EventArgs e)
        {
            datesPlace.Visible = true;
            changePassPlace.Visible = false;
            commentPlace.Visible = false;
            //infoPlac.Visible = false;


        }

        protected void passwordBtn_Click(object sender, EventArgs e)
        {

            changePassPlace.Visible = true;
            datesPlace.Visible = false;
            commentPlace.Visible = false;
            //infoPlac.Visible = false;


        }

        protected void savePassBtn_Click(object sender, EventArgs e)
        {
            string code = IdentityHelper.GetCodeFromRequest(Request);
            if (code != null)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

                var user = manager.FindByName(txtEmail.Text);

                var result = manager.ResetPassword(user.Id, code, txtNew.Text);
                if (result.Succeeded)
                {
                    Response.Write("finally");

                }
                return;
            }

        }
        //var ss = db.AspNetUsers.Find(Session["id"]);
        //    if (ss.Email == txtCurrent.Text) { ss.PasswordHash = txtNew.Text; db.SaveChanges(); }
        //    else { Response.Write("oooooooooooooooffffffffffffffff");





        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            commentPlace.Visible = true;
            datesPlace.Visible = false;
            changePassPlace.Visible = false;
            //infoPlac.Visible = false;

        }

        protected void PostBtn_Click(object sender, EventArgs e)
        {

            project7Entities1 x = new project7Entities1();
            var newComment = new Comment();
            newComment.userID = Session["id"].ToString();
            newComment.message = txtComment.Value;
            x.Comments.Add(newComment);
            x.SaveChanges();
            Response.Redirect("UserProfile.aspx");
        }

        protected void info_Click(object sender, EventArgs e)
        {
            //infoPlac.Visible= true;
            commentPlace.Visible = false;
            datesPlace.Visible = false;
            changePassPlace.Visible = false;
        }
    }
}