//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MusicDolphin
{
    using System;
    using System.Collections.Generic;
    
    public partial class RecordLabel
    {
        public RecordLabel()
        {
            this.Artist = new HashSet<Artist>();
            this.Review = new HashSet<Review>();
        }
    
        public int companyNr { get; set; }
        public string companyName { get; set; }
        public string picture { get; set; }
    
        public virtual ICollection<Artist> Artist { get; set; }
        public virtual ICollection<Review> Review { get; set; }
    }
}
