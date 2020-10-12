using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TP1Debug
{
    class Program
    {
        static void Main(string[] args)
        {
            Pays p1 = new Pays(1, "France");
            Pays p2 = new Pays(2, "Irlande");
            Pays p3 = new Pays(3, "Allemagne");
            TdDebug test = new TdDebug();

            List<Pays> lesPays = new List<Pays> { p1, p2, p3 };
            test.Exercice5_1(lesPays);
        }
    }
}
