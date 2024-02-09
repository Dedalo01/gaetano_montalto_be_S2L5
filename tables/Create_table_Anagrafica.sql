USE [progettoSettimanaleS2L5]
GO

/****** Object:  Table [dbo].[Anagrafica]    Script Date: 09/02/2024 13:51:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Anagrafica](
	[IdAnagrafica] [int] IDENTITY(1,1) NOT NULL,
	[Cognome] [nvarchar](30) NOT NULL,
	[Nome] [nvarchar](30) NOT NULL,
	[Indirizzo] [nvarchar](50) NULL,
	[Citta] [nvarchar](20) NULL,
	[CAP] [char](5) NOT NULL,
	[Cod_Fisc] [char](16) NOT NULL,
 CONSTRAINT [PK_Anagrafica] PRIMARY KEY CLUSTERED 
(
	[IdAnagrafica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

