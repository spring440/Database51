USE [s17guest51]
GO

/****** Object:  Table [dbo].[VendorRankings]    Script Date: 5/14/2017 11:51:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VendorRankings](
	[vendorRankingID] [int] IDENTITY(1,1) NOT NULL,
	[ranking] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VendorRankings] PRIMARY KEY CLUSTERED 
(
	[vendorRankingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


