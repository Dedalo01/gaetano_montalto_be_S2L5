--1
CREATE PROCEDURE Search_For_Year
	@Year CHAR(4)

AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	FROM Verbale
	WHERE DataViolazione BETWEEN @Year + '0101' AND @Year + '1231'

END
GO
