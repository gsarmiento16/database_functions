USE [test]
GO

/****** Object:  Table [dbo].[Lineal]    Script Date: 10/07/2018 13:38:33 ******/
DROP TABLE [dbo].[Lineal]
GO

/****** Object:  Table [dbo].[Lineal]    Script Date: 10/07/2018 13:38:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Lineal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Value] [varchar](300) NULL,
	[Group] [varchar](50) NULL
) ON [PRIMARY]
GO



select * from
(
SELECT Code, [Value] FROM Lineal) as src
Pivot (
	Max([Value])
	for [Code] in ([Lang],[Color], [Sign])
) piv;