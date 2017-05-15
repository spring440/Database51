USE [s17guest51]
GO

/****** Object:  Table [dbo].[Events]    Script Date: 5/14/2017 11:48:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Events](
	[eventID] [int] NOT NULL,
	[eventDate] [date] NOT NULL,
	[eventName] [nvarchar](255) NOT NULL,
	[regionID] [int] NOT NULL,
	[venueID] [int] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Regions] FOREIGN KEY([regionID])
REFERENCES [dbo].[Regions] ([regionID])
GO

ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Regions]
GO

ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Venues] FOREIGN KEY([venueID])
REFERENCES [dbo].[Venues] ([venueID])
GO

ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Venues]
GO


