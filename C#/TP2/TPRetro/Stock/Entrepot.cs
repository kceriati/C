using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock
{
    class Entrepot
    {

        private DateTime dateDerniereMAJ;

        public DateTime DateDerniereMAJ
        {
            get { return dateDerniereMAJ; }
            set { dateDerniereMAJ = value; }
        }
        private List<Stock> lesStocks;

        internal List<Stock> LesStocks
        {
            get { return lesStocks; }
            set { lesStocks = value; }
        }

        public Entrepot()

        {

            LesStocks = new List<Stock>();

            DateDerniereMAJ = DateTime.Now;

        }

        public void AddStock(Stock s)

        {

            LesStocks.Add(s);

            DateDerniereMAJ = DateTime.Now;

        }



        public void AddStock(Meuble unMeuble, int qte)

        {

            AddStock(new Stock(unMeuble, qte));

            // on réutilise la définition précédente de AddStock

        }



        public override String ToString()

        {

            String txt = "Derniere maj :" + DateDerniereMAJ + "\n";

            if (LesStocks.Count == 0)

                txt += "Rien en stock";

            else

            {

                foreach (Stock unStock in LesStocks)

                    txt += unStock.ToString() + "\n";

                // déclenche le ToString de la classe Stock

            }

            return txt;

        }

        public double CalculePrix()

        {

            double px = 0;

            foreach (Stock unStock in LesStocks)

                px += unStock.CalculePrix();

            return px;

        }





        public double CalculeVolume()

        {

            double vol = 0;

            foreach (Stock unStock in LesStocks)

                vol += unStock.CalculeVolume();

            return vol;

        }



        public void VoirLesStocksEpuises()

        {

            int nb = 0;

            Console.WriteLine("STOCKS EPUISES: \n");

            foreach (Stock unStock in LesStocks)

            {

                if (unStock.LaQuantite == 0)

                { Console.WriteLine(unStock); nb++; }

            }

            if (nb == 0)

                Console.WriteLine("Aucun stock n'est épuisé\n");

        }

        public List<Stock> StocksDeMeublesDePlus(double px)

        {

            List<Stock> result = new List<Stock>();

            foreach (Stock unStock in LesStocks)

            {

                if (unStock.LeMeuble.LePrix > px)

                    result.Add(unStock);

            }

            return result;

        }







    }
}
