USE [s17guest51]
GO

/****** Object:  Table [dbo].[EventVendorTables]    Script Date: 5/14/2017 11:48:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EventVendorTables](
	[eventID] [int] NOT NULL,
	[vendorID] [int] NOT NULL,
	[tableID] [int] NOT NULL,
 CONSTRAINT [PK_EventVendorTables] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC,
	[vendorID] ASC,
	[tableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[EventVendorTables]  WITH CHECK ADD  CONSTRAINT [FK_EventVendorTables_Events] FOREIGN KEY([eventID])
REFERENCES [dbo].[Events] ([eventID])
GO

ALTER TABLE [dbo].[EventVendorTables] CHECK CONSTRAINT [FK_EventVendorTables_Events]
GO

ALTER TABLE [dbo].[EventVendorTables]  WITH CHECK ADD  CONSTRAINT [FK_EventVendorTables_Tables] FOREIGN KEY([tableID])
REFERENCES [dbo].[Tables] ([tableID])
GO

ALTER TABLE [dbo].[EventVendorTables] CHECK CONSTRAINT [FK_EventVendorTables_Tables]
GO

ALTER TABLE [dbo].[EventVendorTables]  WITH CHECK ADD  CONSTRAINT [FK_EventVendorTables_Vendors] FOREIGN KEY([vendorID])
REFERENCES [dbo].[Vendors] ([vendorID])
GO

ALTER TABLE [dbo].[EventVendorTables] CHECK CONSTRAINT [FK_EventVendorTables_Vendors]
GO


