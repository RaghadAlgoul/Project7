using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7
{
    public partial class deleteReservation : System.Web.UI.Page
    {
        project7Entities1 db = new project7Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var store = db.Reservations.Find(id);
                db.Reservations.Remove(store);
                db.SaveChanges();
                Response.Redirect("UserProfile.aspx");
            }
            catch (SqlException x) { Response.Write(x.Message); }
        }
    }
}