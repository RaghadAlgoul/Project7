using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class Patients : System.Web.UI.Page
    {
        project7Entities3 db = new project7Entities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var store = (from m in db.AspNetUsers select new { m.Name, m.Email, m.Age, m.PhoneNumber, m.Photo }).ToList();
                gridPatints.DataSource = store;
                gridPatints.DataBind();
            }
        }
    }
}