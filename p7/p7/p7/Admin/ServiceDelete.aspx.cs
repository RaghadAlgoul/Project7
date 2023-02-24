using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class ServiceDelete : System.Web.UI.Page
    {
        project7Entities1 db = new project7Entities1();
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
                txtComment.Text = store.ServiceDescription;
                userImg.ImageUrl = store.ServiceImage;
                //}
                //else { Response.Redirect("Services.aspx"); }
            }
        }
        protected void del_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["id"]);
            var store = db.Services.Find(id);
            db.Services.Remove(store);
            db.SaveChanges();
            Response.Redirect("Services.aspx");

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }
    }
}