//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace p7
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reservation
    {
        public int ReservationID { get; set; }
        public string User_ID { get; set; }
        public int Service_ID { get; set; }
        public System.DateTime Date { get; set; }
        public System.TimeSpan Time { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Service Service { get; set; }
    }
}
