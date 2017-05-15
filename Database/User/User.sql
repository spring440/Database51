USE [s17guest51]
GO

/****** Object:  User [s17guest51]    Script Date: 5/10/2017 8:12:41 PM ******/
CREATE USER [s17guest51] FOR LOGIN [s17guest51] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [s17guest51]
GO
ALTER ROLE [db_datareader] ADD MEMBER [s17guest51]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [s17guest51]
GO


