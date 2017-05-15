USE [s17guest51]
GO

/****** Object:  Table [dbo].[Presenters]    Script Date: 5/14/2017 11:49:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Presenters](
	[presenterID] [int] IDENTITY(1,1) NOT NULL,
	[attendantID] [int] NOT NULL,
 CONSTRAINT [PK_Presenters] PRIMARY KEY CLUSTERED 
(
	[presenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Presenters]  WITH CHECK ADD  CONSTRAINT [FK_Presenters_Attendants] FOREIGN KEY([attendantID])
REFERENCES [dbo].[Attendants] ([attendantID])
GO

ALTER TABLE [dbo].[Presenters] CHECK CONSTRAINT [FK_Presenters_Attendants]
GO


