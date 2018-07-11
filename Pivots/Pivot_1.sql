USE [test]
GO


DROP TABLE [dbo].[Lineal]
GO
USE [test]
GO

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
SET IDENTITY_INSERT [dbo].[Lineal] ON 
GO
INSERT [dbo].[Lineal] ([Id], [Code], [Value], [Group]) VALUES (1, N'Lang', N'ES', N'ES')
GO
INSERT [dbo].[Lineal] ([Id], [Code], [Value], [Group]) VALUES (2, N'Color', N'Red', N'ES')
GO
INSERT [dbo].[Lineal] ([Id], [Code], [Value], [Group]) VALUES (3, N'ISO', N'345', N'ES')
GO
INSERT [dbo].[Lineal] ([Id], [Code], [Value], [Group]) VALUES (4, N'Lang', N'EN', N'US')
GO
INSERT [dbo].[Lineal] ([Id], [Code], [Value], [Group]) VALUES (5, N'Color', N'Blue', N'US')
GO
INSERT [dbo].[Lineal] ([Id], [Code], [Value], [Group]) VALUES (6, N'ISO', N'234', N'US')
GO
SET IDENTITY_INSERT [dbo].[Lineal] OFF
GO

select * from
(
SELECT Code, [Value] FROM Lineal l where l.[Group] = 'us') as src
Pivot (
	Max([Value])
	for [Code] in ([Lang],[Color], [ISO])
) piv;