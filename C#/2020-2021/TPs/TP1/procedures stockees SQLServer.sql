--DROP PROCEDURE SPIngredient_Append
-- GO
CREATE PROCEDURE SPIngredient_Append(
	@LIBELLE           varchar(20),
	@QUANTITE               int,
	@ID					  int OUTPUT
	)
AS
BEGIN	
	DECLARE @CODEERREUR int=0
	
	INSERT INTO t_e_Ingredient_abo (
		LIBELLE, 
		QUANTITE, 
		)
	VALUES(
		@LIBELLE,
		@QUANTITE,
	)

	SET @CODEERREUR = @@ERROR /*Récupération du numéro d'erreur via la variable d'environnement @@ERROR*/
	
	IF @CODEERREUR<>0
		SET @ID=-1
	ELSE
		BEGIN
			/*Récupération de l'identifiant*/
			SELECT @ID=@@IDENTITY;
		END
END
GO

/*TEST DE LA PROCEDURE EN T-SQL*/

/*
DECLARE @RETOUR int
EXEC SPIngredient_Append 
	'BANANAE'
	'2, 
	@RETOUR OUTPUT
SELECT @RETOUR
*/