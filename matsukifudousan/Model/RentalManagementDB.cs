//------------------------------------------------------------------------------
// <auto-generated>
//     このコードはテンプレートから生成されました。
//
//     このファイルを手動で変更すると、アプリケーションで予期しない動作が発生する可能性があります。
//     このファイルに対する手動の変更は、コードが再生成されると上書きされます。
// </auto-generated>
//------------------------------------------------------------------------------

namespace matsukifudousan.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class RentalManagementDB
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RentalManagementDB()
        {
            this.Image1 = new HashSet<Image>();
        }
    
        public string HouseNo { get; set; }
        public string HouseName { get; set; }
        public string HousePost { get; set; }
        public string HouseAddress { get; set; }
        public string NearestSation { get; set; }
        public string HouseType { get; set; }
        public string Construction { get; set; }
        public string YearConstruction { get; set; }
        public string Decorate { get; set; }
        public string TotalArea { get; set; }
        public string Parking { get; set; }
        public string Pets { get; set; }
        public string OtherEquipment { get; set; }
        public string HouseRemarks { get; set; }
        public string SecurityDeposit { get; set; }
        public string KeyMoney { get; set; }
        public string CommonFee { get; set; }
        public string ManagementFee { get; set; }
        public string Rent { get; set; }
        public string ParkingFee { get; set; }
        public string OtherFee { get; set; }
        public string MNGMTCOName { get; set; }
        public string CompanyAddress { get; set; }
        public string COPhone { get; set; }
        public string COFax { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string MNGMTForm { get; set; }
        public string Remarks { get; set; }
        public string Image { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Image> Image1 { get; set; }
    }
}
