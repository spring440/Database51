USE [s17guest51]
GO

/****** Object:  Table [dbo].[Presentations]    Script Date: 5/14/2017 11:49:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Presentations](
	[presentationID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[levelID] [int] NULL,
	[presenterID] [int] NOT NULL,
	[eventID] [int] NULL,
	[trackID] [int] NULL,
 CONSTRAINT [PK_Presentations] PRIMARY KEY CLUSTERED 
(
	[presentationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Presentations]  WITH CHECK ADD  CONSTRAINT [FK_Presentations_Events] FOREIGN KEY([eventID])
REFERENCES [dbo].[Events] ([eventID])
GO

ALTER TABLE [dbo].[Presentations] CHECK CONSTRAINT [FK_Presentations_Events]
GO

ALTER TABLE [dbo].[Presentations]  WITH CHECK ADD  CONSTRAINT [FK_Presentations_Levels] FOREIGN KEY([levelID])
REFERENCES [dbo].[Levels] ([levelID])
GO

ALTER TABLE [dbo].[Presentations] CHECK CONSTRAINT [FK_Presentations_Levels]
GO

ALTER TABLE [dbo].[Presentations]  WITH CHECK ADD  CONSTRAINT [FK_Presentations_Presenters] FOREIGN KEY([presenterID])
REFERENCES [dbo].[Presenters] ([presenterID])
GO

ALTER TABLE [dbo].[Presentations] CHECK CONSTRAINT [FK_Presentations_Presenters]
GO

ALTER TABLE [dbo].[Presentations]  WITH CHECK ADD  CONSTRAINT [FK_Presentations_Tracks] FOREIGN KEY([trackID])
REFERENCES [dbo].[Tracks] ([trackID])
GO

ALTER TABLE [dbo].[Presentations] CHECK CONSTRAINT [FK_Presentations_Tracks]
GO


