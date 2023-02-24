using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7.Account
{
    public partial class statistics : System.Web.UI.Page
    {
        project7Entities1 db = new project7Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var pNum = (from m in db.AspNetUsers select m).Count();

            c1.InnerText = pNum.ToString();

            var rNum = (from m in db.Reservations select m).Count();

            c2.InnerText = rNum.ToString();
        }
    }
}