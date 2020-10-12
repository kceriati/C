using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TP1Debug
{
    public class Pays
    {
        private int id;
        public int Id
        {
            get
            {
                return this.id;
            }
            set
            {
                if (value < 1)
                    throw new ArgumentNullException("L'Id doit être un entier superieur à 1");
                this.id = value;
            }
        }

        private string nom;
        public string Nom
        {
            get
            {
                return this.nom;
            }
            set
            {
                if (value.Length == 0)
                    throw new ArgumentException("Le nom ne peut pas être vide");

                this.nom = value.Substring(0, 1).ToUpper() + value.Substring(1).ToLower();
            }
        }

        public Pays(int id, string nom)
        {
            this.Id = id;
            this.Nom = nom;

        }
    }
}
