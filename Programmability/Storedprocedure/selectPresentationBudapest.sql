USE [s17guest51]
GO
/****** Object:  StoredProcedure [dbo].[selectPresentationBudapest]    Script Date: 5/15/2017 12:08:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[selectPresentationBudapest]
AS
BEGIN 
	
	SELECT * FROM Presentations WHERE eventID = (SELECT eventID FROM Events WHERE eventName = 'Budapest')

END
