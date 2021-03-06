USE [s17guest51]
GO
/****** Object:  StoredProcedure [dbo].[insertPresentation]    Script Date: 5/14/2017 11:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[insertPresentation]
	
	@speaker nvarchar(50),
	@presentation nvarchar(255)

AS
BEGIN
	BEGIN TRY
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE 
	@firstName nvarchar(100),
	@lastName  nvarchar(100)
	
	SET @firstName =  SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1)
	SET @lastName =  REVERSE(SUBSTRING(REVERSE(@speaker), 1, CHARINDEX(' ', REVERSE(@speaker)) - 1))
	
	IF NOT EXISTS(SELECT firstName FROM Attendants WHERE firstName= @firstName) AND NOT EXISTS(SELECT lastName FROM Attendants WHERE firstName= @lastName)
	BEGIN
		
		INSERT INTO Attendants(firstName, lastName)
		VALUES (@firstName, @lastName)
		
		INSERT INTO Presenters(attendantID) SELECT attendantID FROM Attendants WHERE firstName = @firstName AND lastName = @lastName
		
		INSERT INTO Presentations(title, presenterID) VALUES (@presentation, (SELECT presenterID FROM Presenters WHERE (attendantID = (SELECT attendantID FROM Attendants WHERE firstName = @firstName AND lastName = @lastName))))
		
	END
	ELSE 
	BEGIN
	
		INSERT INTO Presentations(title, presenterID) VALUES (@presentation, (SELECT presenterID FROM Presenters WHERE (attendantID = (SELECT attendantID FROM Attendants WHERE firstName = @firstName AND lastName = @lastName))))

	END
	END TRY
	BEGIN CATCH
		PRINT 'There was an ERROR'
	END CATCH
END
