using matsukifudousan.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using Image = matsukifudousan.Model.Image;

namespace matsukifudousan.ViewModel
{
    public class RentalInputViewModel : BaseViewModel
    {
        //private ObservableCollection<Image> _RentalInputList;
        //public ObservableCollection<Image> RentalInputList
        //{
        //    get => _RentalInputList; set
        //    {
        //        _RentalInputList = value;
        //        OnPropertyChanged();
        //    }
        //}

        #region Rental Item Input
        private string _HouseNo;
        public string HouseNo { get => _HouseNo; set { _HouseNo = value; OnPropertyChanged(); } }

        private string _HouseName;
        public string HouseName { get => _HouseName; set { _HouseName = value; OnPropertyChanged(); } }

        private string _HousePost;
        public string HousePost { get => _HousePost; set { _HousePost = value; OnPropertyChanged(); } }

        private string _HouseAddress;
        public string HouseAddress { get => _HouseAddress; set { _HouseAddress = value; OnPropertyChanged(); } }

        private string _NearestSation;
        public string NearestSation { get => _NearestSation; set { _NearestSation = value; OnPropertyChanged(); } }

        private string _HouseType;
        public string HouseType { get => _HouseType; set { _HouseType = value; OnPropertyChanged(); } }

        private string _Construction;
        public string Construction { get => _Construction; set { _Construction = value; OnPropertyChanged(); } }

        private string _YearConstruction;
        public string YearConstruction { get => _YearConstruction; set { _YearConstruction = value; OnPropertyChanged(); } }

        private string _Decorate;
        public string Decorate { get => _Decorate; set { _Decorate = value; OnPropertyChanged(); } }

        private string _TotalArea;
        public string TotalArea { get => _TotalArea; set { _TotalArea = value; OnPropertyChanged(); } }

        private string _Parking;
        public string Parking { get => _Parking; set { _Parking = value; OnPropertyChanged(); } }

        private string _Pets;
        public string Pets { get => _Pets; set { _Pets = value; OnPropertyChanged(); } }

        private string _OtherEquipment;
        public string OtherEquipment { get => _OtherEquipment; set { _OtherEquipment = value; OnPropertyChanged(); } }

        private string _HouseRemarks;
        public string HouseRemarks { get => _HouseRemarks; set { _HouseRemarks = value; OnPropertyChanged(); } }

        private string _SecurityDeposit;
        public string SecurityDeposit { get => _SecurityDeposit; set { _SecurityDeposit = value; OnPropertyChanged(); } }

        private string _KeyMoney;
        public string KeyMoney { get => _KeyMoney; set { _KeyMoney = value; OnPropertyChanged(); } }

        private string _CommonFee;
        public string CommonFee { get => _CommonFee; set { _CommonFee = value; OnPropertyChanged(); } }

        private string _ManagementFee;
        public string ManagementFee { get => _ManagementFee; set { _ManagementFee = value; OnPropertyChanged(); } }

        private string _Rent;
        public string Rent { get => _Rent; set { _Rent = value; OnPropertyChanged(); } }

        private string _ParkingFee;
        public string ParkingFee { get => _ParkingFee; set { _ParkingFee = value; OnPropertyChanged(); } }

        private string _OtherFee;
        public string OtherFee { get => _OtherFee; set { _OtherFee = value; OnPropertyChanged(); } }

        private string _MNGMTCOName;
        public string MNGMTCOName { get => _MNGMTCOName; set { _MNGMTCOName = value; OnPropertyChanged(); } }

        private string _CompanyAddress;
        public string CompanyAddress { get => _CompanyAddress; set { _CompanyAddress = value; OnPropertyChanged(); } }

        private string _COPhone;
        public string COPhone { get => _COPhone; set { _COPhone = value; OnPropertyChanged(); } }

        private string _COFax;
        public string COFax { get => _COFax; set { _COFax = value; OnPropertyChanged(); } }

        private string _Name;
        public string Name { get => _Name; set { _Name = value; OnPropertyChanged(); } }

