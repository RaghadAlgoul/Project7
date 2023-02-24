using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7
{
    public partial class _Default : Page
    {
        project7Entities3 db = new project7Entities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Today;
            var v = (from pd in db.Comments
                     join od in db.AspNetUsers on pd.userID equals od.Id
                     select new
                     {
                         od.Name,
                         od.Photo,
                         od.Age,
                         pd.message,

                     }).ToList();

            //var v = from ad in db.Comments select new { ad., ad.describtion,ad.image };
            commentcard.InnerHtml = "";

            foreach (var aaa in v.ToList())
            {
                commentcard.InnerHtml += $"                        <div class=\"swiper-slide\">\r\n                            <div class=\"testimonial-wrap\">\r\n                                <div class=\"testimonial-item\">\r\n                                    <img src=\"{aaa.Photo}\" class=\"testimonial-img\" alt=\"\">\r\n                                    <h3>{aaa.Name}</h3>\r\n                                                <p>\r\n                                        <i class=\"bx bxs-quote-alt-left quote-icon-left\"></i>\r\n            {aaa.message}   <i class=\"bx bxs-quote-alt-right quote-icon-right\"></i>\r\n                                    </p>\r\n                                </div>\r\n                            </div>\r\n                        </div>";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Response.Redirect("AhmadOdat.aspx");
        }
        }
}