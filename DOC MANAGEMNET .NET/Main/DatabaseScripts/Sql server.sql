SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/06/2021 12:18:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentAuditTrails]    Script Date: 10/06/2021 12:18:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentAuditTrails](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[OperationName] [int] NOT NULL,
	[AssignToUserId] [uniqueidentifier] NULL,
	[AssignToRoleId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentAuditTrails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentRolePermissions]    Script Date: 10/06/2021 12:18:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentRolePermissions](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[IsTimeBound] [bit] NOT NULL,
	[IsAllowDownload] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentRolePermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 10/06/2021 12:18:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[Id] [uniqueidentifier] NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Url] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentUserPermissions]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentUserPermissions](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[IsTimeBound] [bit] NOT NULL,
	[IsAllowDownload] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentUserPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginAudits]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginAudits](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[LoginTime] [datetime2](7) NOT NULL,
	[RemoteIP] [nvarchar](50) NULL,
	[Status] [nvarchar](max) NULL,
	[Provider] [nvarchar](max) NULL,
	[Latitude] [nvarchar](50) NULL,
	[Longitude] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoginAudits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NLog]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NLog](
	[Id] [uniqueidentifier] NOT NULL,
	[MachineName] [nvarchar](max) NULL,
	[Logged] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Logger] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[Callsite] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
 CONSTRAINT [PK_NLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operations]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operations](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Operations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OperationId] [uniqueidentifier] NOT NULL,
	[ScreenId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenOperations]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenOperations](
	[Id] [uniqueidentifier] NOT NULL,
	[OperationId] [uniqueidentifier] NOT NULL,
	[ScreenId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ScreenOperations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screens]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screens](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Screens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OperationId] [uniqueidentifier] NOT NULL,
	[ScreenId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNotifications]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotifications](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[IsRead] [bit] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserNotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211002113532_Initial', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211002113554_RunSqlDataScript', N'5.0.5')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'dd53b3d5-4ad4-40f8-881d-164f4119da76', N'Logbooks', NULL, CAST(N'2021-01-26T11:41:47.9564307' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-26T11:41:47.9500000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'7b0b316f-d60c-4e55-be83-25d1b8aa8f62', N'Resume', N'Resume All Employees', CAST(N'2021-01-03T14:32:47.8260602' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-03T14:32:47.9333333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'93051459-18aa-49a9-af08-36dbbf53a651', N'SOP production', N'Microsoft Defender for Endpoint is a holistic, cloud delivered endpoint security solution that includes risk-based vulnerability management and assessment, attack surface reduction, behavioral based and cloud-powered next generation protection, endpoint detection and response (EDR), automatic investigation and remediation, managed hunting services, rich APIs, and unified security management.', CAST(N'2021-01-09T15:08:52.0551579' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-09T15:08:52.0566667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'40e84cc7-a98d-4781-ab3d-463b4980bbd7', N'Document batch manufacturing reviews', NULL, CAST(N'2021-01-26T11:42:31.4535315' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-26T11:42:31.4400000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'8a38af04-2431-4f60-acbc-515727ad3ea5', N'Confidancial', NULL, CAST(N'2021-01-26T11:43:11.5825434' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-26T11:43:11.5800000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'861ba2f2-d77a-4ad6-ba45-7d97938330bc', N'Conduct ongoing training', NULL, CAST(N'2021-01-26T11:42:15.3079074' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-26T11:42:15.2933333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'8839ec8c-608b-411b-9a29-7ee5763334f3', N'HR Policies', N'Microsoft Defender for Endpoint is a holistic, cloud delivered endpoint security solution that includes risk-based vulnerability management and assessment, attack surface reduction, behavioral based and cloud-powered next generation protection, endpoint detection and response (EDR), automatic investigation and remediation, managed hunting services, rich APIs, and unified security management.', CAST(N'2021-01-09T15:08:27.7984191' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-09T15:08:27.8033333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'20914b75-d50c-42f9-b624-d430b968ea2c', N'Batch records', NULL, CAST(N'2021-01-26T11:41:31.8272395' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-26T11:41:31.8233333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'80654b51-04bd-4896-ac6b-ea0c5a4d339a', N'Quality assurance document', NULL, CAST(N'2021-01-26T11:41:16.8870397' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-26T11:41:16.9800000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Operations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'31b90345-4a48-4d7e-b11e-1d513493243b', N'Edit', CAST(N'2020-11-04T18:29:51.7503599' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-12-10T21:15:36.6279755' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Operations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'0f86c7fd-453b-4cf3-8dbc-23dd6d630723', N'View', CAST(N'2021-10-04T11:09:07.6804347' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-10-04T11:09:07.6966667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Operations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'9a1e3b05-15f6-487b-93f5-3a80771b95e7', N'Download', CAST(N'2021-10-04T11:10:01.4296877' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-10-04T11:10:01.4300000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Operations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'bb75df27-8e4e-4ec3-aef1-4183120cacf9', N'Share', CAST(N'2021-10-04T11:09:46.2892082' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-10-04T11:09:46.3000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Operations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'e887e9fe-cba3-4ed1-995b-506909327182', N'Add', CAST(N'2020-11-10T15:39:38.7589272' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Operations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'6db3646c-77aa-430c-b259-c8643476935e', N'Delete', CAST(N'2020-11-10T15:39:48.8638445' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Operations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'80120352-300f-4115-a203-d1758ac65241', N'List', CAST(N'2020-12-11T13:14:35.6289609' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-12-27T20:32:05.2678860' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
SET IDENTITY_INSERT [dbo].[RoleClaims] ON 

INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1, N'31b90345-4a48-4d7e-b11e-1d513493243b', N'385a1d6d-fe7b-467c-9fc0-f219718f881d', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'User_Edit', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (2, N'e887e9fe-cba3-4ed1-995b-506909327182', N'385a1d6d-fe7b-467c-9fc0-f219718f881d', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'User_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3, N'31b90345-4a48-4d7e-b11e-1d513493243b', N'662e3de3-ea4b-4539-a82d-d237afbda201', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Role_Edit', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (5, N'6db3646c-77aa-430c-b259-c8643476935e', N'662e3de3-ea4b-4539-a82d-d237afbda201', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Role_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (6, N'80120352-300f-4115-a203-d1758ac65241', N'662e3de3-ea4b-4539-a82d-d237afbda201', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Role_View', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (8, N'6db3646c-77aa-430c-b259-c8643476935e', N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Operation_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (9, N'e887e9fe-cba3-4ed1-995b-506909327182', N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Operation_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (10, N'31b90345-4a48-4d7e-b11e-1d513493243b', N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Operation_Edit', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (12, N'e887e9fe-cba3-4ed1-995b-506909327182', N'54f53830-a496-4541-b075-635ec62c3c22', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Screen_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (13, N'6db3646c-77aa-430c-b259-c8643476935e', N'54f53830-a496-4541-b075-635ec62c3c22', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Screen_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (14, N'80120352-300f-4115-a203-d1758ac65241', N'54f53830-a496-4541-b075-635ec62c3c22', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Screen_View', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1002, N'80120352-300f-4115-a203-d1758ac65241', N'b293b493-bfc9-4bfb-b4a4-67c05ae9b0b5', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Screen_Operation_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1009, N'31b90345-4a48-4d7e-b11e-1d513493243b', N'f46df66e-4e43-4474-b08a-e756b7dd32f4', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Role_User_Edit', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1010, N'e887e9fe-cba3-4ed1-995b-506909327182', N'f46df66e-4e43-4474-b08a-e756b7dd32f4', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Role_User_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1011, N'6db3646c-77aa-430c-b259-c8643476935e', N'f46df66e-4e43-4474-b08a-e756b7dd32f4', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Role_User_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1013, N'80120352-300f-4115-a203-d1758ac65241', N'f46df66e-4e43-4474-b08a-e756b7dd32f4', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Role_User_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1014, N'80120352-300f-4115-a203-d1758ac65241', N'385a1d6d-fe7b-467c-9fc0-f219718f881d', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'User_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1017, N'6db3646c-77aa-430c-b259-c8643476935e', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Category_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1018, N'80120352-300f-4115-a203-d1758ac65241', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Category_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1019, N'6db3646c-77aa-430c-b259-c8643476935e', N'385a1d6d-fe7b-467c-9fc0-f219718f881d', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'User_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1021, N'80120352-300f-4115-a203-d1758ac65241', N'088189ea-7f6d-47ff-86b7-199531210269', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'User_Screen_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1022, N'6db3646c-77aa-430c-b259-c8643476935e', N'088189ea-7f6d-47ff-86b7-199531210269', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'User_Screen_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1023, N'e887e9fe-cba3-4ed1-995b-506909327182', N'088189ea-7f6d-47ff-86b7-199531210269', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'User_Screen_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1024, N'31b90345-4a48-4d7e-b11e-1d513493243b', N'088189ea-7f6d-47ff-86b7-199531210269', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'User_Screen_Edit', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1031, N'80120352-300f-4115-a203-d1758ac65241', N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'd7b7d555-2fa8-45bb-a3e8-e8320d272f99', N'Operation_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1035, N'31b90345-4a48-4d7e-b11e-1d513493243b', N'54f53830-a496-4541-b075-635ec62c3c22', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Screen_Edit', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1036, N'80120352-300f-4115-a203-d1758ac65241', N'c86094af-e800-4ec5-8764-30fc3e637ea6', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Document_Library_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1037, N'e887e9fe-cba3-4ed1-995b-506909327182', N'662e3de3-ea4b-4539-a82d-d237afbda201', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Role_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1038, N'e887e9fe-cba3-4ed1-995b-506909327182', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Category_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1039, N'31b90345-4a48-4d7e-b11e-1d513493243b', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Category_Edit', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1041, N'e887e9fe-cba3-4ed1-995b-506909327182', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Document_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1043, N'80120352-300f-4115-a203-d1758ac65241', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Document_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1044, N'80120352-300f-4115-a203-d1758ac65241', N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Operation_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1045, N'80120352-300f-4115-a203-d1758ac65241', N'7618aef0-34fa-48af-ab1a-7ef4d9e49896', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Document_Permission_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1046, N'80120352-300f-4115-a203-d1758ac65241', N'69d39b03-49dd-4532-a74e-6b36515b7a7e', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'rest_password_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1047, N'80120352-300f-4115-a203-d1758ac65241', N'c86094af-e800-4ec5-8764-30fc3e637ea6', N'd7b7d555-2fa8-45bb-a3e8-e8320d272f99', N'Document_Library_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (1048, N'80120352-300f-4115-a203-d1758ac65241', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'd7b7d555-2fa8-45bb-a3e8-e8320d272f99', N'Category_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (2045, N'80120352-300f-4115-a203-d1758ac65241', N'e55c897a-3e14-4359-97dd-2f1740c55d6d', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Document_Audit_Trail_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3045, N'31b90345-4a48-4d7e-b11e-1d513493243b', N'69d39b03-49dd-4532-a74e-6b36515b7a7e', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Rest_password_Edit', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3046, N'e887e9fe-cba3-4ed1-995b-506909327182', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'cb2ef8de-afac-44d1-8cca-cf93ea034fae', N'Document_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3047, N'e887e9fe-cba3-4ed1-995b-506909327182', N'54f53830-a496-4541-b075-635ec62c3c22', N'cb2ef8de-afac-44d1-8cca-cf93ea034fae', N'Screen_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3048, N'e887e9fe-cba3-4ed1-995b-506909327182', N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'cb2ef8de-afac-44d1-8cca-cf93ea034fae', N'Operation_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3049, N'e887e9fe-cba3-4ed1-995b-506909327182', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'cb2ef8de-afac-44d1-8cca-cf93ea034fae', N'Category_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3050, N'e887e9fe-cba3-4ed1-995b-506909327182', N'662e3de3-ea4b-4539-a82d-d237afbda201', N'cb2ef8de-afac-44d1-8cca-cf93ea034fae', N'Role_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3051, N'6db3646c-77aa-430c-b259-c8643476935e', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'185c414b-9c32-4bb1-a1f4-9a3ea0a1ab1b', N'Document_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3052, N'6db3646c-77aa-430c-b259-c8643476935e', N'54f53830-a496-4541-b075-635ec62c3c22', N'185c414b-9c32-4bb1-a1f4-9a3ea0a1ab1b', N'Screen_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3053, N'e887e9fe-cba3-4ed1-995b-506909327182', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'185c414b-9c32-4bb1-a1f4-9a3ea0a1ab1b', N'Document_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3054, N'e887e9fe-cba3-4ed1-995b-506909327182', N'54f53830-a496-4541-b075-635ec62c3c22', N'185c414b-9c32-4bb1-a1f4-9a3ea0a1ab1b', N'Screen_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3055, N'e887e9fe-cba3-4ed1-995b-506909327182', N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'185c414b-9c32-4bb1-a1f4-9a3ea0a1ab1b', N'Operation_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3056, N'e887e9fe-cba3-4ed1-995b-506909327182', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'185c414b-9c32-4bb1-a1f4-9a3ea0a1ab1b', N'Category_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3057, N'e887e9fe-cba3-4ed1-995b-506909327182', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'ca8c2198-c488-43c3-b573-73e0e313c2f4', N'Document_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3058, N'e887e9fe-cba3-4ed1-995b-506909327182', N'54f53830-a496-4541-b075-635ec62c3c22', N'ca8c2198-c488-43c3-b573-73e0e313c2f4', N'Screen_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3059, N'6db3646c-77aa-430c-b259-c8643476935e', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'ca8c2198-c488-43c3-b573-73e0e313c2f4', N'Document_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3060, N'6db3646c-77aa-430c-b259-c8643476935e', N'54f53830-a496-4541-b075-635ec62c3c22', N'ca8c2198-c488-43c3-b573-73e0e313c2f4', N'Screen_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3061, N'6db3646c-77aa-430c-b259-c8643476935e', N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'ca8c2198-c488-43c3-b573-73e0e313c2f4', N'Operation_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3062, N'6db3646c-77aa-430c-b259-c8643476935e', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'ca8c2198-c488-43c3-b573-73e0e313c2f4', N'Category_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3063, N'e887e9fe-cba3-4ed1-995b-506909327182', N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'ca8c2198-c488-43c3-b573-73e0e313c2f4', N'Operation_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3064, N'e887e9fe-cba3-4ed1-995b-506909327182', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'ca8c2198-c488-43c3-b573-73e0e313c2f4', N'Category_Add', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3065, N'80120352-300f-4115-a203-d1758ac65241', N'ef99dc91-9002-431e-935e-490c87d5165d', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Login_Audit_List', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3068, N'0f86c7fd-453b-4cf3-8dbc-23dd6d630723', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Documents_Library_View', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3069, N'6db3646c-77aa-430c-b259-c8643476935e', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Documents_Library_Delete', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3070, N'bb75df27-8e4e-4ec3-aef1-4183120cacf9', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Documents_Library_Share', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3071, N'31b90345-4a48-4d7e-b11e-1d513493243b', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Documents_Library_Edit', N'')
INSERT [dbo].[RoleClaims] ([Id], [OperationId], [ScreenId], [RoleId], [ClaimType], [ClaimValue]) VALUES (3072, N'9a1e3b05-15f6-487b-93f5-3a80771b95e7', N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'49e35563-4e7e-4607-9543-6208abd3b89d', N'Documents_Library_Download', N'')
SET IDENTITY_INSERT [dbo].[RoleClaims] OFF
INSERT [dbo].[Roles] ([Id], [IsDeleted], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'49e35563-4e7e-4607-9543-6208abd3b89d', 0, N'Super Admin', N'Super Admin', N'563c062c-d1ed-4cea-b470-a5dca2b34988')
INSERT [dbo].[Roles] ([Id], [IsDeleted], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ca8c2198-c488-43c3-b573-73e0e313c2f4', 0, N'External', N'External', N'2ae107ce-181f-48c3-a89c-487a5790014d')
INSERT [dbo].[Roles] ([Id], [IsDeleted], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'185c414b-9c32-4bb1-a1f4-9a3ea0a1ab1b', 0, N'Manager', N'Manager', N'a1c94855-8132-4c1a-af4b-aff603eff9b2')
INSERT [dbo].[Roles] ([Id], [IsDeleted], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cb2ef8de-afac-44d1-8cca-cf93ea034fae', 0, N'HOD', N'HOD', N'7f112c15-a435-47a9-ae71-806ea4227887')
INSERT [dbo].[Roles] ([Id], [IsDeleted], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd7b7d555-2fa8-45bb-a3e8-e8320d272f99', 0, N'Employee', N'Employee', N'03899268-b245-499f-add4-6532ddb3df43')
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'4b115be9-f2e4-4e86-9d80-026c80d48e02', N'80120352-300f-4115-a203-d1758ac65241', N'ef99dc91-9002-431e-935e-490c87d5165d', CAST(N'2021-04-19T10:23:16.6821376' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-04-19T10:23:16.6966667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'751cc648-607c-4774-8c9a-223a141b4a0b', N'80120352-300f-4115-a203-d1758ac65241', N'088189ea-7f6d-47ff-86b7-199531210269', CAST(N'2021-01-02T14:35:08.2505671' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T14:35:08.2533333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'15418a70-b443-4771-9b66-2276802ec7fd', N'6db3646c-77aa-430c-b259-c8643476935e', N'385a1d6d-fe7b-467c-9fc0-f219718f881d', CAST(N'2021-01-02T12:19:09.1754221' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:19:09.1766667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'720e3bfa-e9d8-4ce1-886e-24dd1689e0b5', N'e887e9fe-cba3-4ed1-995b-506909327182', N'662e3de3-ea4b-4539-a82d-d237afbda201', CAST(N'2020-12-13T10:56:08.8061189' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'4795f9a9-54aa-474a-a7f1-26818385ab9d', N'bb75df27-8e4e-4ec3-aef1-4183120cacf9', N'9ab80541-7434-4824-b100-3dfa2b5cd604', CAST(N'2021-10-04T11:11:04.9881713' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-10-04T11:11:04.9900000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'47ad7c6a-976e-4f98-85d6-29f2c49cbf9e', N'31b90345-4a48-4d7e-b11e-1d513493243b', N'69d39b03-49dd-4532-a74e-6b36515b7a7e', CAST(N'2021-01-04T20:59:28.0781582' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-04T20:59:28.1066667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'ab6364b1-5e15-4b02-a0a7-2e716fee2b9f', N'80120352-300f-4115-a203-d1758ac65241', N'7618aef0-34fa-48af-ab1a-7ef4d9e49896', CAST(N'2021-01-04T00:38:28.6204750' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-04T00:38:28.6333333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'9891ec18-7642-4757-ab9c-2eec31a1102a', N'31b90345-4a48-4d7e-b11e-1d513493243b', N'662e3de3-ea4b-4539-a82d-d237afbda201', CAST(N'2020-12-13T10:56:07.8558343' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'37ce6a11-51d0-443b-95ac-38b28436620f', N'80120352-300f-4115-a203-d1758ac65241', N'f46df66e-4e43-4474-b08a-e756b7dd32f4', CAST(N'2021-01-02T12:19:04.8182690' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:19:04.8200000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'558737bd-2cae-44e5-b911-4116c232f8f0', N'80120352-300f-4115-a203-d1758ac65241', N'9ab80541-7434-4824-b100-3dfa2b5cd604', CAST(N'2021-01-02T12:34:10.7630058' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:34:10.7633333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'73fe00d4-c2d5-4a90-91b6-411f699ca390', N'31b90345-4a48-4d7e-b11e-1d513493243b', N'385a1d6d-fe7b-467c-9fc0-f219718f881d', CAST(N'2020-12-13T10:56:13.8762525' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'b9188370-06f9-4dac-a555-41bfaaec98ec', N'0f86c7fd-453b-4cf3-8dbc-23dd6d630723', N'9ab80541-7434-4824-b100-3dfa2b5cd604', CAST(N'2021-10-04T11:10:59.7505246' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-10-04T11:10:59.7600000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'b5a18aef-777a-43ab-9af4-4e94c25c1e12', N'80120352-300f-4115-a203-d1758ac65241', N'a1c313b9-edaf-4c21-a58e-82b80f971659', CAST(N'2020-12-13T10:56:06.2574975' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'b898b2d6-2a28-4ce4-b131-5464413cc192', N'31b90345-4a48-4d7e-b11e-1d513493243b', N'54f53830-a496-4541-b075-635ec62c3c22', CAST(N'2020-12-13T10:48:57.2590509' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'57e0ccce-9c60-409a-8b15-5b4bea385e27', N'80120352-300f-4115-a203-d1758ac65241', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', CAST(N'2021-01-02T12:22:41.3361937' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:22:41.3366667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'f45ff36c-7523-4256-a029-6e92aeff720f', N'9a1e3b05-15f6-487b-93f5-3a80771b95e7', N'9ab80541-7434-4824-b100-3dfa2b5cd604', CAST(N'2021-10-04T11:11:01.9800459' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-10-04T11:11:01.9833333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'b6890d5a-98fb-4263-b2ce-70776c4b6d66', N'80120352-300f-4115-a203-d1758ac65241', N'385a1d6d-fe7b-467c-9fc0-f219718f881d', CAST(N'2021-01-02T12:19:10.1295648' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:19:10.1333333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'7fff920a-e7ae-47b3-9c22-71e9ff465496', N'e887e9fe-cba3-4ed1-995b-506909327182', N'385a1d6d-fe7b-467c-9fc0-f219718f881d', CAST(N'2020-12-13T10:56:12.3895568' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'd203f3cd-4b88-4eb3-a810-7b2d705e57be', N'6db3646c-77aa-430c-b259-c8643476935e', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', CAST(N'2021-01-02T12:22:40.4476406' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:22:40.4500000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'92ed5f9e-f6e9-41ca-8944-828f37a960a2', N'e887e9fe-cba3-4ed1-995b-506909327182', N'a1c313b9-edaf-4c21-a58e-82b80f971659', CAST(N'2020-12-13T10:56:01.9939890' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'adb60e73-183e-4b91-910e-82bd8fefcc8e', N'6db3646c-77aa-430c-b259-c8643476935e', N'9ab80541-7434-4824-b100-3dfa2b5cd604', CAST(N'2021-01-02T12:34:09.9304877' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:34:09.9300000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'd58d7288-8ead-460f-a560-9d53e492c2fe', N'80120352-300f-4115-a203-d1758ac65241', N'54f53830-a496-4541-b075-635ec62c3c22', CAST(N'2020-12-13T11:43:31.9386491' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'ccb7dc0b-af8b-4e40-8c19-9f3fceed14f5', N'6db3646c-77aa-430c-b259-c8643476935e', N'54f53830-a496-4541-b075-635ec62c3c22', CAST(N'2020-12-13T10:49:10.8492197' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'4c2f9716-9d54-4249-8c51-a9c087c48757', N'31b90345-4a48-4d7e-b11e-1d513493243b', N'a1c313b9-edaf-4c21-a58e-82b80f971659', CAST(N'2020-12-13T10:55:54.6105719' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'c41f73bf-7565-4c78-ba6b-af5c80a09287', N'6db3646c-77aa-430c-b259-c8643476935e', N'a1c313b9-edaf-4c21-a58e-82b80f971659', CAST(N'2020-12-13T10:56:04.4053713' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'2bac04db-312b-432b-a50b-b21d37dc96b7', N'e887e9fe-cba3-4ed1-995b-506909327182', N'54f53830-a496-4541-b075-635ec62c3c22', CAST(N'2020-12-13T10:48:23.9318500' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'ae408c5d-c007-457d-939f-b378e1143ba0', N'6db3646c-77aa-430c-b259-c8643476935e', N'662e3de3-ea4b-4539-a82d-d237afbda201', CAST(N'2020-12-13T10:56:09.7760277' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'7d019fbf-449b-46a7-b99d-c1ca52d141ac', N'e887e9fe-cba3-4ed1-995b-506909327182', N'9ab80541-7434-4824-b100-3dfa2b5cd604', CAST(N'2021-01-02T12:34:09.1377935' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:34:09.1400000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'2e5a9471-a666-475b-bb22-c40068313852', N'31b90345-4a48-4d7e-b11e-1d513493243b', N'9ab80541-7434-4824-b100-3dfa2b5cd604', CAST(N'2021-01-02T12:34:08.2448622' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:34:08.2466667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'6c177a5f-ea69-44ae-8843-ca68c86d3c76', N'31b90345-4a48-4d7e-b11e-1d513493243b', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', CAST(N'2021-01-02T12:22:38.6546863' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:22:38.6566667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'f5493206-0dd7-4691-99f3-d1fdc3d67983', N'80120352-300f-4115-a203-d1758ac65241', N'662e3de3-ea4b-4539-a82d-d237afbda201', CAST(N'2020-12-13T10:56:10.8905095' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'e1219b12-0865-4465-9cde-e2cdeacc4fd9', N'80120352-300f-4115-a203-d1758ac65241', N'b293b493-bfc9-4bfb-b4a4-67c05ae9b0b5', CAST(N'2021-01-02T12:18:45.1351448' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:18:45.1366667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'a086bb89-3c22-47cc-b023-e3cad8ed8c27', N'80120352-300f-4115-a203-d1758ac65241', N'c86094af-e800-4ec5-8764-30fc3e637ea6', CAST(N'2021-01-02T16:23:54.8546729' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T16:23:54.8566667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'45914de2-4169-44d4-84f7-ef1c55ca9ddf', N'31b90345-4a48-4d7e-b11e-1d513493243b', N'088189ea-7f6d-47ff-86b7-199531210269', CAST(N'2021-01-05T23:43:59.0419134' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-05T23:43:59.0433333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'190dd8a6-1762-4a28-a591-f0c0280a06b9', N'80120352-300f-4115-a203-d1758ac65241', N'e55c897a-3e14-4359-97dd-2f1740c55d6d', CAST(N'2021-01-05T23:14:03.9211579' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-05T23:14:03.9300000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[ScreenOperations] ([Id], [OperationId], [ScreenId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'2ae591a6-a096-4a03-82a8-fee64df1bcde', N'e887e9fe-cba3-4ed1-995b-506909327182', N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', CAST(N'2021-01-02T12:22:39.5006573' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:22:39.5033333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'088189ea-7f6d-47ff-86b7-199531210269', N'User_Permission', CAST(N'2021-01-02T23:38:13.2255754' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-10-02T16:46:07.9653922' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'e55c897a-3e14-4359-97dd-2f1740c55d6d', N'Document_Audit_Trail', CAST(N'2021-01-05T23:13:52.6951350' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-05T23:13:52.7033333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'c86094af-e800-4ec5-8764-30fc3e637ea6', N'My_Documents', CAST(N'2021-01-02T21:53:42.7502911' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-10-02T16:32:54.2405661' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'9ab80541-7434-4824-b100-3dfa2b5cd604', N'Documents_Library', CAST(N'2021-01-02T18:04:00.6855767' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-10-02T17:09:27.7691283' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'ef99dc91-9002-431e-935e-490c87d5165d', N'Login_Audit', CAST(N'2021-04-19T10:23:08.1739785' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-04-19T10:23:08.1800000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'54f53830-a496-4541-b075-635ec62c3c22', N'Page', CAST(N'2020-11-11T02:40:46.1996962' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-10-02T16:39:30.6277092' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'b293b493-bfc9-4bfb-b4a4-67c05ae9b0b5', N'Page_Action', CAST(N'2021-01-02T17:42:40.7582068' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-10-02T16:41:30.2178015' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'69d39b03-49dd-4532-a74e-6b36515b7a7e', N'Rest_password', CAST(N'2021-01-04T23:24:31.8902797' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-06T22:14:14.8136468' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'7618aef0-34fa-48af-ab1a-7ef4d9e49896', N'Document_Permission', CAST(N'2021-01-04T00:38:21.0904273' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-01-04T00:38:21.1933333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'a1c313b9-edaf-4c21-a58e-82b80f971659', N'Action', CAST(N'2020-11-10T21:10:35.9925985' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-10-02T16:42:57.4875950' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'c7b824e8-53f5-40db-abb2-aa44a0903f5a', N'Category', CAST(N'2021-01-02T12:22:29.9010475' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:22:29.9000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'662e3de3-ea4b-4539-a82d-d237afbda201', N'Role', CAST(N'2020-11-10T15:41:09.1619399' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'f46df66e-4e43-4474-b08a-e756b7dd32f4', N'Role_User', CAST(N'2021-01-02T12:13:32.7872807' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-01-02T12:13:32.7866667' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[Screens] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'385a1d6d-fe7b-467c-9fc0-f219718f881d', N'User', CAST(N'2020-11-11T02:41:03.1343086' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-12-10T21:39:11.9861103' AS DateTime2), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'4b352b37-332a-40c6-ab05-e38fcf109719', N'49e35563-4e7e-4607-9543-6208abd3b89d')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'1a5cf5b9-ead8-495c-8719-2d8be776f452', N'd7b7d555-2fa8-45bb-a3e8-e8320d272f99')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1a5cf5b9-ead8-495c-8719-2d8be776f452', N'Nikunj', N'Jambukiya', 0, N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEISmz8S4E4dOhEPhhcQ6xmdJCNeez7fmWB6tXa1h2yKrwD3lO+lX+eKSeKdgPB/Mcw==', N'HFC3ZVYIMS63F5H6FHWNDUFRLRI4RDEG', N'63d328a2-6ab2-4157-a4c8-b143894a8467', N'9904750722', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4b352b37-332a-40c6-ab05-e38fcf109719', N'Mukesh', N'Jambukiya', 0, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEM60FYHL5RMKNeB+CxCOI41EC8Vsr1B3Dyrrr2BOtZrxz6doL8o6Tv/tYGDRk20t1A==', N'5D4GQ7LLLVRQJDQFNUGUU763GELSABOJ', N'4819e213-16af-48e6-b15e-bc680d358295', N'1234567890', 0, 0, NULL, 1, 0)
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[DocumentAuditTrails] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Documents] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Operations] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[ScreenOperations] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Screens] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[DocumentAuditTrails]  WITH CHECK ADD  CONSTRAINT [FK_DocumentAuditTrails_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
GO
ALTER TABLE [dbo].[DocumentAuditTrails] CHECK CONSTRAINT [FK_DocumentAuditTrails_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentAuditTrails]  WITH CHECK ADD  CONSTRAINT [FK_DocumentAuditTrails_Roles_AssignToRoleId] FOREIGN KEY([AssignToRoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[DocumentAuditTrails] CHECK CONSTRAINT [FK_DocumentAuditTrails_Roles_AssignToRoleId]
GO
ALTER TABLE [dbo].[DocumentAuditTrails]  WITH CHECK ADD  CONSTRAINT [FK_DocumentAuditTrails_Users_AssignToUserId] FOREIGN KEY([AssignToUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentAuditTrails] CHECK CONSTRAINT [FK_DocumentAuditTrails_Users_AssignToUserId]
GO
ALTER TABLE [dbo].[DocumentAuditTrails]  WITH CHECK ADD  CONSTRAINT [FK_DocumentAuditTrails_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentAuditTrails] CHECK CONSTRAINT [FK_DocumentAuditTrails_Users_CreatedBy]
GO
ALTER TABLE [dbo].[DocumentRolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentRolePermissions_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
GO
ALTER TABLE [dbo].[DocumentRolePermissions] CHECK CONSTRAINT [FK_DocumentRolePermissions_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentRolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentRolePermissions_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[DocumentRolePermissions] CHECK CONSTRAINT [FK_DocumentRolePermissions_Roles_RoleId]
GO
ALTER TABLE [dbo].[DocumentRolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentRolePermissions_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentRolePermissions] CHECK CONSTRAINT [FK_DocumentRolePermissions_Users_CreatedBy]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Users_CreatedBy]
GO
ALTER TABLE [dbo].[DocumentUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentUserPermissions_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
GO
ALTER TABLE [dbo].[DocumentUserPermissions] CHECK CONSTRAINT [FK_DocumentUserPermissions_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentUserPermissions_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentUserPermissions] CHECK CONSTRAINT [FK_DocumentUserPermissions_Users_CreatedBy]
GO
ALTER TABLE [dbo].[DocumentUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentUserPermissions_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentUserPermissions] CHECK CONSTRAINT [FK_DocumentUserPermissions_Users_UserId]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Operations_OperationId] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Operations_OperationId]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Screens_ScreenId] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screens] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Screens_ScreenId]
GO
ALTER TABLE [dbo].[ScreenOperations]  WITH CHECK ADD  CONSTRAINT [FK_ScreenOperations_Operations_OperationId] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScreenOperations] CHECK CONSTRAINT [FK_ScreenOperations_Operations_OperationId]
GO
ALTER TABLE [dbo].[ScreenOperations]  WITH CHECK ADD  CONSTRAINT [FK_ScreenOperations_Screens_ScreenId] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screens] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScreenOperations] CHECK CONSTRAINT [FK_ScreenOperations_Screens_ScreenId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Operations_OperationId] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Operations_OperationId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Screens_ScreenId] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screens] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Screens_ScreenId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserNotifications]  WITH CHECK ADD  CONSTRAINT [FK_UserNotifications_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
GO
ALTER TABLE [dbo].[UserNotifications] CHECK CONSTRAINT [FK_UserNotifications_Documents_DocumentId]
GO
ALTER TABLE [dbo].[UserNotifications]  WITH CHECK ADD  CONSTRAINT [FK_UserNotifications_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserNotifications] CHECK CONSTRAINT [FK_UserNotifications_Users_CreatedBy]
GO
ALTER TABLE [dbo].[UserNotifications]  WITH CHECK ADD  CONSTRAINT [FK_UserNotifications_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserNotifications] CHECK CONSTRAINT [FK_UserNotifications_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
/****** Object:  StoredProcedure [dbo].[NLog_AddEntry_p]    Script Date: 10/06/2021 12:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NLog_AddEntry_p] (
  @machineName nvarchar(200),
  @logged datetime,
  @level varchar(5),
  @message nvarchar(max),
  @logger nvarchar(300),
  @properties nvarchar(max),
  @callsite nvarchar(300),
  @exception nvarchar(max)
) AS
BEGIN
  INSERT INTO [dbo].[NLog] (
	[Id],
    [MachineName],
    [Logged],
    [Level],
    [Message],
    [Logger],
    [Properties],
    [Callsite],
    [Exception]
  ) VALUES (
    newid(),
    @machineName,
    @logged,
    @level,
    @message,
    @logger,
    @properties,
    @callsite,
    @exception
  )
  END
GO
