using matsukifudousan.Model;
using matsukifudousan.ViewModel;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
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
        //private ContractDetailsViewModel _View
        public ContractDetails()
        {
            InitializeComponent();

        }

        private void DatePicker_PreviewKeyDown(object sender, KeyEventArgs e)
        {

        }
    }
}
