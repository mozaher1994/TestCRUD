USE [master]
GO
/****** Object:  Database [dbCRUD]    Script Date: 7/19/2019 6:28:18 PM ******/
CREATE DATABASE [dbCRUD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbCRUD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dbCRUD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbCRUD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dbCRUD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbCRUD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbCRUD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbCRUD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbCRUD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbCRUD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbCRUD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbCRUD] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbCRUD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbCRUD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbCRUD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbCRUD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbCRUD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbCRUD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbCRUD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbCRUD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbCRUD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbCRUD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbCRUD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbCRUD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbCRUD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbCRUD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbCRUD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbCRUD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbCRUD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbCRUD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbCRUD] SET  MULTI_USER 
GO
ALTER DATABASE [dbCRUD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbCRUD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbCRUD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbCRUD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbCRUD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbCRUD] SET QUERY_STORE = OFF
GO
USE [dbCRUD]
GO
/****** Object:  Table [dbo].[BusinessEntities]    Script Date: 7/19/2019 6:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntities](
	[BusinessId] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[City] [nvarchar](150) NULL,
	[State] [nvarchar](150) NULL,
	[Zip] [nvarchar](50) NULL,
	[Country] [nvarchar](150) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[ReferredBy] [nvarchar](50) NULL,
	[Logo] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Balance] [decimal](18, 2) NOT NULL,
	[LoginUrl] [nvarchar](50) NULL,
	[SecurityCode] [nvarchar](50) NULL,
	[SMTPServer] [nvarchar](50) NULL,
	[SMTPPort] [int] NOT NULL,
	[SMTPUsername] [nvarchar](50) NULL,
	[SMTPPassword] [nvarchar](50) NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[CurrentBalance] [decimal](18, 2) NOT NULL,
	[REGENT] [bit] NULL,
	[NOVO] [bit] NULL,
	[GALILEO] [bit] NULL,
	[USBS] [bit] NULL,
	[INDIGO] [bit] NULL,
	[B2B] [bit] NULL,
	[B2C] [bit] NULL,
	[NEW] [bit] NULL,
	[ACTIVE] [bit] NULL,
	[INACTIV] [bit] NULL,
	[LOCKED] [bit] NULL,
	[MarkupPlan] [int] NULL,
 CONSTRAINT [PK_dbo.BusinessEntities] PRIMARY KEY CLUSTERED 
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarkupPlan]    Script Date: 7/19/2019 6:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarkupPlan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Plans] [varchar](550) NULL,
 CONSTRAINT [PK_MarkupPlan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BusinessEntities] ON 

INSERT [dbo].[BusinessEntities] ([BusinessId], [Code], [Email], [Name], [Street], [City], [State], [Zip], [Country], [Mobile], [Phone], [ContactPerson], [ReferredBy], [Logo], [Status], [Balance], [LoginUrl], [SecurityCode], [SMTPServer], [SMTPPort], [SMTPUsername], [SMTPPassword], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [CurrentBalance], [REGENT], [NOVO], [GALILEO], [USBS], [INDIGO], [B2B], [B2C], [NEW], [ACTIVE], [INACTIV], [LOCKED], [MarkupPlan]) VALUES (1, N'11111', N'pat1@mail.com', N'Test', N'test', N'test', N'sdfsd', N'1111', N'', N'880-1839-555609', N'123-123-1234', N'', N'', N'', 0, CAST(0.00 AS Decimal(18, 2)), N'', N'', N'', 0, N'', N'', 0, CAST(N'2019-07-19T10:15:16.063' AS DateTime), CAST(N'2019-07-19T10:15:16.063' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[BusinessEntities] ([BusinessId], [Code], [Email], [Name], [Street], [City], [State], [Zip], [Country], [Mobile], [Phone], [ContactPerson], [ReferredBy], [Logo], [Status], [Balance], [LoginUrl], [SecurityCode], [SMTPServer], [SMTPPort], [SMTPUsername], [SMTPPassword], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [CurrentBalance], [REGENT], [NOVO], [GALILEO], [USBS], [INDIGO], [B2B], [B2C], [NEW], [ACTIVE], [INACTIV], [LOCKED], [MarkupPlan]) VALUES (3, N'11112', N'lab@gmail.com', N'Test2', N'sdfasdfasd', N'qqqq', N'sdfsd', N'1111', N'', N'880-1839-555609', N'123-123-1234', N'', N'', N'', 0, CAST(0.00 AS Decimal(18, 2)), N'', N'', N'', 0, N'', N'', 0, CAST(N'2019-07-19T10:20:08.940' AS DateTime), CAST(N'2019-07-19T10:20:08.940' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[BusinessEntities] OFF
SET IDENTITY_INSERT [dbo].[MarkupPlan] ON 

INSERT [dbo].[MarkupPlan] ([Id], [Plans]) VALUES (1, N'HT Agent and Transection above 15 lac')
SET IDENTITY_INSERT [dbo].[MarkupPlan] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BusinessEntities]    Script Date: 7/19/2019 6:28:21 PM ******/
ALTER TABLE [dbo].[BusinessEntities] ADD  CONSTRAINT [IX_BusinessEntities] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BusinessEntities]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntities_MarkupPlan] FOREIGN KEY([MarkupPlan])
REFERENCES [dbo].[MarkupPlan] ([Id])
GO
ALTER TABLE [dbo].[BusinessEntities] CHECK CONSTRAINT [FK_BusinessEntities_MarkupPlan]
GO
/****** Object:  StoredProcedure [dbo].[prcGetData]    Script Date: 7/19/2019 6:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcGetData]
	@id int=0
AS
BEGIN
	if @id=0
	begin
		-- table[0] for List
		select convert(varchar,createdonutc,106),Code,Name,MarkupPlan.Plans,Mobile,Email,Balance,BusinessId 
		from BusinessEntities inner join MarkupPlan on MarkupPlan.Id=BusinessEntities.MarkupPlan

		-- table[1] for markupPlane
		select  * from MarkupPlan
	end
	else
	begin
		select  * from BusinessEntities inner join MarkupPlan on MarkupPlan.Id=BusinessEntities.MarkupPlan 
		
		where BusinessId=@id
	end
END
GO
USE [master]
GO
ALTER DATABASE [dbCRUD] SET  READ_WRITE 
GO
