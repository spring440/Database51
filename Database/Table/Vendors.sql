USE [s17guest51]
GO

/****** Object:  Table [dbo].[Vendors]    Script Date: 5/14/2017 11:52:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vendors](
	[vendorID] [int] IDENTITY(1,1) NOT NULL,
	[vendorName] [nvarchar](100) NOT NULL,
	[vendorRankingID] [int] NOT NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[vendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Vendors]  WITH CHECK ADD  CONSTRAINT [FK_Vendors_VendorRankings] FOREIGN KEY([vendorRankingID])
REFERENCES [dbo].[VendorRankings] ([vendorRankingID])
GO

ALTER TABLE [dbo].[Vendors] CHECK CONSTRAINT [FK_Vendors_VendorRankings]
GO


