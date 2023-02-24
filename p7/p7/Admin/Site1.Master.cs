using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            e1.Style.Add("color", "yellow");
            e2.Style.Add("color", "yellow");

            Response.Redirect("/Admin/Patients.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton1.Style.Add("color", "white");
            LinkButton2.Style.Add("color", "yellow");
            Response.Redirect("/Admin/Services.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Reservations.aspx");
        }


        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Review.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/statistics.aspx");
        }
    }
}