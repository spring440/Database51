USE [s17guest51]
GO

/****** Object:  Table [dbo].[Grades]    Script Date: 5/14/2017 11:48:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Grades](
	[gradeID] [int] IDENTITY(1,1) NOT NULL,
	[presentationID] [int] NOT NULL,
	[grade] [int] NOT NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[gradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Presentations] FOREIGN KEY([presentationID])
REFERENCES [dbo].[Presentations] ([presentationID])
GO

ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Presentations]
GO


