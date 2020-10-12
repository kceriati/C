using BindingBase.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
            ChargeListePersonnes(); 


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            SauveListePersonnesJson();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (dgPersonnes.SelectedItem is Personne)

                ListePersonnes.Remove((Personne)dgPersonnes.SelectedItem);
            else
                MessageBox.Show("Veuillez sélectionner une personne à supprimer");
        }

        public void ChargeListePersonnes()
        {
            try
            {
                ListePersonnes = JsonConvert.DeserializeObject<ObservableCollection<Personne>>(File.ReadAllText("./Data/Personnes.json"));
            }
            catch
            {
                MessageBox.Show("Lecture fichier impossible, l'application va se fermer"
                    , "erreur", MessageBoxButton.OK, MessageBoxImage.Error);
                Environment.Exit(0);
            }
        }

        public void SauveListePersonnesJson()
        {
            try
            {
                File.WriteAllText("./Data/Personnes.json", JsonConvert.SerializeObject(ListePersonnes));
                MessageBox.Show("Fichier sauvegardé");
            }
            catch
            {
                MessageBox.Show("Ecriture fichier impossible", "erreur", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

    }

}

