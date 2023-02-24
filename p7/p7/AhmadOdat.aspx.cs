using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p7
{
    public partial class AhmadOdat : System.Web.UI.Page
    {
        project7Entities3 context = new project7Entities3();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(User.Identity.GetUserId() == null)
            {
                Response.Redirect("Account/Login");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["state"] == "true")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('', 'your appointment has been scheduled', 'success')", true);
                }

                Calendar1.SelectedDate = DateTime.Today;
                container1.InnerHtml = "";
                string text = Calendar1.SelectedDate.ToString();

                string[] time2 = text.Split(' ');
                
                // Label1.Text = time2[0];
                //Response.Redirect($"text1.aspx?id={text}");
                DateTime time3 = Convert.ToDateTime(time2[0]);

                var reservation = from t1 in context.Reservations

                                  where t1.Date == time3
                                  select new { t1.Time };
                var result = reservation.ToList();


                DateTime nowDate = DateTime.Now;
                string hourNow = nowDate.ToString("HH");





                DateTime date = new DateTime();
                for (int i = 8; i < 16; i++)
                {
                    DateTime time = date.AddHours(i);
                    string time4 = time.ToString("HH:mm:ss");
                    string hour = time.ToString("HH");
                    string[] time5 = time4.Split(' ');
                    string withoutSeconds = time.ToString("HH:mm");
                    string[] withoutSeconds2 = withoutSeconds.Split(' ');
                  //  Label1.Text = time5[0];

                    bool there = false;
                    foreach (var s in result)
                    {
                        string time6 = s.Time.ToString();
                        //if (time6[0] == '0')
                        //{
                        //    time6 = time6.Substring(1);
                        //}

                        if (time5[0] == time6)
                        {
                            there = true;
                            //container1.InnerHtml += $"<a href='#'>{time5[1]}</a><br/>";
                        }
                    }
                    if (there == false)
                    {
                        //container1.InnerHtml += $"<a href='addReservation.aspx?id={time5[1]}'>{time5[1]}</a><br/>";
                        //container1.InnerHtml += $"<input class='radioClass' type=\"radio\" id=\"{time5[0]}\" name=\"selectTime\" value=\"{time5[0]}\" AutoPostBack='true'><label for=\"html\" >{time5[0] }</label><br>\r\n";
                        if (Convert.ToInt32(hourNow) < Convert.ToInt32(hour))
                        {

                            container1.InnerHtml += $"<li>\r\n          <input type=\"radio\" id=\"{time5[0]}\" name=\"selectTime\" value=\"{time5[0]}\" />\r\n          <label for=\"a25\">{withoutSeconds2[0]}</label>\r\n        </li>";
                        }
                    }

                }
                var x = context.Services.ToList();

                DropDownList1.DataValueField = "ServiceID";
                DropDownList1.DataTextField = "ServiceName";
                DropDownList1.DataSource = x;

                DropDownList1.DataBind();

            }
           


        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            

            if (Calendar1.SelectedDate < DateTime.Now)
            {
                Response.Redirect("AhmadOdat.aspx");
            }
            container1.InnerHtml = "";
            string text = Calendar1.SelectedDate.ToString();

            string[] time2 = text.Split(' ');
         //   Label1.Text = time2[0];
            //Response.Redirect($"text1.aspx?id={text}");
            DateTime time3 = Convert.ToDateTime(time2[0]);

            var reservation = from t1 in context.Reservations

                              where t1.Date == time3
                              select new { t1.Time };
            var result = reservation.ToList();


            DateTime date = new DateTime();
            for (int i = 8; i < 16; i++)
            {
                DateTime time = date.AddHours(i);
                string time4 = time.ToString("HH:mm:ss");
                string[] time5 = time4.Split(' ');
                string withoutSeconds = time.ToString("HH:mm");
                string[] withoutSeconds2 = withoutSeconds.Split(' ');
                //  Label1.Text = time5[0];

                bool there = false;
                foreach (var s in result)
                {
                    string time6 = s.Time.ToString();
                    //if (time6[0] == '0')
                    //{
                    //    time6 = time6.Substring(1);
                    //}

                    if (time5[0] == time6)
                    {
                        there = true;
                        //container1.InnerHtml += $"<a href='#'>{time5[1]}</a><br/>";
                    }
                }
                if (there == false)
                {
                    //container1.InnerHtml += $"<a href='addReservation.aspx?id={time5[1]}'>{time5[1]}</a><br/>";
                    //container1.InnerHtml += $"<input class='radioClass' type=\"radio\" id=\"{time5[0]}\" name=\"selectTime\" value=\"{time5[0]}\" AutoPostBack='true'><label for=\"html\" >{time5[0] }</label><br>\r\n";
                    container1.InnerHtml += $"<li>\r\n          <input type=\"radio\" id=\"{time5[0]}\" name=\"selectTime\" value=\"{time5[0]}\" />\r\n          <label for=\"a25\">{withoutSeconds2[0]}</label>\r\n        </li>";

                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.Form["selectTime"] == null)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('', 'please pick time for your Appointment', 'info')", true);
                return;
            }

            //Label2.Text = time3.ToString("yyyy/MM/dd");
            DateTime newDate = Calendar1.SelectedDate;
            var newReservation = new Reservation();
            DateTime newTime = Convert.ToDateTime(Request.Form["selectTime"]);
            TimeSpan newTime2 = newTime.TimeOfDay;

            newReservation.User_ID = User.Identity.GetUserId().ToString();
            newReservation.Service_ID = Convert.ToInt32(DropDownList1.SelectedValue);
            newReservation.Date = newDate;
            newReservation.Time = newTime2;

            context.Reservations.Add(newReservation);
            context.SaveChanges();

            Response.Redirect("AhmadOdat.aspx?state=true");


        }
    }
}