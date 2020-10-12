using System.ComponentModel;

namespace TP
{
    public class Facture
    {
        public string Numero { get; set; }
        
        public decimal Montant { get; set; }
        
        public bool Payee { get; set; }

        public Facture()
        {
        }

        public Facture(string numero, decimal montant, bool paye)
            :this()
        {
            Numero = numero;
            Montant = montant;
            Payee = paye;
        }
    }
}