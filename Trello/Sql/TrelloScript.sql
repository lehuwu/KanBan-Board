USE [Trello]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Board]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Board](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL DEFAULT (getdate()),
	[UserId] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[CreatedOn] [datetime] NULL DEFAULT (getdate()),
	[DueDate] [varchar](15) NULL,
	[Attachement] [binary](1) NULL,
	[TicketId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CardLabels]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardLabels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardId] [int] NOT NULL,
	[LabelId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CardLabels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [varchar](512) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CardId] [int] NOT NULL,
	[AspNetUserId] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommentReplies]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](512) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CommentId] [int] NOT NULL,
	[AspNetUserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.CommentReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Labels]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Labels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorTag] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Labels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaskItem]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Status] [varchar](10) NOT NULL,
	[CreatedOn] [datetime] NULL DEFAULT (getdate()),
	[CardId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[CreatedOn] [datetime] NULL DEFAULT (getdate()),
	[BoardId] [int] NOT NULL,
	[PositionNo] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserBoards]    Script Date: 25/03/2016 9:08:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBoards](
	[Id] [int] NOT NULL,
	[BoardId] [int] NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'14d91b20-bb22-416c-b5ba-77ecde945c9e', N'peto.frank@gmail.com', 0, N'ACDe47mbkJdcpFT0UcozcmCpYMYcofeNnk7xh1gDV/SKaTgK73dnnJZA2+3HfUhZOA==', N'2a07d62e-9af9-415f-8050-21cfaed325d1', NULL, 0, 0, NULL, 1, 0, N'peto.frank@gmail.com', N'Peter', N'Frank')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'f78f29cd-7efe-4276-9779-cd3b00691e65', N'john.doe@gmail.com', 0, N'AM4VK6S8MfOvji5HXbORVL29rosTCLDpFuFKL0HzuzOqIa4yT+cmwGPsgRtWQ+IzpA==', N'e1f4a9e9-01cd-4a4f-8447-0a7f1580ad42', NULL, 0, 0, NULL, 1, 0, N'john.doe@gmail.com', N'John', N'Doe')
SET IDENTITY_INSERT [dbo].[Board] ON 

INSERT [dbo].[Board] ([Id], [Name], [CreatedOn], [UserId]) VALUES (1, N'4SEM Project', CAST(N'2016-03-11 12:20:23.820' AS DateTime), N'14d91b20-bb22-416c-b5ba-77ecde945c9e')
INSERT [dbo].[Board] ([Id], [Name], [CreatedOn], [UserId]) VALUES (8, N'Bootstrap Project', CAST(N'2016-03-21 08:05:19.473' AS DateTime), N'14d91b20-bb22-416c-b5ba-77ecde945c9e')
SET IDENTITY_INSERT [dbo].[Board] OFF
SET IDENTITY_INSERT [dbo].[Card] ON 

INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (1, N'Elements', N'Virgin Description', CAST(N'2016-03-11 12:57:00.357' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (2, N'Formatting', N'Bith Description', CAST(N'2016-03-11 12:57:36.813' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (5, N'Inheritance', NULL, CAST(N'2016-03-11 19:44:53.510' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (6, N'Classes', NULL, CAST(N'2016-03-11 19:45:11.420' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (7, N'Loops', NULL, CAST(N'2016-03-11 19:45:17.710' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (8, N'Controllers', NULL, CAST(N'2016-03-11 19:45:39.717' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (9, N'Joins', NULL, CAST(N'2016-03-11 21:51:33.897' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (10, N'Subquery', NULL, CAST(N'2016-03-11 21:51:33.897' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (11, N'Subquery', NULL, CAST(N'2016-03-11 21:51:33.897' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (12, N'Procedures', NULL, CAST(N'2016-03-11 22:03:11.797' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (13, N'Functions', NULL, CAST(N'2016-03-11 22:03:11.797' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (14, N'Responsive', NULL, CAST(N'2016-03-12 22:49:10.107' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (15, N'Arrays', NULL, CAST(N'2016-03-12 23:44:41.837' AS DateTime), NULL, NULL, 4)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (16, N'Threading', NULL, CAST(N'2016-03-12 23:44:56.070' AS DateTime), NULL, NULL, 4)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (17, N'Tasks', NULL, CAST(N'2016-03-12 23:46:22.517' AS DateTime), NULL, NULL, 4)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (18, N'Extension methods', NULL, CAST(N'2016-03-13 00:10:23.957' AS DateTime), NULL, NULL, 4)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (19, N'Views', NULL, CAST(N'2016-03-13 00:27:59.007' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (20, N'Model', NULL, CAST(N'2016-03-13 00:28:03.807' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[Card] ([Id], [Name], [Description], [CreatedOn], [DueDate], [Attachement], [TicketId]) VALUES (21, N'Validation', NULL, CAST(N'2016-03-21 07:55:26.947' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Card] OFF
SET IDENTITY_INSERT [dbo].[CardLabels] ON 

INSERT [dbo].[CardLabels] ([Id], [CardId], [LabelId]) VALUES (4, 1, 4)
INSERT [dbo].[CardLabels] ([Id], [CardId], [LabelId]) VALUES (22, 9, 6)
INSERT [dbo].[CardLabels] ([Id], [CardId], [LabelId]) VALUES (23, 9, 8)
INSERT [dbo].[CardLabels] ([Id], [CardId], [LabelId]) VALUES (24, 9, 1)
INSERT [dbo].[CardLabels] ([Id], [CardId], [LabelId]) VALUES (25, 9, 9)
SET IDENTITY_INSERT [dbo].[CardLabels] OFF
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Id], [Text], [CreatedOn], [CardId], [AspNetUserId]) VALUES (103, N'Well done !', CAST(N'2016-03-23 22:20:41.190' AS DateTime), 9, N'14d91b20-bb22-416c-b5ba-77ecde945c9e')
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[CommentReplies] ON 

INSERT [dbo].[CommentReplies] ([Id], [Text], [CreatedOn], [CommentId], [AspNetUserId]) VALUES (74, N'@John Doe :)', CAST(N'2016-03-23 23:39:19.283' AS DateTime), 103, N'14d91b20-bb22-416c-b5ba-77ecde945c9e')
INSERT [dbo].[CommentReplies] ([Id], [Text], [CreatedOn], [CommentId], [AspNetUserId]) VALUES (75, N'@John Doe What?', CAST(N'2016-03-24 07:27:02.067' AS DateTime), 103, N'14d91b20-bb22-416c-b5ba-77ecde945c9e')
INSERT [dbo].[CommentReplies] ([Id], [Text], [CreatedOn], [CommentId], [AspNetUserId]) VALUES (87, N'@Peter Frank ok', CAST(N'2016-03-24 18:42:16.033' AS DateTime), 103, N'f78f29cd-7efe-4276-9779-cd3b00691e65')
INSERT [dbo].[CommentReplies] ([Id], [Text], [CreatedOn], [CommentId], [AspNetUserId]) VALUES (88, N'@Peter Frank reply', CAST(N'2016-03-24 18:43:14.570' AS DateTime), 103, N'f78f29cd-7efe-4276-9779-cd3b00691e65')
SET IDENTITY_INSERT [dbo].[CommentReplies] OFF
SET IDENTITY_INSERT [dbo].[Labels] ON 

INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (1, N'#FF0600')
INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (2, N'#7A008C')
INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (3, N'#000BFF')
INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (4, N'#0D97FF')
INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (5, N'#84E80C')
INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (6, N'#056E12')
INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (7, N'#FFF500')
INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (8, N'#FF5E0D')
INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (9, N'#FF6CF6')
INSERT [dbo].[Labels] ([Id], [ColorTag]) VALUES (10, N'#000000')
SET IDENTITY_INSERT [dbo].[Labels] OFF
SET IDENTITY_INSERT [dbo].[TaskItem] ON 

INSERT [dbo].[TaskItem] ([Id], [Name], [Status], [CreatedOn], [CardId]) VALUES (28, N'Inner join', N'DONE', CAST(N'2016-03-19 08:58:04.677' AS DateTime), 9)
INSERT [dbo].[TaskItem] ([Id], [Name], [Status], [CreatedOn], [CardId]) VALUES (29, N'Left join', N'DONE', CAST(N'2016-03-19 08:58:17.063' AS DateTime), 9)
INSERT [dbo].[TaskItem] ([Id], [Name], [Status], [CreatedOn], [CardId]) VALUES (30, N'Right join', N'DONE', CAST(N'2016-03-19 08:58:24.473' AS DateTime), 9)
INSERT [dbo].[TaskItem] ([Id], [Name], [Status], [CreatedOn], [CardId]) VALUES (31, N'cross join', N'NOT DONE', CAST(N'2016-03-19 08:58:29.977' AS DateTime), 9)
SET IDENTITY_INSERT [dbo].[TaskItem] OFF
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([Id], [Name], [CreatedOn], [BoardId], [PositionNo]) VALUES (1, N'HTML', CAST(N'2016-03-11 12:54:56.093' AS DateTime), 1, 0)
INSERT [dbo].[Ticket] ([Id], [Name], [CreatedOn], [BoardId], [PositionNo]) VALUES (2, N'Database', CAST(N'2016-03-11 21:46:16.640' AS DateTime), 1, 1)
INSERT [dbo].[Ticket] ([Id], [Name], [CreatedOn], [BoardId], [PositionNo]) VALUES (3, N'ASP.NET', CAST(N'2016-03-11 18:24:19.230' AS DateTime), 1, 3)
INSERT [dbo].[Ticket] ([Id], [Name], [CreatedOn], [BoardId], [PositionNo]) VALUES (4, N'C#', CAST(N'2016-03-11 18:38:56.723' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
INSERT [dbo].[UserBoards] ([Id], [BoardId], [UserId]) VALUES (1, 1, N'f78f29cd-7efe-4276-9779-cd3b00691e65')
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Board]  WITH CHECK ADD  CONSTRAINT [FK_BoardToUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Board] CHECK CONSTRAINT [FK_BoardToUser]
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [__fk_ticket_id] FOREIGN KEY([TicketId])
REFERENCES [dbo].[Ticket] ([Id])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [__fk_ticket_id]
GO
ALTER TABLE [dbo].[CardLabels]  WITH CHECK ADD  CONSTRAINT [__fk_card] FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[CardLabels] CHECK CONSTRAINT [__fk_card]
GO
ALTER TABLE [dbo].[CardLabels]  WITH CHECK ADD  CONSTRAINT [__fk_label] FOREIGN KEY([LabelId])
REFERENCES [dbo].[Labels] ([Id])
GO
ALTER TABLE [dbo].[CardLabels] CHECK CONSTRAINT [__fk_label]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [__fk_CommentCard_Id] FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [__fk_CommentCard_Id]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comment_dbo.AspNetUsers_AspNetUserId] FOREIGN KEY([AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_dbo.Comment_dbo.AspNetUsers_AspNetUserId]
GO
ALTER TABLE [dbo].[CommentReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommentReplies_dbo.AspNetUsers_AspNetUserId] FOREIGN KEY([AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CommentReplies] CHECK CONSTRAINT [FK_dbo.CommentReplies_dbo.AspNetUsers_AspNetUserId]
GO
ALTER TABLE [dbo].[CommentReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommentReplies_dbo.Comment_CommentId] FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommentReplies] CHECK CONSTRAINT [FK_dbo.CommentReplies_dbo.Comment_CommentId]
GO
ALTER TABLE [dbo].[TaskItem]  WITH CHECK ADD  CONSTRAINT [__fk_card_id] FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[TaskItem] CHECK CONSTRAINT [__fk_card_id]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [__fk_board_id] FOREIGN KEY([BoardId])
REFERENCES [dbo].[Board] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [__fk_board_id]
GO
ALTER TABLE [dbo].[UserBoards]  WITH CHECK ADD FOREIGN KEY([BoardId])
REFERENCES [dbo].[Board] ([Id])
GO
ALTER TABLE [dbo].[UserBoards]  WITH CHECK ADD  CONSTRAINT [FK_UserBoardsToUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserBoards] CHECK CONSTRAINT [FK_UserBoardsToUser]
GO
ALTER TABLE [dbo].[TaskItem]  WITH CHECK ADD CHECK  (([Status]='NOT DONE' OR [Status]='DONE'))
GO
