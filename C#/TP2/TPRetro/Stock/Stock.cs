using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock
{
    class Stock
    {
        private Meuble leMeuble;

        internal Meuble LeMeuble
        {
            get { return leMeuble; }
            set { leMeuble = value; }
        }

        private int laQuantite;

        public int LaQuantite
        {
            get { return laQuantite; }
            set { laQuantite = value; }
        }

        public Stock(Meuble unMeuble, int uneQuantite)
        {

            LeMeuble = unMeuble;
            LaQuantite = uneQuantite;

        }

        public bool Retire(int qte)

        {

            if (qte > LaQuantite)

                return false;

            LaQuantite = LaQuantite - qte;

            return true;

        }



        public double CalculePrix()

        { return LeMeuble.LePrix * LaQuantite; }


        public double CalculeVolume()
        {
            // A FAIRE
            return 0;

        }

        public override string ToString()
        {
            return LeMeuble + " : " + LaQuantite;
        }


    }
}
