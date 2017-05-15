USE [s17guest51]
GO

/****** Object:  Table [dbo].[EventAttendantRoles]    Script Date: 5/14/2017 11:47:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EventAttendantRoles](
	[eventID] [int] NOT NULL,
	[attendantID] [int] NOT NULL,
	[roleID] [int] NOT NULL,
 CONSTRAINT [PK_EventAttendantRoles] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC,
	[attendantID] ASC,
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[EventAttendantRoles]  WITH CHECK ADD  CONSTRAINT [FK_EventAttendantRoles_Attendants] FOREIGN KEY([attendantID])
REFERENCES [dbo].[Attendants] ([attendantID])
GO

ALTER TABLE [dbo].[EventAttendantRoles] CHECK CONSTRAINT [FK_EventAttendantRoles_Attendants]
GO

ALTER TABLE [dbo].[EventAttendantRoles]  WITH CHECK ADD  CONSTRAINT [FK_EventAttendantRoles_Events] FOREIGN KEY([eventID])
REFERENCES [dbo].[Events] ([eventID])
GO

ALTER TABLE [dbo].[EventAttendantRoles] CHECK CONSTRAINT [FK_EventAttendantRoles_Events]
GO

ALTER TABLE [dbo].[EventAttendantRoles]  WITH CHECK ADD  CONSTRAINT [FK_EventAttendantRoles_Roles] FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([roleID])
GO

ALTER TABLE [dbo].[EventAttendantRoles] CHECK CONSTRAINT [FK_EventAttendantRoles_Roles]
GO


