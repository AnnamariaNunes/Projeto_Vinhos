USE master
GO
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Vinhos') 
	DROP DATABASE Vinhos
GO
CREATE DATABASE Vinhos
GO
USE Vinhos
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](250) NOT NULL,
	[Caracteristicas] [nvarchar](1000) NULL,
 CONSTRAINT [pkCasta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enologo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](250) NOT NULL,
	[Instagram] [nvarchar](150) NULL,
 CONSTRAINT [pkEnologo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](250) NOT NULL,
	[Morada] [nvarchar](500) NOT NULL,
	[CodigoPostal] [varchar](8) NULL,
	[Localidade] [nvarchar](250) NULL,
	[Telefone] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[URL] [nvarchar](150) NULL,
 CONSTRAINT [pkProdutor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regiao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
	[Descricao] [nvarchar](1000) NULL,
 CONSTRAINT [pkRegiao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
 CONSTRAINT [pkTipo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador](
	[UserId] [varchar](50) NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[DataNascimento] [datetime2](7) NULL,
 CONSTRAINT [pkUtilizador] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vinho](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](250) NOT NULL,
	[Foto] [nvarchar](200) NULL,
	[Regiao] [int] NULL,
	[Produtor] [int] NULL,
	[Enologo] [int] NULL,
	[Tipo] [int] NULL,
	[Volume] [decimal](4, 2) NULL,
	[TeorAlcoolico] [decimal](4, 2) NULL,
	[Ano] [int] NULL,
	[Utilizador] [varchar](50) NULL,
 CONSTRAINT [pkVinho] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VinhoCasta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Vinho] [int] NULL,
	[Casta] [int] NULL,
 CONSTRAINT [pkVinhoCasta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VinhoComentario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Vinho] [int] NULL,
	[Utilizador] [varchar](50) NULL,
	[Classificacao] [smallint] NULL,
	[Comentario] [nvarchar](1000) NULL,
 CONSTRAINT [pkVinhoComentário] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Casta] ON 
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (1, N'Tinta Roriz', NULL)
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (2, N'Touriga Franca', NULL)
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (3, N'Touriga Nacional', NULL)
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (4, N'Syrah', NULL)
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (5, N'Alfrocheiro', NULL)
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (6, N'Aragonez', NULL)
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (7, N'Tinta caiada', NULL)
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (8, N'Arinto', N' ')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (9, N'Antão Vaz', NULL)
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (10, N'Alvarinho', NULL)
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (11, N'Castelão', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (12, N'Encruzado', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (13, N'Trincadeira', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (14, N'Alicante Bouschet', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (15, N'Cabernet Sauvignon', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (16, N'Pinot Noir', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (17, N'Verdelho', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (18, N'Tinta Barroca', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (19, N'Tinto Cão', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (20, N'Fernão Pires', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (21, N'Bical', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (22, N'Jaen', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (23, N'Rufete', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (24, N'Sangiovese', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (25, N'Fonte Cal', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (26, N'Loureiro', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (27, N'Rabigato', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (28, N'Síria', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (29, N'Viosinho', N'')
GO
INSERT [dbo].[Casta] ([Id], [Nome], [Caracteristicas]) VALUES (30, N'Viosinho', N'')
GO
SET IDENTITY_INSERT [dbo].[Casta] OFF
GO
SET IDENTITY_INSERT [dbo].[Enologo] ON 
GO
INSERT [dbo].[Enologo] ([Id], [Nome], [Instagram]) VALUES (1, N'João Portugal Ramos', NULL)
GO
INSERT [dbo].[Enologo] ([Id], [Nome], [Instagram]) VALUES (2, N'Anselmo Mendes', NULL)
GO
INSERT [dbo].[Enologo] ([Id], [Nome], [Instagram]) VALUES (3, N'Susana Esteban', NULL)
GO
INSERT [dbo].[Enologo] ([Id], [Nome], [Instagram]) VALUES (4, N'Franscisco Olazabal', NULL)
GO
INSERT [dbo].[Enologo] ([Id], [Nome], [Instagram]) VALUES (5, N'Rita Marques', NULL)
GO
INSERT [dbo].[Enologo] ([Id], [Nome], [Instagram]) VALUES (6, N'Paulo Laureano', NULL)
GO
INSERT [dbo].[Enologo] ([Id], [Nome], [Instagram]) VALUES (7, N'Sandra Tavares da Silva', NULL)
GO
INSERT [dbo].[Enologo] ([Id], [Nome], [Instagram]) VALUES (8, N'Filipa Pato', NULL)
GO
INSERT [dbo].[Enologo] ([Id], [Nome], [Instagram]) VALUES (9, N'Carlos Campolargo', NULL)
GO
SET IDENTITY_INSERT [dbo].[Enologo] OFF
GO
SET IDENTITY_INSERT [dbo].[Produtor] ON 
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (1, N'Quinta do Vallado', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (2, N'Casa Ermelinda Freitas', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (3, N'Quinta Vale das Escadinhas', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (4, N'Quinta da Fata', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (5, N'Quinta da Pellada', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (6, N'Quinta de Lemos', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (7, N'Symington Family Estates', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (8, N'Casa Agrícola Roboredo Madeira', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (9, N'Quinta do Crasto', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (10, N'Tavfer Vinhos', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (11, N'Prats & Symington', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (12, N'Quinta de La Rosa', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (13, N'Real Companhia Velha', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (14, N'Fundação Eugénio de Almeida', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (15, N'Cortes de Cima', N'', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Produtor] ([Id], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [URL]) VALUES (16, N'Esporão', N'', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Produtor] OFF
GO
SET IDENTITY_INSERT [dbo].[Regiao] ON 
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (1, N'Alentejo', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (2, N'Bairrada', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (3, N'Dão', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (4, N'Douro', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (5, N'Lisboa', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (6, N'Setúbal', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (7, N'Alentejo', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (8, N'Bairrada', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (9, N'Dão', N'')
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (10, N'Douro', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (11, N'Lisboa', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (12, N'Setúbal', NULL)
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (13, N'Açores', N'')
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (14, N'Algarve', N'')
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (15, N'Douro Superior', N' ')
GO
INSERT [dbo].[Regiao] ([Id], [Nome], [Descricao]) VALUES (16, N'Palmela', N'Junto à Serra da Arrábida')
GO
SET IDENTITY_INSERT [dbo].[Regiao] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipo] ON 
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (1, N'Branco')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (2, N'Tinto')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (3, N'Rosé')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (4, N'Verde')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (5, N'Generoso')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (6, N'Espumante')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (7, N'Branco')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (8, N'Tinto')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (9, N'Rosé')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (10, N'Verde')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (11, N'Generoso')
GO
INSERT [dbo].[Tipo] ([Id], [Nome]) VALUES (12, N'Espumante')
GO
SET IDENTITY_INSERT [dbo].[Tipo] OFF
GO
ALTER TABLE [dbo].[Vinho]  WITH CHECK ADD  CONSTRAINT [fkVinhoEnologo] FOREIGN KEY([Enologo])
REFERENCES [dbo].[Enologo] ([Id])
GO
ALTER TABLE [dbo].[Vinho] CHECK CONSTRAINT [fkVinhoEnologo]
GO
ALTER TABLE [dbo].[Vinho]  WITH CHECK ADD  CONSTRAINT [fkVinhoProdutor] FOREIGN KEY([Produtor])
REFERENCES [dbo].[Produtor] ([Id])
GO
ALTER TABLE [dbo].[Vinho] CHECK CONSTRAINT [fkVinhoProdutor]
GO
ALTER TABLE [dbo].[Vinho]  WITH CHECK ADD  CONSTRAINT [fkVinhoRegiao] FOREIGN KEY([Regiao])
REFERENCES [dbo].[Regiao] ([Id])
GO
ALTER TABLE [dbo].[Vinho] CHECK CONSTRAINT [fkVinhoRegiao]
GO
ALTER TABLE [dbo].[Vinho]  WITH CHECK ADD  CONSTRAINT [fkVinhoTipo] FOREIGN KEY([Tipo])
REFERENCES [dbo].[Tipo] ([Id])
GO
ALTER TABLE [dbo].[Vinho] CHECK CONSTRAINT [fkVinhoTipo]
GO
ALTER TABLE [dbo].[Vinho]  WITH CHECK ADD  CONSTRAINT [fkVinhoUtilizador] FOREIGN KEY([Utilizador])
REFERENCES [dbo].[Utilizador] ([UserId])
GO
ALTER TABLE [dbo].[Vinho] CHECK CONSTRAINT [fkVinhoUtilizador]
GO
ALTER TABLE [dbo].[VinhoCasta]  WITH CHECK ADD  CONSTRAINT [fkCastaVinho] FOREIGN KEY([Casta])
REFERENCES [dbo].[Casta] ([Id])
GO
ALTER TABLE [dbo].[VinhoCasta] CHECK CONSTRAINT [fkCastaVinho]
GO
ALTER TABLE [dbo].[VinhoCasta]  WITH CHECK ADD  CONSTRAINT [fkVinhoCasta] FOREIGN KEY([Vinho])
REFERENCES [dbo].[Vinho] ([Id])
GO
ALTER TABLE [dbo].[VinhoCasta] CHECK CONSTRAINT [fkVinhoCasta]
GO
ALTER TABLE [dbo].[VinhoComentario]  WITH CHECK ADD  CONSTRAINT [fkVinhoComentarioUtilizador] FOREIGN KEY([Utilizador])
REFERENCES [dbo].[Utilizador] ([UserId])
GO
ALTER TABLE [dbo].[VinhoComentario] CHECK CONSTRAINT [fkVinhoComentarioUtilizador]
GO
ALTER TABLE [dbo].[VinhoComentario]  WITH CHECK ADD  CONSTRAINT [fkVinhoComentarioVinho] FOREIGN KEY([Vinho])
REFERENCES [dbo].[Vinho] ([Id])
GO
ALTER TABLE [dbo].[VinhoComentario] CHECK CONSTRAINT [fkVinhoComentarioVinho]
GO