using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class Services : System.Web.UI.Page
    {
        project7Entities3 db = new project7Entities3();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var store = (from m in db.Services select m).ToList();
                gridService.DataSource = store;
                gridService.DataBind();
            }

        }

        protected void addService_Click(object sender, EventArgs e)
        {
            Response.Redirect("addService.aspx");
        }
    }
}