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
    public partial class MainWindow : Window,INotifyPropertyChanged
    {
        private String nom;

        public String Nom
        {
            get { return nom; }
            set { nom = value.ToUpper();
                OnPropertyChanged();
            }
        }

        private int age;

        public int Age
        {
            get { return age; }
            set { age = value;
                OnPropertyChanged();
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged(string nomPropriete = "")
        {
           if (PropertyChanged !=null)
                PropertyChanged(this,new PropertyChangedEventArgs(nomPropriete));
        }

        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = this;
            this.Nom = "Smith";
            this.Age = 23;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(Nom + " : " + Age + " ans");
        }
    }
}
