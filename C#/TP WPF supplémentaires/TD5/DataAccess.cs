using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DataLayer
{
    public class DataAccess
    {
        private SqlConnection connection;

        /// <summary>
        /// Connexion à la base de données
        /// </summary>
        /// <returns> Retourne un booléen indiquant si la connexion est ouverte ou fermée</returns>
        private bool OpenConnection()
        {
            try
            {
                this.connection = new SqlConnection();
                this.connection.ConnectionString = "Data Source=srv-jupiter;Database=vcout;Integrated Security=True";
                this.connection.Open();
                return this.connection.State.Equals(System.Data.ConnectionState.Open);
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// Déconnexion de la base de données
        /// </summary>
        private void CloseConnection()
        {
            if (this.connection.State.Equals(System.Data.ConnectionState.Open))
            {
                this.connection.Close();
            }
        }

        /// <summary>
        /// Accès à des données en lecture
        /// </summary>
        /// <param name="getQuery">Requête SELECT de sélection de données</param>
        /// <returns>Retourne un DataTable contenant les lignes renvoyées par le SELECT</returns>
        public DataTable GetData(string getQuery)
        {
            try
            {
                if (this.OpenConnection())
                {
                    SqlCommand command = new SqlCommand(getQuery, this.connection);
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = command;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.CloseConnection();
                    return dt;
                }
                else
                    return null;
            }
            catch
            {
                this.CloseConnection();
                return null;
            }
        }

        /// <summary>
        /// Permet d'insérer, supprimer ou modifier des données
        /// </summary>
        /// <param name="setQuery">Requête SQL permettant d'insérer (INSERT), supprimer (DELETE) ou modifier des données (UPDATE).</param>
        /// <exception cref="System.Exception">Déclenchée si l'écriture/modification/suppression en base échoue.</exception> 
        /// <returns>Retourne un booléen indiquant si des lignes ont été ajoutées/supprimées/modifiées.</returns>
        public bool SetData(string setQuery)
        {
            bool ret = false;
            try
            {
                if (this.OpenConnection())
                {
                    int modifiedLines;
                    SqlCommand command = new SqlCommand(setQuery, this.connection);
                    modifiedLines = command.ExecuteNonQuery();
                    if (modifiedLines > 0)
                        ret = true;
                    this.CloseConnection();
                    return ret;
                }
                else
                    return false;
            }
            catch
            {
                this.CloseConnection();
                return false;
            }
        }
    }
}
