using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock
{
    class Meuble
    {
        private double lePrix;

        public double LePrix
        {
            get { return lePrix; }
            set { lePrix = value; }
        }

        private String laReference;

        public String LaReference
        {
            get { return laReference; }
            set { laReference = value; }
        }



        private Dimension laDimension;

        internal Dimension LaDimension
        {
            get { return laDimension; }
            set { laDimension = value; }
        }

        public Meuble(String reference, Dimension dim, double prix)
        {
            LaReference = reference;
            LaDimension = dim;
            LePrix = prix;


        }

        public Meuble(String reference, double larg, double hauteur, double profondeur, double prix)

        {

            LaReference = reference;
            LaDimension = new Dimension(larg, hauteur, profondeur);
            LePrix = prix;

        }




        public override string ToString()
        {
            return LaReference + " (" + LaDimension + ") :" + LePrix + " euro(s)";
        }


        public override bool Equals(Object o)
        {
            Meuble m = o as Meuble;
            if (m == null)
                return false;
            return (m.LaReference == LaReference);
        }
    }
}