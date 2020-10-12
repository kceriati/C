using BindingBase.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace DataGridTest
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ObservableCollection<Personne> ListePersonnes { get; set; }
        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = this;
            ListePersonnes = new ObservableCollection<Personne>();
            ListePersonnes.Add(new Personne("Smith", 23));
            ListePersonnes.Add(new Personne("Dupond", 53));
            ListePersonnes.Add(new Personne("Martin", 52));
            ListePersonnes.Add(new Personne("Durand", 24));
            ListePersonnes.Add(new Personne("Diard", 32));
            ListePersonnes.Add(new Personne("Batman", 54));
            ListePersonnes.Add(new Personne("IronMan", 47));


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            String chaine = "";
            foreach (Personne p in ListePersonnes)
                chaine += p.Nom + " " + p.Age + " ans\n";
            MessageBox.Show(chaine);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (dgPersonnes.SelectedItem is Personne)

                ListePersonnes.Remove((Personne)dgPersonnes.SelectedItem);
            else
                MessageBox.Show("Veuillez sélectionner une personne à supprimer");
        }
    }

}

