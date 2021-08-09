using matsukifudousan.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace matsukifudousan.ViewModel
{

    public class ContractDetailsViewModel : BaseViewModel

    {
        private ObservableCollection<Image> _ViewImg;

        public ObservableCollection<Image> ViewImg { get => _ViewImg; set { _ViewImg = value; OnPropertyChanged(); } }
        //public Object ObjectImg { get; set; }

        public ContractDetailsViewModel()
        {
            ViewImg = new ObservableCollection<Image>(DataProvider.Ins.DB.Image.Where(x=>x.ID == 1));

        }

    }
}
