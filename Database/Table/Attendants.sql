USE [s17guest51]
GO

/****** Object:  Table [dbo].[Attendants]    Script Date: 5/14/2017 11:47:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Attendants](
	[attendantID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[addressID] [int] NULL,
 CONSTRAINT [PK_Attendants] PRIMARY KEY CLUSTERED 
(
	[attendantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Attendants]  WITH CHECK ADD  CONSTRAINT [FK_Attendants_Addresses] FOREIGN KEY([addressID])
REFERENCES [dbo].[Addresses] ([addressID])
GO

ALTER TABLE [dbo].[Attendants] CHECK CONSTRAINT [FK_Attendants_Addresses]
GO


