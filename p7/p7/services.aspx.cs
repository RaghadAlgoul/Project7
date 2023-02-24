using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        project7Entities3 context = new project7Entities3 ();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            
            var serveces = context.Services.ToList();
            foreach(var entity in serveces)
            {
                if( entity.ServiceID == 1)
                {
                    navAsid.InnerHtml += $"<li class=\"nav-item\">\r\n                <a class=\"nav-link active show\" data-bs-toggle=\"tab\" href=\"#tab-{entity.ServiceID}\">{entity.ServiceName}</a>\r\n              </li>";
                    content.InnerHtml += $"<div class=\"tab-pane active show\" id=\"tab-{entity.ServiceID}\">\r\n                <div class=\"row gy-4\">\r\n                  <div class=\"col-lg-8 details order-2 order-lg-1\">\r\n                    <h3>{entity.ServiceName}</h3>\r\n                    <p style=\"font-size:15px;\">{entity.ServiceDescription}</p>\r\n                  </div>\r\n                  <div class=\"col-lg-4 text-center order-1 order-lg-2\">\r\n                    <img src=\"{entity.ServiceImage}\" alt=\"\" class=\"img-fluid\">\r\n                  </div>\r\n                </div>\r\n              </div>";
                
                }
                else
                {
                    navAsid.InnerHtml += $"<li class=\"nav-item\">\r\n                <a class=\"nav-link \" data-bs-toggle=\"tab\" href=\"#tab-{entity.ServiceID}\">{entity.ServiceName}</a>\r\n              </li>";
                    content.InnerHtml += $"<div class=\"tab-pane\" id=\"tab-{entity.ServiceID}\">\r\n                <div class=\"row gy-4\">\r\n                  <div class=\"col-lg-8 details order-2 order-lg-1\">\r\n                    <h3>{entity.ServiceName}</h3>\r\n                    <p style=\"font-size:15px;\">{entity.ServiceDescription}</p>\r\n                  </div>\r\n                  <div class=\"col-lg-4 text-center order-1 order-lg-2\">\r\n                    <img src=\"{entity.ServiceImage}\" alt=\"\" class=\"img-fluid\">\r\n                  </div>\r\n                </div>\r\n              </div>";
                }
 
            }
            }

        }
    }
}