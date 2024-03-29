USE [master]
GO
/****** Object:  Database [Construction]    Script Date: 12/23/2014 11:43:15 ******/
CREATE DATABASE [Construction] ON  PRIMARY 
( NAME = N'Construction', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Construction.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Construction_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Construction_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Construction] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Construction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Construction] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Construction] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Construction] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Construction] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Construction] SET ARITHABORT OFF
GO
ALTER DATABASE [Construction] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Construction] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Construction] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Construction] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Construction] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Construction] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Construction] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Construction] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Construction] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Construction] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Construction] SET  DISABLE_BROKER
GO
ALTER DATABASE [Construction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Construction] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Construction] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Construction] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Construction] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Construction] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Construction] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Construction] SET  READ_WRITE
GO
ALTER DATABASE [Construction] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Construction] SET  MULTI_USER
GO
ALTER DATABASE [Construction] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Construction] SET DB_CHAINING OFF
GO
USE [Construction]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 12/23/2014 11:43:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rate](
	[Cem] [varchar](50) NULL,
	[Labour] [varchar](50) NULL,
	[Steel] [varchar](50) NULL,
	[Brick] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Rate] ([Cem], [Labour], [Steel], [Brick]) VALUES (N'300', N'100', N'100', N'100')
/****** Object:  Table [dbo].[Log]    Script Date: 12/23/2014 11:43:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[ID] [varchar](50) NULL,
	[PName] [varchar](50) NULL,
	[LCost] [varchar](50) NULL,
	[RCost] [varchar](50) NULL,
	[Amenities] [varchar](50) NULL,
	[MCost] [varchar](50) NULL,
	[Days] [varchar](50) NULL,
	[Total] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1001', N'nhvf', N'30000', N'1619200', N'0', N'164920', N'1 Year', N'1814120')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1002', N';pokll', N'30000', N'1619200', N'0', N'164920', N'1 Year', N'1814120')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1003', N'yu', N'30000', N'1619200', N'0', N'164920', N'1 Year', N'1814120')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1004', N'ikl', N'30000', N'1619200', N'0', N'164920', N'1 Year', N'1814120')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1005', N'Aviva', N'6000', N'1619200', N'0', N'162520', N'1 Year', N'1787720')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1006', N'Aviva', N'6000', N'1619200', N'0', N'162520', N'1 Year', N'1787720')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1007', N'klkjhfydt', N'6000', N'1619200', N'0', N'162520', N'1 Year', N'1787720')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1008', N'sfsf', N'6000', N'1619200', N'0', N'162520', N'1 Year', N'1787720')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1009', N'sfsfs', N'6000', N'1619200', N'550000', N'217520', N'1 Year', N'2392720')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1010', N'sfsfs', N'6000', N'1619200', N'550000', N'217520', N'1 Year', N'2392720')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1011', N'sfsfs', N'6000', N'1619200', N'550000', N'217520', N'1 Year', N'2392720')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1012', N'sfs', N'9000', N'2428800', N'825000', N'326280', N'1 Year', N'2392720')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1013', N';kjh', N'3285000', N'2428800', N'825000', N'326280', N'1 Year', N'2392720')
INSERT [dbo].[Log] ([ID], [PName], [LCost], [RCost], [Amenities], [MCost], [Days], [Total]) VALUES (N'1014', N'zcz', N'2190000', N'1619200', N'550000', N'217520', N'1 Year', N'4576720')
/****** Object:  Table [dbo].[Admin]    Script Date: 12/23/2014 11:43:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([ID], [Pass]) VALUES (N'1', N'Admin')
