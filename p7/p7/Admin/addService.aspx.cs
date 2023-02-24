using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class addService : System.Web.UI.Page
    {
        project7Entities3 db = new project7Entities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void update_Click(object sender, EventArgs e)
        {
            
            if (txtName.Text ==string.Empty || txtComment.Value == string.Empty || !FileUpload1.HasFile)
            { Label1.Text = "please fill all input"; }
            else 
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

                    ServiceImage = "/images//" + FileUpload1.FileName,
                };
                db.Services.Add(newService);
                db.SaveChanges();
                Response.Redirect("Services.aspx");
            }
            
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }
    }
}