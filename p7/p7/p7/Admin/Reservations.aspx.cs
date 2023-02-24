using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class Reservations : System.Web.UI.Page
    {
        project7Entities1 db = new project7Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var store = (from m in db.Reservations select new { m.ReservationID, m.AspNetUser.Name, m.Service.ServiceName, m.Date, m.Time }).ToList();
            gridReservation.DataSource = store;
            gridReservation.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var all = (from m in db.Reservations where m.Service.ServiceName.Contains(TextBox1.Text) || m.AspNetUser.Name.Contains(TextBox1.Text) select new { m.ReservationID, m.AspNetUser.Name, m.Service.ServiceName, m.Date, m.Time }).ToList();
            gridReservation.DataSource = all.ToList();
            gridReservation.DataBind();
        }
    }
}