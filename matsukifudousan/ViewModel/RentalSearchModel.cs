using matsukifudousan.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace matsukifudousan.ViewModel
{
    class RentalSearchModel : BaseViewModel
    {
        private ObservableCollection<RentalManagementDB> _List;
        public ObservableCollection<RentalManagementDB> List { get=>_List; set { _List = value; OnPropertyChanged();} }

        private string _Search;
        public string Search { get => _Search; set { _Search = value; OnPropertyChanged(); } }

        public ICommand SearchButton { get; set; }
        public RentalSearchModel()
        {
            SearchButton = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                string Result = Search;
                if (Result != "")
                {
                    Result.Contains(Search);

                    List = new ObservableCollection<RentalManagementDB>(DataProvider.Ins.DB.RentalManagementDB.Where(s => s.HouseNo == Result));

                    List = new ObservableCollection<RentalManagementDB>(DataProvider.Ins.DB.RentalManagementDB.Where(s => s.HouseName == Result));

                    if (List.Count == 0)
                    {
                        MessageBox.Show("検索の結果がなかったです。","エラー",MessageBoxButton.OK,MessageBoxImage.Error);
                    }
                }
                else
                {
                    MessageBox.Show("まだ入力しないです。", "エラー", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            });

            
        }
    }
}
