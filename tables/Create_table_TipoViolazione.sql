USE [progettoSettimanaleS2L5]
GO

/****** Object:  Table [dbo].[TipoViolazione]    Script Date: 09/02/2024 13:52:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TipoViolazione](
	[IdViolazione] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_TipoViolazione] PRIMARY KEY CLUSTERED 
(
	[IdViolazione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

