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

    public class Personne
    {
        private String nom;
        public String Nom
        {
            get { return nom; }
            set { nom = value.ToUpper(); }
        }

        private int age;
        public int Age
        {
            get { return age; }
            set {  age = value; }
        }

        public Personne(string nom, int age)
        {
            Nom = nom;
            Age = age;
        }      
    }

    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    /// 
    public partial class MainWindow : Window
    {
        Personne p;
        public MainWindow()
        {
            InitializeComponent();
            p = new Personne("Smith",-1);
            this.DataContext = p;
        }
       
        private void Button_Click(object sender, RoutedEventArgs e)
        {           
            if (Validation.GetHasError(textBox1) == false)
                MessageBox.Show("Saisie valide : "+ p.Nom + " : "+p.Age+" ans");
            else
                MessageBox.Show("Saisie invalide");
        }

    }
}
