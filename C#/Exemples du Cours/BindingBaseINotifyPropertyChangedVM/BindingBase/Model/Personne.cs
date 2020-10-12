using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BindingBase.Model
{
    public class Personne
    {
        private String nom;
        public String Nom
        {
            get { return nom; }
            set { nom = value.ToUpper(); }
        }

        private int age;
        public int Age
        {
            get { return age; }
            set { age = value; }
        }

        public Personne(string nom, int age)
        {
            Nom = nom;
            Age = age;
        }
    }

}
