USE [test]
GO

DROP TABLE [dbo].[TxtRawFile]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TxtRawFile](
	[TextRow] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


BULK INSERT dbo.TxtRawFile
FROM 'c:\myFile.txt';  
GO 