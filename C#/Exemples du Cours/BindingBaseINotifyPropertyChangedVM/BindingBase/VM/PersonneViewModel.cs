using BindingBase.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BindingBase.VM
{
    public class PersonneViewModel : INotifyPropertyChanged
    {
        private String nom;

        public String Nom
        {
            get { return nom; }
            set { nom = value.ToUpper();
                OnPropertyChanged();
            }
        }
        private int age;

        public int Age
        {
            get { return age; }
            set { age = value;
                OnPropertyChanged();
            }
        }




        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged(string nomPropriete = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(nomPropriete));
        }
        public PersonneViewModel(Personne p)
        {
            Nom = p.Nom;
            Age = p.Age;
        }
    }
}

