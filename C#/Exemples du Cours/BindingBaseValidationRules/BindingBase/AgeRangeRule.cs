using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace BindingBase
{
    public class AgeRangeRule : ValidationRule
    {
        private int _min;
        private int _max;

        public AgeRangeRule()
        {
        }

        public int Min
        {
            get { return _min; }
            set { _min = value; }
        }

        public int Max
        {
            get { return _max; }
            set { _max = value; }
        }

        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            int age = 0;
            try
            {   if (((string)value).Length > 0)
                    age = Int32.Parse((String)value);}
            catch (Exception e)
            {   return new ValidationResult(false, "caractere illégal");}

            if ((age < Min) || (age > Max))
            {   return new ValidationResult(false,
                  "Age compris entre " + Min + " et " + Max + " ans");}
            else
            {   return ValidationResult.ValidResult;}
        }
    }
}
