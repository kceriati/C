-- DROP PROCEDURE SPVirement_Append
-- GO
CREATE PROCEDURE SPVirement_Append(
	@IDCOMPTEDEBIT        	int,
	@IDCOMPTECREDIT       	int,
	@MONTANT				float,
	@RETOUR					int OUTPUT
	)
AS
BEGIN
	BEGIN TRANSACTION;
	DECLARE @error INT=0;
	
	UPDATE compte SET solde = solde-@MONTANT WHERE idcompte=@IDCOMPTEDEBIT; 
	SET @error = @error + @@error; 
	
	UPDATE compte SET solde = solde+@MONTANT WHERE idcompte=@IDCOMPTECREDIT; 
	SET @error = @error + @@error; 
	
	INSERT INTO virement(idcomptedebit, idcomptecredit, datetransaction, montant)
	VALUES (@IDCOMPTEDEBIT, @IDCOMPTECREDIT, getdate(), @MONTANT);
	SET @error = @error + @@error;
	
	IF @error=0
		BEGIN
			COMMIT
			SET @RETOUR=1
		END 
	ELSE
		BEGIN
			ROLLBACK
			SET @RETOUR=0
		END
END


/*TEST DE LA PROCEDURE EN T-SQL*/

/*
DECLARE @RET int
EXEC SPVirement_Append 
	1234567, 
	2345678, 
	500,
	@RET OUTPUT
SELECT @RET
*/