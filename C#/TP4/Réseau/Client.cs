using System.Collections.Generic;

namespace TP
{
    public class Client
    {
        public Client()
        {

        }

        public Client(string nom, string email, string telephone)
            :this()
        {
            Nom = nom;
            Email = email;
            Telephone = telephone;

            Factures = new List<Facture>();
        }

        public string Nom { get; set; }

        public string Email { get; set; }

        public string Telephone { get; set; }

        public List<Facture> Factures { get; set; }

        public override string ToString()
        {
            return Nom;
        }
    }
}