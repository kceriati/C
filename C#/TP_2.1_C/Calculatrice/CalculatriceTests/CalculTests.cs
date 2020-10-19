using Microsoft.VisualStudio.TestTools.UnitTesting;
using Calculatrice;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculatrice.Tests
{
    [TestClass()]
    public class CalculTests
    {
        [TestMethod()]
        public void AdditionTest_AvecValeur_1_2_Retourne3()
        {
            //Arrange
            Double a = 1.0;
            Double b = 2.0;
            //Act
            Double resultat = Calcul.Addition(a, b);
            //Assert
            Assert.AreEqual(3.0, resultat, "Test non OK. La valeur doit être égale à 3");
        }
    }
}