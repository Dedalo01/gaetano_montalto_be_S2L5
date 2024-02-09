--2
CREATE PROCEDURE Totale_Punti_Decurtati_Per_Data
	@Date VARCHAR(30)

AS
BEGIN
	SET NOCOUNT ON

	SELECT sum(DecurtamentoPunti) AS Totale_Punti_Decurtati
	FROM Verbale
	WHERE DataViolazione = @Date

END
GO
