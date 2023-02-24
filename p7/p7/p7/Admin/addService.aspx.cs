using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class addService : System.Web.UI.Page
    {
        project7Entities1 db = new project7Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(Request.QueryString["id"]);
            //var store = db.Services.Find(id);
            
            //userImg.ImageUrl = "//images/";
        }

        protected void update_Click(object sender, EventArgs e)
        {
            if (FileUpload1.FileName != null || FileUpload1.FileName != "")
            {
                string folderPath = Server.MapPath("~/images/");
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                Session["image"] = "/images//" + FileUpload1.FileName;
            }
            var newService = new Service
            {
                ServiceName = txtName.Text,
                ServiceDescription = txtComment.Value,

                ServiceImage = Session["image"].ToString(),
            };
            db.Services.Add(newService);
            db.SaveChanges();
            Response.Redirect("Services.aspx");
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }
    }
}