//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Beautytrend.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            this.PhieuMuas = new HashSet<PhieuMua>();
        }
    
        public int MaSP { get; set; }
        public string TenSP { get; set; }
        public Nullable<int> MaLoai { get; set; }
        public string MoTa { get; set; }
        public Nullable<int> Gia { get; set; }
        public string AnhSP { get; set; }
        public Nullable<int> TenNguoiDung { get; set; }
        public Nullable<int> status { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuMua> PhieuMuas { get; set; }
        public virtual TheLoai TheLoai { get; set; }
    }
}