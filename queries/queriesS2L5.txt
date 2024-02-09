--1
SELECT count(*) AS Totale_Verbali
FROM Verbale

--2
SELECT AnagraficaId, Cognome, Nome, count(*) AS Totale_Verbali
FROM Verbale
INNER JOIN Anagrafica ON IdAnagrafica = AnagraficaId
GROUP BY AnagraficaId, Cognome, Nome

--3
SELECT TipoViolazioneId, Descrizione, count(*) AS Totale_Verbali
FROM Verbale
INNER JOIN TipoViolazione ON IdViolazione = TipoViolazioneId
GROUP BY TipoViolazioneId, Descrizione

--4
SELECT AnagraficaId, Cognome, Nome, sum(DecurtamentoPunti) AS Totale_Punti_Decurtati
FROM Verbale
RIGHT JOIN Anagrafica ON IdAnagrafica = AnagraficaId
GROUP BY AnagraficaId, Cognome, Nome

--5
SELECT Cognome, Nome, DataViolazione, IndirizzoViolazione, Importo, DecurtamentoPunti
FROM Anagrafica
INNER JOIN Verbale ON AnagraficaId = IdAnagrafica
WHERE Citta = 'Palermo'

--6
SELECT Cognome, Nome,  Indirizzo, DataViolazione, Importo, DecurtamentoPunti
FROM Anagrafica
INNER JOIN Verbale ON AnagraficaId = IdAnagrafica
WHERE DataViolazione BETWEEN '20090201' AND '20090731'

--7
SELECT IdAnagrafica, Cognome, Nome, sum(Importo) AS Totale_Da_Pagare
FROM Anagrafica
LEFT JOIN Verbale ON AnagraficaId = IdAnagrafica
GROUP BY IdAnagrafica, Cognome, Nome

--8
SELECT * FROM Anagrafica WHERE Citta = 'palermo'

--9
DECLARE @DataSpecifica VARCHAR(30)
SET @DataSpecifica = '20091215'

SELECT DataViolazione, Importo, DecurtamentoPunti
FROM Verbale
WHERE DataViolazione = @DataSpecifica

--10
SELECT Nominativo_Agente, count(*) AS Violazioni_Contestate
FROM Verbale
GROUP BY Nominativo_Agente

--11
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti
FROM Verbale
LEFT JOIN Anagrafica ON IdAnagrafica = AnagraficaId
WHERE DecurtamentoPunti > 5

--12
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti
FROM Verbale
LEFT JOIN Anagrafica ON IdAnagrafica = AnagraficaId
WHERE Importo > 400