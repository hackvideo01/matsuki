using matsukifudousan.Model;
using matsukifudousan.ViewModel;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace matsukifudousan
{
    /// <summary>
    /// RentalInput.xaml の相互作用ロジック
    /// </summary>
    public partial class RentalInput : UserControl
    {
        public RentalInput()
        {
            InitializeComponent();

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                OpenFileDialog op = new OpenFileDialog();
                op.Filter = "All supported graphics|*.jpg;*.jpeg;*.png|" +
                  "JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg|" +
                  "Portable Network Graphic (*.png)|*.png";

                if (op.ShowDialog() == true)
                {
                    string FilePath = op.FileName;

                    image1.Source = new BitmapImage(new Uri(FilePath));

                    //var ok = op.FilterIndex =2;

                    imagetb.Text = op.SafeFileName;

                    imagetb.Focus();

                    //string name = System.IO.Path.GetFileName(FilePath);
                    //string destinationPath = GetDestinationPath(name, "RentalImage");

                    //File.Copy(FilePath, destinationPath, true);

                   
                }
                
            }
            catch (Exception)
            {

                MessageBox.Show("Fix!", "ERROR!!!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        //private static String GetDestinationPath(string filename, string foldername)
        //{
        //    String appStartPath = System.IO.Path.GetDirectoryName(Process.GetCurrentProcess().MainModule.FileName);

        //    appStartPath = String.Format(appStartPath + "\\{0}\\" + filename, foldername);
        //    return appStartPath;
        //}
    }
}
