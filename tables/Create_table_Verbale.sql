USE [progettoSettimanaleS2L5]
GO

/****** Object:  Table [dbo].[Verbale]    Script Date: 09/02/2024 13:52:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Verbale](
	[IdVerbale] [int] IDENTITY(1,1) NOT NULL,
	[DataViolazione] [smalldatetime] NOT NULL,
	[IndirizzoViolazione] [nvarchar](50) NULL,
	[Nominativo_Agente] [char](6) NOT NULL,
	[DataTrascrizioneVerbale] [smalldatetime] NULL,
	[Importo] [smallmoney] NOT NULL,
	[DecurtamentoPunti] [int] NULL,
	[AnagraficaId] [int] NOT NULL,
	[TipoViolazioneId] [int] NOT NULL,
 CONSTRAINT [PK_Verbale] PRIMARY KEY CLUSTERED 
(
	[IdVerbale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Verbale] ADD  CONSTRAINT [DF_Verbale_Importo]  DEFAULT ((0)) FOR [Importo]
GO

ALTER TABLE [dbo].[Verbale]  WITH CHECK ADD  CONSTRAINT [FK_Verbale_Anagrafica] FOREIGN KEY([AnagraficaId])
REFERENCES [dbo].[Anagrafica] ([IdAnagrafica])
GO

ALTER TABLE [dbo].[Verbale] CHECK CONSTRAINT [FK_Verbale_Anagrafica]
GO

ALTER TABLE [dbo].[Verbale]  WITH CHECK ADD  CONSTRAINT [FK_Verbale_TipoViolazione] FOREIGN KEY([TipoViolazioneId])
REFERENCES [dbo].[TipoViolazione] ([IdViolazione])
GO

ALTER TABLE [dbo].[Verbale] CHECK CONSTRAINT [FK_Verbale_TipoViolazione]
GO

