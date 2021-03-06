USE [EasyUIDB]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 05/26/2017 16:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Mail] [varchar](32) NOT NULL,
	[Phone] [varchar](16) NULL,
	[Address] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[Enable] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON
INSERT [dbo].[UserInfo] ([ID], [Name], [Password], [Mail], [Phone], [Address], [CreateTime], [Enable]) VALUES (1, N'admin               ', N'q111111', N'110@qq.com', N'13460012345', N'上海', CAST(0x0000A77F00000000 AS DateTime), 1)
INSERT [dbo].[UserInfo] ([ID], [Name], [Password], [Mail], [Phone], [Address], [CreateTime], [Enable]) VALUES (2, N'test                ', N'q123456', N'120@qq.com', N'13455555555', N'北京', CAST(0x0000A77F00F2A7FD AS DateTime), 1)
INSERT [dbo].[UserInfo] ([ID], [Name], [Password], [Mail], [Phone], [Address], [CreateTime], [Enable]) VALUES (3, N'小四                  ', N'q111111', N'119@qq.com', N'13211111111', N'上海', CAST(0x0000A77F00F3E725 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Default [DF_User_Enable]    Script Date: 05/26/2017 16:01:47 ******/
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_User_Enable]  DEFAULT ((1)) FOR [Enable]
GO
