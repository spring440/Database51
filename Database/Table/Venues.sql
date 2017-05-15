USE [s17guest51]
GO

/****** Object:  Table [dbo].[Venues]    Script Date: 5/14/2017 11:52:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Venues](
	[venueID] [int] IDENTITY(1,1) NOT NULL,
	[addressID] [int] NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[venueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_Addresses] FOREIGN KEY([addressID])
REFERENCES [dbo].[Addresses] ([addressID])
GO

ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_Addresses]
GO


