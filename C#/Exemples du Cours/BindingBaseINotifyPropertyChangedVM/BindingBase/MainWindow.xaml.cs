using BindingBase.VM;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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

namespace BindingBase
{

    

    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    /// 
    public partial class MainWindow : Window
    {
        PersonneViewModel MaPersonne;
        public MainWindow()
        {
            InitializeComponent();
            MaPersonne = new PersonneViewModel(new Model.Personne("Smith",23));
            this.DataContext = MaPersonne;
            
  
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(MaPersonne.Nom + " : " + MaPersonne.Age + " ans");
        }
    }
}
