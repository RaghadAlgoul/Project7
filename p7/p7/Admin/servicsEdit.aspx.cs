using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class servicsEdit : System.Web.UI.Page
    {
        project7Entities3 db = new project7Entities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //var service = db.Services.ToList();
                //if (Request.QueryString["id"] == null)
                //{
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var store = db.Services.Find(id);
                txtName.Text = store.ServiceName;
                txtComment.Value = store.ServiceDescription;
                userImg.ImageUrl = store.ServiceImage;
                //}
                //else { Response.Redirect("Services.aspx"); }



            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var store = db.Services.Find(id);
            if (FileUpload1.HasFile)
            {
                string folderPath = Server.MapPath("~/images/");
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }


                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                store.ServiceImage = "/images//" + FileUpload1.FileName;
            }
            
            store.ServiceName = txtName.Text;
            store.ServiceDescription = txtComment.Value;
            //if (FileUpload1.FileName != null) { store.ServiceImage = "/images\\" + FileUpload1.FileName; }

            db.SaveChanges();
            Response.Redirect("Services.aspx");

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }
    }
}