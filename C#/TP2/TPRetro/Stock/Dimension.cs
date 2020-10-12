using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock
{
    class Dimension
    {
        private double largeur;

        public double Largeur
        {
            get { return largeur; }
            set { largeur = value; }
        }

        private double profondeur;

        public double Profondeur
        {
            get { return profondeur; }
            set { profondeur = value; }
        }

        private double hauteur;

        public double Hauteur
        {
            get { return hauteur; }
            set { hauteur = value; }
        }

        public Dimension(double larg, double haut, double prof)
        {

            Largeur = larg;
            Hauteur = haut;
            Profondeur = prof;
        }



        public override string ToString()
        {
            return Largeur + "," + Hauteur + "," + Profondeur;
        }

        public override bool Equals(Object o)
        {
            Dimension d = o as Dimension;
            if (d == null)
                return false;
            return (d.Hauteur == Hauteur && d.Largeur == Largeur && d.Profondeur == Profondeur);

        }
    }
}
