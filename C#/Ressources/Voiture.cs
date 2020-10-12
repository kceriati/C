using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPNotéM2105_ex3.Model
{
    public class Voiture
    {      
        private String proprietaire;
        public String Proprietaire
        {
            get { return proprietaire; }
            set {
				// à completer
			 }
        }

        public string Modele { get; set; }
        public double Puissance { get; set; }
        public double VitesseMax { get; set; }
        public bool Bridee { get; set; }
      

        public Voiture(String proprietaire,String modele, double puissance, double vitMax, bool bridee)
        {
            Proprietaire = proprietaire;
            Modele = modele;
            Puissance = puissance;
            VitesseMax = vitMax;
            Bridee = bridee;
        }

        public bool Debrider()
        {
            if (!Bridee)
            {
                Puissance *= 1.10;
                VitesseMax *= 1.20;
                Bridee = true;
                return true;
            }
            return false;
        }
    }
}
