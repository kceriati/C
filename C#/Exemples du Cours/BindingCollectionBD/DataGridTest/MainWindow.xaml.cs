using BindingBase.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
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
            SauveListePersonnes();
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
            SqlConnection conn =
                new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
            conn.Open();
            string sql = "SELECT NOM,AGE FROM PERSONNES";
            SqlCommand requeteSQL = new SqlCommand(sql, conn);
            DataTable dataTable = new DataTable();
            SqlDataReader rdr = requeteSQL.ExecuteReader();
            dataTable.Load(rdr);
            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                Personne p = new Personne(dataTable.Rows[i]["NOM"].ToString(), Convert.ToInt32(dataTable.Rows[i]["AGE"]));
                ListePersonnes.Add(p);
            }
            rdr.Close();
            conn.Close();
        }

        public void SauveListePersonnes()
        {
            SqlConnection conn = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
            conn.Open();
            SqlCommand requeteSQL;
            requeteSQL = new SqlCommand("DELETE FROM PERSONNES", conn);
            SqlDataReader rdr = requeteSQL.ExecuteReader();
            rdr.Close();
            foreach (Personne p in ListePersonnes)
            {
                requeteSQL = new SqlCommand("INSERT INTO PERSONNES(NOM,AGE) VALUES ('" + p.Nom + "'," + p.Age + ");", conn);
                rdr = requeteSQL.ExecuteReader();
                rdr.Close();
            }
            conn.Close();
            MessageBox.Show("Données sauvegardées");
        }

    }

}

