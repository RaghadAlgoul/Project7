using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Admin
{
    public partial class Review : System.Web.UI.Page
    {
        project7Entities1 db = new project7Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var store = (from m in db.Comments select new { m.commentID, m.AspNetUser.Name, m.AspNetUser.Email, m.message }).ToList();
                gridReview.DataSource = store;
                gridReview.DataBind();
            }
        }
    }
}