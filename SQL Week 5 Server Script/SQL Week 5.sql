USE [master]
GO
/****** Object:  Database [SocialStats]    Script Date: 9/25/2022 10:19:59 PM ******/
CREATE DATABASE [SocialStats]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SocialStats', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SocialStats.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SocialStats_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SocialStats_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SocialStats] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SocialStats].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SocialStats] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SocialStats] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SocialStats] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SocialStats] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SocialStats] SET ARITHABORT OFF 
GO
ALTER DATABASE [SocialStats] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SocialStats] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SocialStats] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SocialStats] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SocialStats] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SocialStats] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SocialStats] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SocialStats] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SocialStats] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SocialStats] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SocialStats] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SocialStats] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SocialStats] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SocialStats] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SocialStats] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SocialStats] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SocialStats] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SocialStats] SET RECOVERY FULL 
GO
ALTER DATABASE [SocialStats] SET  MULTI_USER 
GO
ALTER DATABASE [SocialStats] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SocialStats] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SocialStats] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SocialStats] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SocialStats] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SocialStats] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SocialStats', N'ON'
GO
ALTER DATABASE [SocialStats] SET QUERY_STORE = OFF
GO
USE [SocialStats]
GO
/****** Object:  Table [dbo].[Courage]    Script Date: 9/25/2022 10:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courage](
	[Rank] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Points] [int] NOT NULL,
	[Bonds] [nchar](10) NULL,
 CONSTRAINT [PK_Courage] PRIMARY KEY CLUSTERED 
(
	[Rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diligence]    Script Date: 9/25/2022 10:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diligence](
	[Rank] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Points] [int] NOT NULL,
	[Bonds] [nchar](10) NULL,
 CONSTRAINT [PK_Diligence] PRIMARY KEY CLUSTERED 
(
	[Rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expression]    Script Date: 9/25/2022 10:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expression](
	[Rank] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](15) NOT NULL,
	[Points] [int] NOT NULL,
	[Bond] [nchar](10) NULL,
 CONSTRAINT [PK_Expression] PRIMARY KEY CLUSTERED 
(
	[Rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Knowledge]    Script Date: 9/25/2022 10:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knowledge](
	[Rank] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Points] [int] NOT NULL,
	[Bonds] [nchar](10) NULL,
 CONSTRAINT [PK_Knowledge] PRIMARY KEY CLUSTERED 
(
	[Rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 9/25/2022 10:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[Player_ID] [int] IDENTITY(1,1) NOT NULL,
	[Player_Name] [nchar](10) NOT NULL,
	[Courage] [int] NOT NULL,
	[Diligence] [int] NOT NULL,
	[Understanding] [int] NOT NULL,
	[Expression] [int] NOT NULL,
	[Knowledge] [int] NOT NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[Player_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Understanding]    Script Date: 9/25/2022 10:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Understanding](
	[Rank] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Points] [int] NOT NULL,
	[Bonds] [nchar](10) NULL,
 CONSTRAINT [PK_Understanding] PRIMARY KEY CLUSTERED 
(
	[Rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Courage] ON 

INSERT [dbo].[Courage] ([Rank], [Name], [Points], [Bonds]) VALUES (1, N'Average   ', 0, NULL)
INSERT [dbo].[Courage] ([Rank], [Name], [Points], [Bonds]) VALUES (2, N'Reliable  ', 16, NULL)
INSERT [dbo].[Courage] ([Rank], [Name], [Points], [Bonds]) VALUES (3, N'Brave     ', 40, N'Devil     ')
INSERT [dbo].[Courage] ([Rank], [Name], [Points], [Bonds]) VALUES (4, N'Daring    ', 80, NULL)
INSERT [dbo].[Courage] ([Rank], [Name], [Points], [Bonds]) VALUES (5, N'Heroic    ', 140, N'Justice   ')
SET IDENTITY_INSERT [dbo].[Courage] OFF
GO
SET IDENTITY_INSERT [dbo].[Diligence] ON 

INSERT [dbo].[Diligence] ([Rank], [Name], [Points], [Bonds]) VALUES (1, N'Callow    ', 0, NULL)
INSERT [dbo].[Diligence] ([Rank], [Name], [Points], [Bonds]) VALUES (2, N'Persistent', 16, NULL)
INSERT [dbo].[Diligence] ([Rank], [Name], [Points], [Bonds]) VALUES (3, N'Strong    ', 40, N'Strength  ')
INSERT [dbo].[Diligence] ([Rank], [Name], [Points], [Bonds]) VALUES (4, N'Thorough  ', 80, N'Null      ')
INSERT [dbo].[Diligence] ([Rank], [Name], [Points], [Bonds]) VALUES (5, N'Rock Solid', 130, N'Chariot   ')
SET IDENTITY_INSERT [dbo].[Diligence] OFF
GO
SET IDENTITY_INSERT [dbo].[Expression] ON 

INSERT [dbo].[Expression] ([Rank], [Name], [Points], [Bond]) VALUES (1, N'Rough          ', 0, NULL)
INSERT [dbo].[Expression] ([Rank], [Name], [Points], [Bond]) VALUES (2, N'Eloquent       ', 13, NULL)
INSERT [dbo].[Expression] ([Rank], [Name], [Points], [Bond]) VALUES (3, N'Persuasive     ', 33, N'Hanged Man')
INSERT [dbo].[Expression] ([Rank], [Name], [Points], [Bond]) VALUES (4, N'Touching       ', 53, NULL)
INSERT [dbo].[Expression] ([Rank], [Name], [Points], [Bond]) VALUES (5, N'Enthralling    ', 85, N'Lovers    ')
SET IDENTITY_INSERT [dbo].[Expression] OFF
GO
SET IDENTITY_INSERT [dbo].[Knowledge] ON 

INSERT [dbo].[Knowledge] ([Rank], [Name], [Points], [Bonds]) VALUES (1, N'Aware     ', 0, NULL)
INSERT [dbo].[Knowledge] ([Rank], [Name], [Points], [Bonds]) VALUES (2, N'Informed  ', 30, NULL)
INSERT [dbo].[Knowledge] ([Rank], [Name], [Points], [Bonds]) VALUES (3, N'Expert    ', 80, N'Empress   ')
INSERT [dbo].[Knowledge] ([Rank], [Name], [Points], [Bonds]) VALUES (4, N'Professor ', 150, NULL)
INSERT [dbo].[Knowledge] ([Rank], [Name], [Points], [Bonds]) VALUES (5, N'Sage      ', 240, N'Priestess ')
SET IDENTITY_INSERT [dbo].[Knowledge] OFF
GO
SET IDENTITY_INSERT [dbo].[Players] ON 

INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Courage], [Diligence], [Understanding], [Expression], [Knowledge]) VALUES (1, N'Brent     ', 2, 3, 3, 1, 3)
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Courage], [Diligence], [Understanding], [Expression], [Knowledge]) VALUES (2, N'Tyler     ', 2, 3, 2, 2, 4)
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Courage], [Diligence], [Understanding], [Expression], [Knowledge]) VALUES (3, N'Sean      ', 3, 3, 3, 3, 3)
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Courage], [Diligence], [Understanding], [Expression], [Knowledge]) VALUES (4, N'Barry     ', 3, 2, 2, 2, 2)
SET IDENTITY_INSERT [dbo].[Players] OFF
GO
SET IDENTITY_INSERT [dbo].[Understanding] ON 

INSERT [dbo].[Understanding] ([Rank], [Name], [Points], [Bonds]) VALUES (1, N'Basic     ', 0, NULL)
INSERT [dbo].[Understanding] ([Rank], [Name], [Points], [Bonds]) VALUES (2, N'Kindly    ', 16, NULL)
INSERT [dbo].[Understanding] ([Rank], [Name], [Points], [Bonds]) VALUES (3, N'Generous  ', 40, N'Hanged Man')
INSERT [dbo].[Understanding] ([Rank], [Name], [Points], [Bonds]) VALUES (4, N'Motherly  ', 80, NULL)
INSERT [dbo].[Understanding] ([Rank], [Name], [Points], [Bonds]) VALUES (5, N'Saintly   ', 140, N'Aeon      ')
SET IDENTITY_INSERT [dbo].[Understanding] OFF
GO
USE [master]
GO
ALTER DATABASE [SocialStats] SET  READ_WRITE 
GO
