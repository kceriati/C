CREATE TABLE [Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Factures] (
    [Id]       INT             IDENTITY (1, 1) NOT NULL,
    [Numero]   NVARCHAR (50)   NULL,
    [Montant]  DECIMAL (18, 2) NULL,
    [Payee]    BIT             NOT NULL,
    [ClientId] INT             NOT NULL,
    CONSTRAINT [PK_Factures] PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_Factures_Clients] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients]([Id]) ON DELETE CASCADE
)

GO
SET IDENTITY_INSERT [Clients] ON

INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (1, N'Ivan Norton', N'sed.libero@velitduisemper.com', N'03 98 32 59 47')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (2, N'Gisela Landry', N'nostra@malesuadaiderat.co.uk', N'09 40 96 17 89')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (3, N'Amethyst Frost', N'Cras.lorem@Integervulputaterisus.co.uk', N'09 84 61 03 31')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (4, N'Latifah Cain', N'diam.Pellentesque@et.com', N'05 41 53 36 16')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (5, N'Uriel Salas', N'Proin@tincidunt.ca', N'09 25 64 29 00')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (6, N'Herman Hammond', N'pede.Suspendisse@at.co.uk', N'06 73 06 88 91')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (7, N'Simon Lee', N'lacinia.Sed@semper.edu', N'06 37 84 52 40')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (8, N'Shannon Orr', N'Nunc.pulvinar@metusVivamuseuismod.org', N'04 93 03 97 70')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (9, N'Ima Mccarthy', N'sem@iderat.org', N'08 39 57 19 04')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (10, N'Gray Mcmahon', N'in@non.com', N'06 34 09 51 45')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (11, N'Blossom Hayden', N'Sed.nec.metus@enim.com', N'03 52 58 08 01')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (12, N'Thaddeus Mcintosh', N'lorem.eget.mollis@Sedmolestie.edu', N'09 24 12 23 92')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (13, N'Joshua Richardson', N'Curae.Donec@iaculisaliquet.org', N'02 18 11 06 10')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (14, N'Neville Parks', N'magna.Suspendisse@convallisconvallis.net', N'01 82 92 69 45')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (15, N'Cedric Pena', N'est.mauris.rhoncus@nascetur.net', N'06 74 47 98 83')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (16, N'Whoopi Hinton', N'sodales.Mauris.blandit@orciUt.edu', N'02 66 32 10 43')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (17, N'Virginia Williamson', N'habitant.morbi.tristique@euultrices.net', N'05 49 14 98 93')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (18, N'Logan Rush', N'enim.diam.vel@nulla.edu', N'02 42 66 19 43')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (19, N'Jade Warner', N'ipsum.leo.elementum@enimnisl.co.uk', N'09 25 85 26 42')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (20, N'Suki Carney', N'ultricies@esttemporbibendum.org', N'06 90 60 41 68')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (21, N'Martin Potts', N'vestibulum.lorem@amalesuadaid.net', N'07 81 98 66 60')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (22, N'Leah Battle', N'velit.egestas@Crasvehicula.edu', N'02 75 32 77 69')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (23, N'Lara Barr', N'In@odio.net', N'05 47 08 95 56')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (24, N'Yoshi Good', N'mauris.ut.mi@etlacinia.org', N'06 20 19 44 24')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (25, N'Slade Riddle', N'a.auctor.non@tellusid.org', N'06 00 75 86 39')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (26, N'Illana Mosley', N'Mauris@molestie.net', N'03 76 81 26 28')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (27, N'Chadwick Austin', N'at.auctor.ullamcorper@cursusNuncmauris.net', N'09 71 25 97 18')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (28, N'Wanda Hicks', N'magna.Lorem.ipsum@gravidamauris.com', N'09 15 33 91 92')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (29, N'Carlos Atkinson', N'vulputate@cubiliaCuraeDonec.net', N'02 78 42 72 87')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (30, N'Courtney Ross', N'enim.Curabitur@quisdiam.org', N'04 74 69 31 48')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (31, N'Bruce Gross', N'eu.sem@idsapien.ca', N'09 20 53 47 10')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (32, N'Ahmed Workman', N'blandit.Nam.nulla@liberoet.com', N'04 55 64 38 85')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (33, N'Fulton Vazquez', N'et.risus.Quisque@duiFuscediam.ca', N'03 02 70 46 44')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (34, N'Hanae Noble', N'gravida.molestie.arcu@volutpat.ca', N'06 22 81 10 53')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (35, N'Xyla Hickman', N'ut.nulla@dui.ca', N'07 75 45 21 95')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (36, N'Rinah Gonzales', N'faucibus@eratVivamus.ca', N'01 89 64 45 34')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (37, N'Jayme Bowen', N'aliquam@luctusCurabitur.edu', N'04 01 91 95 05')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (38, N'Keith Boyd', N'sed@quistristique.co.uk', N'08 26 70 67 70')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (39, N'Honorato Waters', N'varius@vel.edu', N'09 87 04 85 27')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (40, N'Kaden Harris', N'enim.non@egetmollis.com', N'06 52 43 47 24')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (41, N'Vivien Lowery', N'tellus.sem@enimconsequatpurus.ca', N'08 92 52 21 42')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (42, N'Maggie Blanchard', N'diam@nequeMorbiquis.com', N'02 70 59 39 23')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (43, N'Lester Hunter', N'lacus.Etiam.bibendum@quisturpis.co.uk', N'02 69 34 98 15')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (44, N'Lara Whitley', N'rutrum@laoreetposuere.ca', N'02 80 86 59 19')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (45, N'Henry Sharp', N'elit.fermentum.risus@musProinvel.ca', N'07 36 16 59 95')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (46, N'Carson Dixon', N'vitae.dolor.Donec@senectuset.net', N'07 97 46 85 30')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (47, N'Evangeline Crosby', N'mauris.rhoncus.id@ullamcorpernisl.co.uk', N'09 03 27 49 85')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (48, N'Lois Dale', N'ligula@vulputate.co.uk', N'06 76 59 86 65')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (49, N'Hermione Faulkner', N'Pellentesque.habitant.morbi@metusAliquamerat.edu', N'09 81 48 20 27')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (50, N'Megan Reynolds', N'tellus.Nunc@malesuadaInteger.co.uk', N'09 14 02 90 72')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (51, N'Jameson Christian', N'ligula@Proinnislsem.net', N'04 61 89 69 75')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (52, N'Chiquita Newman', N'non.lorem.vitae@molestiesodalesMauris.org', N'05 81 44 30 42')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (53, N'Geraldine Sherman', N'tellus.id.nunc@egestasDuisac.edu', N'09 51 30 10 30')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (54, N'Addison Young', N'fringilla.Donec@eleifend.edu', N'01 96 25 77 29')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (55, N'Lila Franks', N'Morbi.neque.tellus@luctusipsumleo.org', N'05 54 99 62 03')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (56, N'Megan Mckay', N'est.mauris.rhoncus@nuncrisus.net', N'07 94 32 92 64')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (57, N'Nehru Dalton', N'mollis.Integer@etmagnis.co.uk', N'07 43 39 04 98')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (58, N'Sophia Brown', N'mauris.ut@aliquam.edu', N'02 44 50 58 26')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (59, N'Hilda Downs', N'quam.Curabitur.vel@hendreritconsectetuercursus.com', N'02 18 99 36 95')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (60, N'Alden Freeman', N'morbi.tristique.senectus@Maurismagna.com', N'06 10 06 94 67')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (61, N'Kieran Mcfadden', N'Etiam@Morbi.ca', N'04 43 51 12 68')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (62, N'Wanda Oliver', N'porta@lacinia.com', N'01 49 24 05 34')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (63, N'Kalia Odom', N'Quisque.porttitor@lacusQuisque.com', N'06 68 48 26 92')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (64, N'Pascale Santana', N'aliquet.magna.a@eratnonummy.edu', N'02 17 05 11 33')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (65, N'Holmes Moody', N'eget.mollis@aliquet.org', N'06 59 81 08 93')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (66, N'Malachi Matthews', N'quis@euismodac.net', N'04 83 71 11 15')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (67, N'Zeph Hubbard', N'vitae@a.org', N'05 11 68 38 74')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (68, N'Octavia Velez', N'Integer.vitae.nibh@pretium.com', N'06 14 07 50 89')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (69, N'Hilda Ortiz', N'Morbi.non.sapien@auctor.edu', N'01 00 10 53 81')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (70, N'Rama Wall', N'non.justo.Proin@Suspendissetristiqueneque.edu', N'05 73 82 39 09')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (71, N'Ria Raymond', N'massa.lobortis@loremDonec.edu', N'09 83 88 37 24')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (72, N'Bell Barton', N'auctor.non@nisidictum.edu', N'03 32 84 12 15')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (73, N'Devin Lucas', N'eget.tincidunt@tempusscelerisque.edu', N'02 19 39 20 03')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (74, N'Xaviera King', N'tristique.senectus@convallisantelectus.edu', N'06 80 07 03 19')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (75, N'Alisa Ayala', N'justo.sit@ultriciesadipiscing.org', N'04 63 65 16 74')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (76, N'Mollie Espinoza', N'felis.ullamcorper.viverra@Pellentesquehabitant.ca', N'02 93 33 14 94')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (77, N'Jeremy Haynes', N'eu.eros@nisinibh.org', N'05 03 99 76 07')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (78, N'Calvin Welch', N'ipsum.Phasellus@Naminterdum.edu', N'05 69 43 78 24')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (79, N'Jerry Abbott', N'et.magnis.dis@quis.org', N'03 20 40 25 26')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (80, N'Zena Kline', N'nec.mollis@eratnonummy.edu', N'08 96 91 67 68')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (81, N'Sawyer Mann', N'egestas.urna.justo@erosnec.org', N'04 20 12 08 87')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (82, N'Ayanna Cohen', N'dis.parturient@anteiaculisnec.edu', N'03 55 18 14 37')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (83, N'Rashad Davis', N'sed.turpis@eueratsemper.co.uk', N'08 19 49 58 11')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (84, N'Blair Martin', N'luctus@sagittisaugue.com', N'06 81 63 24 90')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (85, N'Ori Mckay', N'malesuada@utpharetra.com', N'05 51 72 54 87')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (86, N'Barry Lee', N'eleifend.Cras@pharetraut.ca', N'02 30 95 27 02')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (87, N'Arthur Herrera', N'Lorem@lacusCrasinterdum.net', N'04 80 42 47 69')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (88, N'Gil Flynn', N'eu.erat.semper@dictummagna.edu', N'09 95 90 99 25')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (89, N'Maxine Guzman', N'ornare.lectus@congueaaliquet.edu', N'08 43 36 57 21')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (90, N'Clark Avila', N'ut.ipsum.ac@facilisiseget.ca', N'06 84 15 70 32')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (91, N'Regina Wilkins', N'tellus.id.nunc@CraspellentesqueSed.edu', N'01 82 22 06 76')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (92, N'Jameson Huffman', N'vestibulum@musAenean.ca', N'02 00 58 96 23')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (93, N'Vielka Sykes', N'ipsum.nunc.id@Maecenasmalesuadafringilla.edu', N'04 34 21 62 67')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (94, N'Francesca Torres', N'Duis@velit.ca', N'03 72 77 16 13')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (95, N'Jennifer Johnston', N'nec.euismod.in@ametmassaQuisque.edu', N'07 60 86 95 93')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (96, N'Talon Melendez', N'magna.malesuada@dolorFusce.ca', N'03 69 52 54 25')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (97, N'Macon Hoffman', N'risus.In@Duis.org', N'07 76 22 26 59')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (98, N'Lev Workman', N'auctor.odio@aliquamenimnec.org', N'07 46 16 30 89')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (99, N'Lamar Odom', N'blandit@quis.org', N'04 32 70 35 64')
GO
INSERT [Clients] ([Id], [Nom], [Email], [Telephone]) VALUES (100, N'Wanda Cummings', N'sit.amet.consectetuer@aliquet.org', N'04 48 83 33 66')
GO
SET IDENTITY_INSERT [Clients] OFF
GO
SET IDENTITY_INSERT [Factures] ON 
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (1, N'F2017071', CAST(163.60 AS Decimal(18, 2)), 0, 1)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (2, N'F2017072', CAST(15.27 AS Decimal(18, 2)), 1, 2)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (3, N'F2017073', CAST(3.34 AS Decimal(18, 2)), 0, 2)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (4, N'F2017074', CAST(63.90 AS Decimal(18, 2)), 1, 3)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (5, N'F2017075', CAST(141.23 AS Decimal(18, 2)), 0, 3)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (6, N'F2017076', CAST(70.10 AS Decimal(18, 2)), 1, 3)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (7, N'F2017077', CAST(28.78 AS Decimal(18, 2)), 0, 4)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (8, N'F2017078', CAST(18.84 AS Decimal(18, 2)), 1, 4)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (9, N'F2017079', CAST(30.05 AS Decimal(18, 2)), 0, 4)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (10, N'F20170710', CAST(41.26 AS Decimal(18, 2)), 1, 5)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (11, N'F20170711', CAST(173.93 AS Decimal(18, 2)), 0, 5)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (12, N'F20170712', CAST(159.12 AS Decimal(18, 2)), 1, 6)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (13, N'F20170713', CAST(135.51 AS Decimal(18, 2)), 0, 7)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (14, N'F20170714', CAST(16.54 AS Decimal(18, 2)), 1, 8)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (15, N'F20170715', CAST(39.64 AS Decimal(18, 2)), 0, 8)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (16, N'F20170716', CAST(93.68 AS Decimal(18, 2)), 1, 8)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (17, N'F20170717', CAST(68.49 AS Decimal(18, 2)), 0, 9)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (18, N'F20170718', CAST(118.47 AS Decimal(18, 2)), 1, 9)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (19, N'F20170719', CAST(30.21 AS Decimal(18, 2)), 0, 9)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (20, N'F20170720', CAST(5.31 AS Decimal(18, 2)), 1, 9)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (21, N'F20170721', CAST(40.73 AS Decimal(18, 2)), 0, 10)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (22, N'F20170722', CAST(85.73 AS Decimal(18, 2)), 1, 10)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (23, N'F20170723', CAST(186.98 AS Decimal(18, 2)), 0, 10)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (24, N'F20170724', CAST(0.85 AS Decimal(18, 2)), 1, 11)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (25, N'F20170725', CAST(60.88 AS Decimal(18, 2)), 0, 11)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (26, N'F20170726', CAST(103.49 AS Decimal(18, 2)), 1, 11)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (27, N'F20170727', CAST(7.52 AS Decimal(18, 2)), 0, 12)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (28, N'F20170728', CAST(78.70 AS Decimal(18, 2)), 1, 12)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (29, N'F20170729', CAST(9.82 AS Decimal(18, 2)), 0, 12)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (30, N'F20170730', CAST(103.74 AS Decimal(18, 2)), 1, 13)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (31, N'F20170731', CAST(25.69 AS Decimal(18, 2)), 0, 13)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (32, N'F20170732', CAST(28.55 AS Decimal(18, 2)), 1, 13)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (33, N'F20170733', CAST(112.77 AS Decimal(18, 2)), 0, 14)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (34, N'F20170734', CAST(133.19 AS Decimal(18, 2)), 1, 14)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (35, N'F20170735', CAST(214.81 AS Decimal(18, 2)), 0, 14)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (36, N'F20170736', CAST(58.39 AS Decimal(18, 2)), 1, 14)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (37, N'F20170737', CAST(17.63 AS Decimal(18, 2)), 0, 15)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (38, N'F20170738', CAST(9.61 AS Decimal(18, 2)), 1, 15)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (39, N'F20170739', CAST(39.90 AS Decimal(18, 2)), 0, 16)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (40, N'F20170740', CAST(23.03 AS Decimal(18, 2)), 1, 16)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (41, N'F20170741', CAST(69.41 AS Decimal(18, 2)), 0, 16)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (42, N'F20170742', CAST(76.01 AS Decimal(18, 2)), 1, 16)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (43, N'F20170743', CAST(172.71 AS Decimal(18, 2)), 0, 17)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (44, N'F20170744', CAST(9.16 AS Decimal(18, 2)), 1, 17)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (45, N'F20170745', CAST(24.92 AS Decimal(18, 2)), 0, 17)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (46, N'F20170746', CAST(49.86 AS Decimal(18, 2)), 1, 18)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (47, N'F20170747', CAST(99.45 AS Decimal(18, 2)), 0, 19)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (48, N'F20170748', CAST(58.12 AS Decimal(18, 2)), 1, 19)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (49, N'F20170749', CAST(41.36 AS Decimal(18, 2)), 0, 19)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (50, N'F20170750', CAST(16.15 AS Decimal(18, 2)), 1, 20)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (51, N'F20170751', CAST(213.17 AS Decimal(18, 2)), 0, 20)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (52, N'F20170752', CAST(12.99 AS Decimal(18, 2)), 1, 20)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (53, N'F20170753', CAST(71.80 AS Decimal(18, 2)), 0, 21)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (54, N'F20170754', CAST(114.41 AS Decimal(18, 2)), 1, 21)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (55, N'F20170755', CAST(23.69 AS Decimal(18, 2)), 0, 21)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (56, N'F20170756', CAST(85.24 AS Decimal(18, 2)), 1, 21)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (57, N'F20170757', CAST(186.72 AS Decimal(18, 2)), 0, 22)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (58, N'F20170758', CAST(143.73 AS Decimal(18, 2)), 1, 23)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (59, N'F20170759', CAST(45.31 AS Decimal(18, 2)), 0, 24)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (60, N'F20170760', CAST(40.96 AS Decimal(18, 2)), 1, 24)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (61, N'F20170761', CAST(51.22 AS Decimal(18, 2)), 0, 24)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (62, N'F20170762', CAST(66.75 AS Decimal(18, 2)), 1, 24)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (63, N'F20170763', CAST(32.33 AS Decimal(18, 2)), 0, 25)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (64, N'F20170764', CAST(66.22 AS Decimal(18, 2)), 1, 25)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (65, N'F20170765', CAST(55.76 AS Decimal(18, 2)), 0, 25)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (66, N'F20170766', CAST(44.28 AS Decimal(18, 2)), 1, 26)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (67, N'F20170767', CAST(37.80 AS Decimal(18, 2)), 0, 26)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (68, N'F20170768', CAST(97.52 AS Decimal(18, 2)), 1, 26)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (69, N'F20170769', CAST(41.13 AS Decimal(18, 2)), 0, 26)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (70, N'F20170770', CAST(82.19 AS Decimal(18, 2)), 1, 27)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (71, N'F20170771', CAST(48.72 AS Decimal(18, 2)), 0, 27)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (72, N'F20170772', CAST(20.62 AS Decimal(18, 2)), 1, 27)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (73, N'F20170773', CAST(35.08 AS Decimal(18, 2)), 0, 27)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (74, N'F20170774', CAST(86.37 AS Decimal(18, 2)), 1, 28)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (75, N'F20170775', CAST(32.86 AS Decimal(18, 2)), 0, 28)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (76, N'F20170776', CAST(83.94 AS Decimal(18, 2)), 1, 28)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (77, N'F20170777', CAST(3.77 AS Decimal(18, 2)), 0, 29)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (78, N'F20170778', CAST(96.40 AS Decimal(18, 2)), 1, 30)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (79, N'F20170779', CAST(22.88 AS Decimal(18, 2)), 0, 30)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (80, N'F20170780', CAST(15.35 AS Decimal(18, 2)), 1, 30)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (81, N'F20170781', CAST(44.39 AS Decimal(18, 2)), 0, 30)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (82, N'F20170782', CAST(233.75 AS Decimal(18, 2)), 1, 31)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (83, N'F20170783', CAST(58.54 AS Decimal(18, 2)), 0, 31)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (84, N'F20170784', CAST(35.09 AS Decimal(18, 2)), 1, 31)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (85, N'F20170785', CAST(7.47 AS Decimal(18, 2)), 0, 32)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (86, N'F20170786', CAST(32.81 AS Decimal(18, 2)), 1, 32)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (87, N'F20170787', CAST(8.83 AS Decimal(18, 2)), 0, 32)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (88, N'F20170788', CAST(40.19 AS Decimal(18, 2)), 1, 32)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (89, N'F20170789', CAST(7.50 AS Decimal(18, 2)), 0, 33)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (90, N'F20170790', CAST(32.98 AS Decimal(18, 2)), 1, 33)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (91, N'F20170791', CAST(105.73 AS Decimal(18, 2)), 0, 33)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (92, N'F20170792', CAST(55.23 AS Decimal(18, 2)), 1, 33)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (93, N'F20170793', CAST(41.04 AS Decimal(18, 2)), 0, 34)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (94, N'F20170794', CAST(69.54 AS Decimal(18, 2)), 1, 34)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (95, N'F20170795', CAST(10.86 AS Decimal(18, 2)), 0, 34)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (96, N'F20170796', CAST(90.96 AS Decimal(18, 2)), 1, 35)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (97, N'F20170797', CAST(35.45 AS Decimal(18, 2)), 0, 36)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (98, N'F20170798', CAST(10.83 AS Decimal(18, 2)), 1, 36)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (99, N'F20170799', CAST(177.91 AS Decimal(18, 2)), 0, 36)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (100, N'F201707100', CAST(160.74 AS Decimal(18, 2)), 1, 36)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (101, N'F201707101', CAST(8.23 AS Decimal(18, 2)), 0, 37)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (102, N'F201707102', CAST(13.54 AS Decimal(18, 2)), 1, 37)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (103, N'F201707103', CAST(38.71 AS Decimal(18, 2)), 0, 37)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (104, N'F201707104', CAST(59.82 AS Decimal(18, 2)), 1, 37)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (105, N'F201707105', CAST(3.03 AS Decimal(18, 2)), 0, 38)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (106, N'F201707106', CAST(9.36 AS Decimal(18, 2)), 1, 38)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (107, N'F201707107', CAST(41.12 AS Decimal(18, 2)), 0, 38)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (108, N'F201707108', CAST(25.95 AS Decimal(18, 2)), 1, 38)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (109, N'F201707109', CAST(136.57 AS Decimal(18, 2)), 0, 39)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (110, N'F201707110', CAST(121.83 AS Decimal(18, 2)), 1, 39)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (111, N'F201707111', CAST(135.29 AS Decimal(18, 2)), 0, 39)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (112, N'F201707112', CAST(98.22 AS Decimal(18, 2)), 1, 39)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (113, N'F201707113', CAST(20.28 AS Decimal(18, 2)), 0, 40)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (114, N'F201707114', CAST(85.79 AS Decimal(18, 2)), 1, 40)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (115, N'F201707115', CAST(168.43 AS Decimal(18, 2)), 0, 40)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (116, N'F201707116', CAST(125.09 AS Decimal(18, 2)), 1, 41)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (117, N'F201707117', CAST(42.04 AS Decimal(18, 2)), 0, 41)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (118, N'F201707118', CAST(4.54 AS Decimal(18, 2)), 1, 41)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (119, N'F201707119', CAST(114.46 AS Decimal(18, 2)), 0, 41)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (120, N'F201707120', CAST(65.58 AS Decimal(18, 2)), 1, 42)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (121, N'F201707121', CAST(76.54 AS Decimal(18, 2)), 0, 42)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (122, N'F201707122', CAST(39.98 AS Decimal(18, 2)), 1, 43)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (123, N'F201707123', CAST(6.59 AS Decimal(18, 2)), 0, 44)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (124, N'F201707124', CAST(0.29 AS Decimal(18, 2)), 1, 44)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (125, N'F201707125', CAST(38.75 AS Decimal(18, 2)), 0, 44)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (126, N'F201707126', CAST(49.38 AS Decimal(18, 2)), 1, 44)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (127, N'F201707127', CAST(33.77 AS Decimal(18, 2)), 0, 45)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (128, N'F201707128', CAST(57.84 AS Decimal(18, 2)), 1, 45)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (129, N'F201707129', CAST(19.00 AS Decimal(18, 2)), 0, 45)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (130, N'F201707130', CAST(7.08 AS Decimal(18, 2)), 1, 46)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (131, N'F201707131', CAST(44.92 AS Decimal(18, 2)), 0, 46)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (132, N'F201707132', CAST(140.81 AS Decimal(18, 2)), 1, 46)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (133, N'F201707133', CAST(9.19 AS Decimal(18, 2)), 0, 47)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (134, N'F201707134', CAST(6.72 AS Decimal(18, 2)), 1, 47)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (135, N'F201707135', CAST(57.28 AS Decimal(18, 2)), 0, 47)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (136, N'F201707136', CAST(40.72 AS Decimal(18, 2)), 1, 48)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (137, N'F201707137', CAST(8.38 AS Decimal(18, 2)), 0, 48)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (138, N'F201707138', CAST(138.28 AS Decimal(18, 2)), 1, 49)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (139, N'F201707139', CAST(228.36 AS Decimal(18, 2)), 0, 49)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (140, N'F201707140', CAST(27.10 AS Decimal(18, 2)), 1, 49)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (141, N'F201707141', CAST(54.27 AS Decimal(18, 2)), 0, 50)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (142, N'F201707142', CAST(53.74 AS Decimal(18, 2)), 1, 50)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (143, N'F201707143', CAST(143.39 AS Decimal(18, 2)), 0, 50)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (144, N'F201707144', CAST(80.28 AS Decimal(18, 2)), 1, 51)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (145, N'F201707145', CAST(4.84 AS Decimal(18, 2)), 0, 51)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (146, N'F201707146', CAST(32.03 AS Decimal(18, 2)), 1, 52)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (147, N'F201707147', CAST(7.42 AS Decimal(18, 2)), 0, 52)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (148, N'F201707148', CAST(135.29 AS Decimal(18, 2)), 1, 52)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (149, N'F201707149', CAST(16.04 AS Decimal(18, 2)), 0, 52)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (150, N'F201707150', CAST(38.64 AS Decimal(18, 2)), 1, 53)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (151, N'F201707151', CAST(192.55 AS Decimal(18, 2)), 0, 53)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (152, N'F201707152', CAST(35.86 AS Decimal(18, 2)), 1, 53)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (153, N'F201707153', CAST(4.43 AS Decimal(18, 2)), 0, 54)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (154, N'F201707154', CAST(2.80 AS Decimal(18, 2)), 1, 55)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (155, N'F201707155', CAST(6.65 AS Decimal(18, 2)), 0, 56)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (156, N'F201707156', CAST(9.91 AS Decimal(18, 2)), 1, 57)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (157, N'F201707157', CAST(84.86 AS Decimal(18, 2)), 0, 57)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (158, N'F201707158', CAST(56.36 AS Decimal(18, 2)), 1, 58)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (159, N'F201707159', CAST(25.98 AS Decimal(18, 2)), 0, 58)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (160, N'F201707160', CAST(23.00 AS Decimal(18, 2)), 1, 58)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (161, N'F201707161', CAST(63.47 AS Decimal(18, 2)), 0, 58)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (162, N'F201707162', CAST(26.21 AS Decimal(18, 2)), 1, 59)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (163, N'F201707163', CAST(54.10 AS Decimal(18, 2)), 0, 59)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (164, N'F201707164', CAST(13.20 AS Decimal(18, 2)), 1, 60)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (165, N'F201707165', CAST(157.69 AS Decimal(18, 2)), 0, 61)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (166, N'F201707166', CAST(41.67 AS Decimal(18, 2)), 1, 61)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (167, N'F201707167', CAST(226.75 AS Decimal(18, 2)), 0, 62)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (168, N'F201707168', CAST(9.91 AS Decimal(18, 2)), 1, 63)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (169, N'F201707169', CAST(55.01 AS Decimal(18, 2)), 0, 63)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (170, N'F201707170', CAST(57.08 AS Decimal(18, 2)), 1, 63)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (171, N'F201707171', CAST(21.61 AS Decimal(18, 2)), 0, 63)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (172, N'F201707172', CAST(14.08 AS Decimal(18, 2)), 1, 64)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (173, N'F201707173', CAST(84.23 AS Decimal(18, 2)), 0, 64)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (174, N'F201707174', CAST(113.51 AS Decimal(18, 2)), 1, 64)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (175, N'F201707175', CAST(88.16 AS Decimal(18, 2)), 0, 64)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (176, N'F201707176', CAST(173.81 AS Decimal(18, 2)), 1, 65)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (177, N'F201707177', CAST(34.02 AS Decimal(18, 2)), 0, 65)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (178, N'F201707178', CAST(42.73 AS Decimal(18, 2)), 1, 65)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (179, N'F201707179', CAST(95.70 AS Decimal(18, 2)), 0, 65)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (180, N'F201707180', CAST(127.48 AS Decimal(18, 2)), 1, 66)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (181, N'F201707181', CAST(205.77 AS Decimal(18, 2)), 0, 66)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (182, N'F201707182', CAST(28.04 AS Decimal(18, 2)), 1, 66)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (183, N'F201707183', CAST(35.60 AS Decimal(18, 2)), 0, 67)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (184, N'F201707184', CAST(43.92 AS Decimal(18, 2)), 1, 67)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (185, N'F201707185', CAST(174.58 AS Decimal(18, 2)), 0, 68)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (186, N'F201707186', CAST(2.88 AS Decimal(18, 2)), 1, 68)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (187, N'F201707187', CAST(170.94 AS Decimal(18, 2)), 0, 68)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (188, N'F201707188', CAST(49.16 AS Decimal(18, 2)), 1, 69)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (189, N'F201707189', CAST(96.63 AS Decimal(18, 2)), 0, 69)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (190, N'F201707190', CAST(0.15 AS Decimal(18, 2)), 1, 70)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (191, N'F201707191', CAST(0.45 AS Decimal(18, 2)), 0, 70)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (192, N'F201707192', CAST(5.36 AS Decimal(18, 2)), 1, 71)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (193, N'F201707193', CAST(42.57 AS Decimal(18, 2)), 0, 71)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (194, N'F201707194', CAST(2.55 AS Decimal(18, 2)), 1, 71)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (195, N'F201707195', CAST(122.60 AS Decimal(18, 2)), 0, 72)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (196, N'F201707196', CAST(19.39 AS Decimal(18, 2)), 1, 72)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (197, N'F201707197', CAST(26.61 AS Decimal(18, 2)), 0, 73)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (198, N'F201707198', CAST(89.29 AS Decimal(18, 2)), 1, 73)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (199, N'F201707199', CAST(42.32 AS Decimal(18, 2)), 0, 74)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (200, N'F201707200', CAST(8.33 AS Decimal(18, 2)), 1, 74)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (201, N'F201707201', CAST(8.80 AS Decimal(18, 2)), 0, 75)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (202, N'F201707202', CAST(51.80 AS Decimal(18, 2)), 1, 76)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (203, N'F201707203', CAST(91.03 AS Decimal(18, 2)), 0, 77)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (204, N'F201707204', CAST(11.49 AS Decimal(18, 2)), 1, 77)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (205, N'F201707205', CAST(39.58 AS Decimal(18, 2)), 0, 78)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (206, N'F201707206', CAST(17.89 AS Decimal(18, 2)), 1, 78)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (207, N'F201707207', CAST(21.48 AS Decimal(18, 2)), 0, 79)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (208, N'F201707208', CAST(33.01 AS Decimal(18, 2)), 1, 79)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (209, N'F201707209', CAST(1.06 AS Decimal(18, 2)), 0, 79)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (210, N'F201707210', CAST(5.38 AS Decimal(18, 2)), 1, 80)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (211, N'F201707211', CAST(127.63 AS Decimal(18, 2)), 0, 80)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (212, N'F201707212', CAST(171.70 AS Decimal(18, 2)), 1, 81)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (213, N'F201707213', CAST(16.75 AS Decimal(18, 2)), 0, 81)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (214, N'F201707214', CAST(3.30 AS Decimal(18, 2)), 1, 81)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (215, N'F201707215', CAST(6.60 AS Decimal(18, 2)), 0, 81)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (216, N'F201707216', CAST(47.87 AS Decimal(18, 2)), 1, 82)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (217, N'F201707217', CAST(116.56 AS Decimal(18, 2)), 0, 82)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (218, N'F201707218', CAST(112.93 AS Decimal(18, 2)), 1, 82)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (219, N'F201707219', CAST(198.44 AS Decimal(18, 2)), 0, 82)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (220, N'F201707220', CAST(24.20 AS Decimal(18, 2)), 1, 83)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (221, N'F201707221', CAST(129.54 AS Decimal(18, 2)), 0, 83)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (222, N'F201707222', CAST(1.99 AS Decimal(18, 2)), 1, 83)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (223, N'F201707223', CAST(192.45 AS Decimal(18, 2)), 0, 84)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (224, N'F201707224', CAST(133.14 AS Decimal(18, 2)), 1, 85)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (225, N'F201707225', CAST(3.88 AS Decimal(18, 2)), 0, 85)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (226, N'F201707226', CAST(1.17 AS Decimal(18, 2)), 1, 86)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (227, N'F201707227', CAST(87.66 AS Decimal(18, 2)), 0, 86)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (228, N'F201707228', CAST(0.44 AS Decimal(18, 2)), 1, 86)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (229, N'F201707229', CAST(52.02 AS Decimal(18, 2)), 0, 87)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (230, N'F201707230', CAST(66.37 AS Decimal(18, 2)), 1, 88)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (231, N'F201707231', CAST(136.76 AS Decimal(18, 2)), 0, 88)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (232, N'F201707232', CAST(55.46 AS Decimal(18, 2)), 1, 88)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (233, N'F201707233', CAST(56.90 AS Decimal(18, 2)), 0, 88)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (234, N'F201707234', CAST(37.57 AS Decimal(18, 2)), 1, 89)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (235, N'F201707235', CAST(3.85 AS Decimal(18, 2)), 0, 89)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (236, N'F201707236', CAST(5.90 AS Decimal(18, 2)), 1, 90)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (237, N'F201707237', CAST(26.36 AS Decimal(18, 2)), 0, 90)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (238, N'F201707238', CAST(34.77 AS Decimal(18, 2)), 1, 90)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (239, N'F201707239', CAST(15.55 AS Decimal(18, 2)), 0, 90)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (240, N'F201707240', CAST(90.80 AS Decimal(18, 2)), 1, 91)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (241, N'F201707241', CAST(38.64 AS Decimal(18, 2)), 0, 91)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (242, N'F201707242', CAST(93.46 AS Decimal(18, 2)), 1, 92)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (243, N'F201707243', CAST(11.60 AS Decimal(18, 2)), 0, 93)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (244, N'F201707244', CAST(102.19 AS Decimal(18, 2)), 1, 93)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (245, N'F201707245', CAST(46.11 AS Decimal(18, 2)), 0, 93)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (246, N'F201707246', CAST(22.19 AS Decimal(18, 2)), 1, 93)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (247, N'F201707247', CAST(15.89 AS Decimal(18, 2)), 0, 94)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (248, N'F201707248', CAST(117.48 AS Decimal(18, 2)), 1, 94)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (249, N'F201707249', CAST(39.78 AS Decimal(18, 2)), 0, 94)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (250, N'F201707250', CAST(130.00 AS Decimal(18, 2)), 1, 94)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (251, N'F201707251', CAST(11.95 AS Decimal(18, 2)), 0, 95)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (252, N'F201707252', CAST(25.59 AS Decimal(18, 2)), 1, 95)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (253, N'F201707253', CAST(80.55 AS Decimal(18, 2)), 0, 95)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (254, N'F201707254', CAST(23.41 AS Decimal(18, 2)), 1, 96)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (255, N'F201707255', CAST(141.59 AS Decimal(18, 2)), 0, 96)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (256, N'F201707256', CAST(73.31 AS Decimal(18, 2)), 1, 97)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (257, N'F201707257', CAST(4.27 AS Decimal(18, 2)), 0, 98)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (258, N'F201707258', CAST(97.67 AS Decimal(18, 2)), 1, 98)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (259, N'F201707259', CAST(46.50 AS Decimal(18, 2)), 0, 98)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (260, N'F201707260', CAST(115.79 AS Decimal(18, 2)), 1, 98)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (261, N'F201707261', CAST(140.45 AS Decimal(18, 2)), 0, 99)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (262, N'F201707262', CAST(10.38 AS Decimal(18, 2)), 1, 99)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (263, N'F201707263', CAST(12.91 AS Decimal(18, 2)), 0, 99)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (264, N'F201707264', CAST(107.92 AS Decimal(18, 2)), 1, 99)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (265, N'F201707265', CAST(67.03 AS Decimal(18, 2)), 0, 100)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (266, N'F201707266', CAST(84.01 AS Decimal(18, 2)), 1, 100)
GO
INSERT [Factures] ([Id], [Numero], [Montant], [Payee], [ClientId]) VALUES (267, N'F201707267', CAST(96.30 AS Decimal(18, 2)), 0, 100)
GO
SET IDENTITY_INSERT [Factures] OFF
GO
ALTER TABLE [Factures]  WITH CHECK ADD  CONSTRAINT [FK_Factures_Clients] FOREIGN KEY([ClientId])
REFERENCES [Clients] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [Factures] CHECK CONSTRAINT [FK_Factures_Clients]
GO
