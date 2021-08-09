using matsukifudousan.Model;
using matsukifudousan.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace matsukifudousan
{
    /// <summary>
    /// ContractDetails.xaml の相互作用ロジック
    /// </summary>
    public partial class ContractDetails : Window
    {
        private ContractDetailsViewModel _View;

        public ContractDetails()
        {
            InitializeComponent();

            //IViewMain();

            //ContractDetailsDisplay.DataContext = _View;

            //ContractDetailsDisplay.DataContext = View;

            //void IViewMain()
            //{
            //    var nameImg = DataProvider.Ins.DB.Image.Where(x => x.ID == 1);
            //    if (nameImg.Count() > 0)
            //    {
            //        _View = new ContractDetailsViewModel() { ObjectImg = DataProvider.Ins.DB.Image.Where(x=>x.ID == 1).ToList() };
            //    }
            //}
        }
        
    }
}
