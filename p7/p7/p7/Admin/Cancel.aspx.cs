using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class Cancel : System.Web.UI.Page
    {
        project7Entities1 db = new project7Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var store = db.Reservations.Find(id);
            db.Reservations.Remove(store);
            db.SaveChanges();
            Response.Redirect("Reservations.aspx");
        }
    }
}