using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TP
{
    public static class Data
    {
        public static List<Client> Load()
        {
            var Clients = new List<Client>()
            {
                new Client("Ivan Norton","sed.libero@velitduisemper.com","03 98 32 59 47"),
                new Client("Gisela Landry","nostra@malesuadaiderat.co.uk","09 40 96 17 89"),
                new Client("Amethyst Frost","Cras.lorem@Integervulputaterisus.co.uk","09 84 61 03 31"),
                new Client("Latifah Cain","diam.Pellentesque@et.com","05 41 53 36 16"),
                new Client("Uriel Salas","Proin@tincidunt.ca","09 25 64 29 00"),
                new Client("Herman Hammond","pede.Suspendisse@at.co.uk","06 73 06 88 91"),
                new Client("Simon Lee","lacinia.Sed@semper.edu","06 37 84 52 40"),
                new Client("Shannon Orr","Nunc.pulvinar@metusVivamuseuismod.org","04 93 03 97 70"),
                new Client("Ima Mccarthy","sem@iderat.org","08 39 57 19 04"),
                new Client("Gray Mcmahon","in@non.com","06 34 09 51 45"),
                new Client("Blossom Hayden","Sed.nec.metus@enim.com","03 52 58 08 01"),
                new Client("Thaddeus Mcintosh","lorem.eget.mollis@Sedmolestie.edu","09 24 12 23 92"),
                new Client("Joshua Richardson","Curae.Donec@iaculisaliquet.org","02 18 11 06 10"),
                new Client("Neville Parks","magna.Suspendisse@convallisconvallis.net","01 82 92 69 45"),
                new Client("Cedric Pena","est.mauris.rhoncus@nascetur.net","06 74 47 98 83"),
                new Client("Whoopi Hinton","sodales.Mauris.blandit@orciUt.edu","02 66 32 10 43"),
                new Client("Virginia Williamson","habitant.morbi.tristique@euultrices.net","05 49 14 98 93"),
                new Client("Logan Rush","enim.diam.vel@nulla.edu","02 42 66 19 43"),
                new Client("Jade Warner","ipsum.leo.elementum@enimnisl.co.uk","09 25 85 26 42"),
                new Client("Suki Carney","ultricies@esttemporbibendum.org","06 90 60 41 68"),
                new Client("Martin Potts","vestibulum.lorem@amalesuadaid.net","07 81 98 66 60"),
                new Client("Leah Battle","velit.egestas@Crasvehicula.edu","02 75 32 77 69"),
                new Client("Lara Barr","In@odio.net","05 47 08 95 56"),
                new Client("Yoshi Good","mauris.ut.mi@etlacinia.org","06 20 19 44 24"),
                new Client("Slade Riddle","a.auctor.non@tellusid.org","06 00 75 86 39"),
                new Client("Illana Mosley","Mauris@molestie.net","03 76 81 26 28"),
                new Client("Chadwick Austin","at.auctor.ullamcorper@cursusNuncmauris.net","09 71 25 97 18"),
                new Client("Wanda Hicks","magna.Lorem.ipsum@gravidamauris.com","09 15 33 91 92"),
                new Client("Carlos Atkinson","vulputate@cubiliaCuraeDonec.net","02 78 42 72 87"),
                new Client("Courtney Ross","enim.Curabitur@quisdiam.org","04 74 69 31 48"),
                new Client("Bruce Gross","eu.sem@idsapien.ca","09 20 53 47 10"),
                new Client("Ahmed Workman","blandit.Nam.nulla@liberoet.com","04 55 64 38 85"),
                new Client("Fulton Vazquez","et.risus.Quisque@duiFuscediam.ca","03 02 70 46 44"),
                new Client("Hanae Noble","gravida.molestie.arcu@volutpat.ca","06 22 81 10 53"),
                new Client("Xyla Hickman","ut.nulla@dui.ca","07 75 45 21 95"),
                new Client("Rinah Gonzales","faucibus@eratVivamus.ca","01 89 64 45 34"),
                new Client("Jayme Bowen","aliquam@luctusCurabitur.edu","04 01 91 95 05"),
                new Client("Keith Boyd","sed@quistristique.co.uk","08 26 70 67 70"),
                new Client("Honorato Waters","varius@vel.edu","09 87 04 85 27"),
                new Client("Kaden Harris","enim.non@egetmollis.com","06 52 43 47 24"),
                new Client("Vivien Lowery","tellus.sem@enimconsequatpurus.ca","08 92 52 21 42"),
                new Client("Maggie Blanchard","diam@nequeMorbiquis.com","02 70 59 39 23"),
                new Client("Lester Hunter","lacus.Etiam.bibendum@quisturpis.co.uk","02 69 34 98 15"),
                new Client("Lara Whitley","rutrum@laoreetposuere.ca","02 80 86 59 19"),
                new Client("Henry Sharp","elit.fermentum.risus@musProinvel.ca","07 36 16 59 95"),
                new Client("Carson Dixon","vitae.dolor.Donec@senectuset.net","07 97 46 85 30"),
                new Client("Evangeline Crosby","mauris.rhoncus.id@ullamcorpernisl.co.uk","09 03 27 49 85"),
                new Client("Lois Dale","ligula@vulputate.co.uk","06 76 59 86 65"),
                new Client("Hermione Faulkner","Pellentesque.habitant.morbi@metusAliquamerat.edu","09 81 48 20 27"),
                new Client("Megan Reynolds","tellus.Nunc@malesuadaInteger.co.uk","09 14 02 90 72"),
                new Client("Jameson Christian","ligula@Proinnislsem.net","04 61 89 69 75"),
                new Client("Chiquita Newman","non.lorem.vitae@molestiesodalesMauris.org","05 81 44 30 42"),
                new Client("Geraldine Sherman","tellus.id.nunc@egestasDuisac.edu","09 51 30 10 30"),
                new Client("Addison Young","fringilla.Donec@eleifend.edu","01 96 25 77 29"),
                new Client("Lila Franks","Morbi.neque.tellus@luctusipsumleo.org","05 54 99 62 03"),
                new Client("Megan Mckay","est.mauris.rhoncus@nuncrisus.net","07 94 32 92 64"),
                new Client("Nehru Dalton","mollis.Integer@etmagnis.co.uk","07 43 39 04 98"),
                new Client("Sophia Brown","mauris.ut@aliquam.edu","02 44 50 58 26"),
                new Client("Hilda Downs","quam.Curabitur.vel@hendreritconsectetuercursus.com","02 18 99 36 95"),
                new Client("Alden Freeman","morbi.tristique.senectus@Maurismagna.com","06 10 06 94 67"),
                new Client("Kieran Mcfadden","Etiam@Morbi.ca","04 43 51 12 68"),
                new Client("Wanda Oliver","porta@lacinia.com","01 49 24 05 34"),
                new Client("Kalia Odom","Quisque.porttitor@lacusQuisque.com","06 68 48 26 92"),
                new Client("Pascale Santana","aliquet.magna.a@eratnonummy.edu","02 17 05 11 33"),
                new Client("Holmes Moody","eget.mollis@aliquet.org","06 59 81 08 93"),
                new Client("Malachi Matthews","quis@euismodac.net","04 83 71 11 15"),
                new Client("Zeph Hubbard","vitae@a.org","05 11 68 38 74"),
                new Client("Octavia Velez","Integer.vitae.nibh@pretium.com","06 14 07 50 89"),
                new Client("Hilda Ortiz","Morbi.non.sapien@auctor.edu","01 00 10 53 81"),
                new Client("Rama Wall","non.justo.Proin@Suspendissetristiqueneque.edu","05 73 82 39 09"),
                new Client("Ria Raymond","massa.lobortis@loremDonec.edu","09 83 88 37 24"),
                new Client("Bell Barton","auctor.non@nisidictum.edu","03 32 84 12 15"),
                new Client("Devin Lucas","eget.tincidunt@tempusscelerisque.edu","02 19 39 20 03"),
                new Client("Xaviera King","tristique.senectus@convallisantelectus.edu","06 80 07 03 19"),
                new Client("Alisa Ayala","justo.sit@ultriciesadipiscing.org","04 63 65 16 74"),
                new Client("Mollie Espinoza","felis.ullamcorper.viverra@Pellentesquehabitant.ca","02 93 33 14 94"),
                new Client("Jeremy Haynes","eu.eros@nisinibh.org","05 03 99 76 07"),
                new Client("Calvin Welch","ipsum.Phasellus@Naminterdum.edu","05 69 43 78 24"),
                new Client("Jerry Abbott","et.magnis.dis@quis.org","03 20 40 25 26"),
                new Client("Zena Kline","nec.mollis@eratnonummy.edu","08 96 91 67 68"),
                new Client("Sawyer Mann","egestas.urna.justo@erosnec.org","04 20 12 08 87"),
                new Client("Ayanna Cohen","dis.parturient@anteiaculisnec.edu","03 55 18 14 37"),
                new Client("Rashad Davis","sed.turpis@eueratsemper.co.uk","08 19 49 58 11"),
                new Client("Blair Martin","luctus@sagittisaugue.com","06 81 63 24 90"),
                new Client("Ori Mckay","malesuada@utpharetra.com","05 51 72 54 87"),
                new Client("Barry Lee","eleifend.Cras@pharetraut.ca","02 30 95 27 02"),
                new Client("Arthur Herrera","Lorem@lacusCrasinterdum.net","04 80 42 47 69"),
                new Client("Gil Flynn","eu.erat.semper@dictummagna.edu","09 95 90 99 25"),
                new Client("Maxine Guzman","ornare.lectus@congueaaliquet.edu","08 43 36 57 21"),
                new Client("Clark Avila","ut.ipsum.ac@facilisiseget.ca","06 84 15 70 32"),
                new Client("Regina Wilkins","tellus.id.nunc@CraspellentesqueSed.edu","01 82 22 06 76"),
                new Client("Jameson Huffman","vestibulum@musAenean.ca","02 00 58 96 23"),
                new Client("Vielka Sykes","ipsum.nunc.id@Maecenasmalesuadafringilla.edu","04 34 21 62 67"),
                new Client("Francesca Torres","Duis@velit.ca","03 72 77 16 13"),
                new Client("Jennifer Johnston","nec.euismod.in@ametmassaQuisque.edu","07 60 86 95 93"),
                new Client("Talon Melendez","magna.malesuada@dolorFusce.ca","03 69 52 54 25"),
                new Client("Macon Hoffman","risus.In@Duis.org","07 76 22 26 59"),
                new Client("Lev Workman","auctor.odio@aliquamenimnec.org","07 46 16 30 89"),
                new Client("Lamar Odom","blandit@quis.org","04 32 70 35 64"),
                new Client("Wanda Cummings","sit.amet.consectetuer@aliquet.org","04 48 83 33 66")
            };

            Random randomizer = new Random();
            int FacNumber = 0;

            foreach (var client in Clients)
            {
                var nbFactures = randomizer.Next(1, 5);

                for (int i = 0; i < nbFactures; i++)
                {
                    client.Factures.Add(new Facture("F201707" + ++FacNumber, (decimal)(randomizer.Next(15,250)*randomizer.NextDouble()), FacNumber % 2 == 0));
                }
            }

            return Clients;
        }
    }
}
