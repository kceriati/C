if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Virement') and o.name = 'fk_virement_comptedebit')
alter table Virement
   drop constraint fk_virement_comptedebit
go
if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Virement') and o.name = 'fk_virement_comptecredit')
alter table Virement
   drop constraint fk_virement_comptecredit
go
if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Operation') and o.name = 'fk_operation_compte')
alter table Operation
   drop constraint fk_operation_compte
go

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Virement]') AND type in (N'U'))
DROP TABLE [dbo].[Virement];
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Operation]') AND type in (N'U'))
DROP TABLE [dbo].[Operation];
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Compte]') AND type in (N'U'))
DROP TABLE [dbo].[Compte];
IF EXISTS (SELECT * FROM sys.views WHERE object_id = object_id(N'dbo.vComptes'))
DROP VIEW dbo.vComptes;
IF EXISTS (SELECT * FROM sys.views WHERE object_id = object_id(N'dbo.vOperations'))
DROP VIEW dbo.vOperations;
IF EXISTS (SELECT * FROM sys.views WHERE object_id = object_id(N'dbo.vVirements'))
DROP VIEW dbo.vVirements;

Create table Compte (
	IdCompte int not null primary key,
	Solde numeric(10,2) not null
)
go

Create table Virement (
	IdTransaction int identity(1,1) primary key,
	IdCompteDebit int not null,
	IdCompteCredit int not null,
	DateTransaction datetime not null,
	Montant numeric(10,2) not null
)
go

Create table Operation (
	IdOperation int identity(1,1) primary key,
	DateOperation DateTime not null,
	IdCompte int not null,
	TypeOperation varchar(10) not null check (TypeOperation in ('Dépôt', 'Retrait')),
	Montant numeric(10,2) not null
);
go	

-- VUES
CREATE VIEW vComptes
AS
SELECT IdCompte, Solde
FROM Compte
go

CREATE VIEW vOperations
AS
SELECT IdOperation, DateOperation, IdCompte, TypeOperation, Montant
FROM Operation
go

CREATE VIEW vVirements
AS
SELECT IdTransaction, IdCompteDebit, IdCompteCredit, DateTransaction, Montant
FROM Virement
go

-- FK
alter table Operation add constraint fk_operation_compte
	foreign key (IdCompte) references compte(Idcompte);
alter table Virement add constraint fk_virement_comptedebit
	foreign key (IdCompteDebit) references compte(IdCompte);
alter table Virement add constraint fk_virement_comptecredit
	foreign key (IdCompteCredit) references Compte(IdCompte);

-- INSERT
insert into Compte (idCompte, solde) values (1234567, 1000);
insert into Compte (idCompte, solde) values (2345678, 2000);
insert into Compte (idCompte, solde) values (3456789, 0);

insert into Operation (idCompte, dateOperation, typeOperation, montant) values (1234567, getdate(), 'Dépôt', 1000);
insert into Operation (idCompte, dateOperation, typeOperation, montant) values (1234567, getdate(), 'Retrait', 500);

update Compte set solde = 1500 where idcompte = 1234567;
