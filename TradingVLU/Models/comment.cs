//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TradingVLU.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class comment
    {
        public int id { get; set; }
        public int id_item { get; set; }
        public int id_user { get; set; }
        public string comment_txt { get; set; }
        public string name_comment { get; set; }
        public string created_by { get; set; }
        public Nullable<System.DateTime> created_date { get; set; }
        public string updated_by { get; set; }
        public Nullable<System.DateTime> updated_date { get; set; }
    
        public virtual item item { get; set; }
        public virtual user user { get; set; }
    }
}