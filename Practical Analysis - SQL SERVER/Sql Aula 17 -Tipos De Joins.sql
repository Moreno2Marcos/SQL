USE [AdventureWorks2017]
GO
/****** Object:  Table [dbo].[TabelaA]    Script Date: 3/17/2019 4:04:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaB]    Script Date: 3/17/2019 4:04:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaB](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nchar](30) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TabelaA] ON 
GO
INSERT [dbo].[TabelaA] ([id], [nome]) VALUES (1, N'Robo')
GO
INSERT [dbo].[TabelaA] ([id], [nome]) VALUES (2, N'Macaco')
GO
INSERT [dbo].[TabelaA] ([id], [nome]) VALUES (3, N'Samurai')
GO
INSERT [dbo].[TabelaA] ([id], [nome]) VALUES (4, N'Monitor')
GO
SET IDENTITY_INSERT [dbo].[TabelaA] OFF
GO
SET IDENTITY_INSERT [dbo].[TabelaB] ON 
GO
INSERT [dbo].[TabelaB] ([id], [nome]) VALUES (1, N'Espada')
GO
INSERT [dbo].[TabelaB] ([id], [nome]) VALUES (2, N'Robo')
GO
INSERT [dbo].[TabelaB] ([id], [nome]) VALUES (3, N'Mario')
GO
INSERT [dbo].[TabelaB] ([id], [nome]) VALUES (4, N'Samurai')
GO
SET IDENTITY_INSERT [dbo].[TabelaB] OFF
GO

-- LEFT OUTER JOIN = LEFT JOIN
SELECT *
FROM tabelaA
LEFT OUTER JOIN tabelaB
ON tabelaA.nome = tabelaB.nome;

-- INNER JOIN
SELECT *
FROM TabelaA
INNER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome;

--RIGHT OUTER JOIN = RIGHT JOIN
SELECT *
FROM TabelaA
RIGHT OUTER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome;

-- FULL OUTER JOIN = FULL JOIN
SELECT *
FROM TabelaA
FULL OUTER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome;

-- somente linhas da tabela B + interseção
SELECT *
FROM TabelaA
RIGHT OUTER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome
-- somente linhas da tabela B
SELECT *
FROM TabelaA
RIGHT OUTER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome
WHERE TabelaA.nome IS NULL;

-- somente linhas da tabela A + interseção
SELECT *
FROM TabelaA
LEFT OUTER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome
-- somente linhas da tabela A
SELECT *
FROM TabelaA
LEFT OUTER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome
WHERE TabelaB.nome IS NULL;

-- FULL OUTER JOIN sem INTERSEÇÃO
SELECT *
FROM TabelaA
FULL OUTER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome
WHERE TabelaA.nome IS NULL OR TabelaB.nome IS NULL;