        private string _Address;
        public string Address { get => _Address; set { _Address = value; OnPropertyChanged(); } }

        private string _Phone;
        public string Phone { get => _Phone; set { _Phone = value; OnPropertyChanged(); } }

        private string _Fax;
        public string Fax { get => _Fax; set { _Fax = value; OnPropertyChanged(); } }

        private string _MNGMTForm;
        public string MNGMTForm { get => _MNGMTForm; set { _MNGMTForm = value; OnPropertyChanged(); } }

        private string _Remarks;
        public string Remarks { get => _Remarks; set { _Remarks = value; OnPropertyChanged(); } }

        private string _Image;
        public string Image { get => _Image; set { _Image = value; OnPropertyChanged(); } }

        #endregion

        private Image _Image1;
        public Image Image1 { get => _Image1; set { _Image1 = value; OnPropertyChanged(); } }
        public ICommand ContractDetailsCommandWD { get; set; }

        public ICommand AddRentalCommand { get; set; }

        public ICommand AddImageCommand { get; set; }

        public RentalInputViewModel()
        {

            //RentalInputList = new ObservableCollection<Image>(DataProvider.Ins.DB.Image);

            ContractDetailsCommandWD = new RelayCommand<object>((p) => { return true; }, (p) => { ContractDetails wd = new ContractDetails(); wd.ShowDialog(); });


            AddRentalCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(HouseNo))
                    return false;

                var displayList = DataProvider.Ins.DB.RentalManagementDB.Where(x => x.HouseNo == HouseNo);
                if (displayList == null || displayList.Count() != 0)
                    return false;

                return true;
            }, (p) =>

            {
                //MessageBox.Show("Da vAo Roi");
                int Comfirm = 0;
                #region Value Form RentalMangement
                var AddRental = new RentalManagementDB()
                {
                    HouseNo = HouseNo,
                    HouseName = HouseName,
                    HousePost = HousePost,
                    HouseAddress = HouseAddress,
                    NearestSation = NearestSation,
                    HouseType = HouseType,
                    Construction = Construction,
                    YearConstruction = YearConstruction,
                    Decorate = Decorate,
                    TotalArea = TotalArea,
                    Parking = Parking,
                    Pets = Pets,
                    OtherEquipment = OtherEquipment,
                    HouseRemarks = HouseRemarks,
                    SecurityDeposit = SecurityDeposit,
                    KeyMoney = KeyMoney,
                    CommonFee = CommonFee,
                    ManagementFee = ManagementFee,
                    Rent = Rent,
                    ParkingFee = ParkingFee,
                    OtherFee = OtherFee,
                    MNGMTCOName = MNGMTCOName,
                    CompanyAddress = CompanyAddress,
                    COPhone = COPhone,
                    COFax = COFax,
                    Name = Name,
                    Address = Address,
                    Phone = Phone,
                    Fax = Fax,
                    MNGMTForm = MNGMTForm,
                    Remarks = Remarks,
                    Image = Image
                };

                DataProvider.Ins.DB.RentalManagementDB.Add(AddRental);
                DataProvider.Ins.DB.SaveChanges();

                Comfirm = 1;
                if (Comfirm == 1)
                {
                    MessageBox.Show("データを保存しました。");
                }

                //RentalInputList.Add(AddRental);

                #endregion
            });

            //AddImageCommand = new RelayCommand<object>((p) =>
            //{
            //    return true;
            //}, (p) =>
            //{
            //    String imageLocation = "";
            //    try
            //    {
            //        OpenFileDialog op = new OpenFileDialog();
            //        op.Filter = "All supported graphics|*.jpg;*.jpeg;*.png|" +"JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg|" +"Portable Network Graphic (*.png)|*.png";
            //        if (op.ShowDialog() == true)
            //        {
            //            imageLocation = op.FileName;

            //            Image1.Source = imageLocation;
            //        }
            //    }
            //    catch (Exception)
            //    {

            //        MessageBox.Show("Fix!", "ERROR!!!", MessageBoxButton.OK, MessageBoxImage.Error);
            //    }
               
            //});
        }

    }
}
