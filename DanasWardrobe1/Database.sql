USE [master]
GO
/****** Object:  Database [DanaWardrobe1]    Script Date: 11/6/2017 10:48:06 PM ******/
CREATE DATABASE [DanaWardrobe1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DanaWardrobe1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DanaWardrobe1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DanaWardrobe1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DanaWardrobe1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DanaWardrobe1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DanaWardrobe1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DanaWardrobe1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DanaWardrobe1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DanaWardrobe1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DanaWardrobe1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DanaWardrobe1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DanaWardrobe1] SET  MULTI_USER 
GO
ALTER DATABASE [DanaWardrobe1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DanaWardrobe1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DanaWardrobe1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DanaWardrobe1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DanaWardrobe1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DanaWardrobe1]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 11/6/2017 10:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pants]    Script Date: 11/6/2017 10:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pants](
	[PantsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Pants] PRIMARY KEY CLUSTERED 
(
	[PantsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shirt]    Script Date: 11/6/2017 10:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shirt](
	[ShirtID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shirt] PRIMARY KEY CLUSTERED 
(
	[ShirtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 11/6/2017 10:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Watch', N'/Content/Images/Mens watch.jpg', N'Non-smart', N'Black', N'Any', N'Any')
INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Tie Clip', N'/Content/Images/tieclip.jpg', N'Tie Clip', N'Black', N'Any', N'Business')
INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Necklace', N'/Content/Images/skullnecklace.jpg', N'Skull', N'Silver', N'Any', N'Casual')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Pants] ON 

INSERT [dbo].[Pants] ([PantsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Dress Pants', N'/Content/Images/greydress.jpg', N'Work pants', N'grey', N'Any', N'Business')
INSERT [dbo].[Pants] ([PantsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Sweatpants', N'/Content/Images/greysweatpants.jpg', N'Comfy', N'Grey', N'Fall/Winter', N'Casual')
INSERT [dbo].[Pants] ([PantsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Jeans', N'/Content/Images/Jeans.jpg', N'Ripped Jeans', N'Denim', N'Any', N'Casual')
SET IDENTITY_INSERT [dbo].[Pants] OFF
SET IDENTITY_INSERT [dbo].[Shirt] ON 

INSERT [dbo].[Shirt] ([ShirtID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Cavs Championship T-shirt', N'/Content/Images/Cavs Tshirt.jpg', N'Shirt', N'Black', N'Summer/Spring', N'Casual')
INSERT [dbo].[Shirt] ([ShirtID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Indians Long Sleeve', N'/Content/Images/Indians shirt.jpg', N'Long Sleeve', N'Dark blue', N'Fall/Winter', N'Casual')
INSERT [dbo].[Shirt] ([ShirtID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Button up', N'/Content/Images/buttonup.jpg', N'Dress shirt', N'Blue', N'Fall/Winter', N'Business')
SET IDENTITY_INSERT [dbo].[Shirt] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Jordans', N'/Content/Images/Jordans shoes.jpg', N'Tennis shoes', N'Black', N'Any', N'Casual/Sports')
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Timberlands', N'/Content/Images/tims.jpg', N'Work Boots', N'Leather', N'Any', N'Business/Casual')
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Work Shoes', N'/Content/Images/blackshoes.jpg', N'Dress shoes', N'Black', N'Any', N'Business')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
USE [master]
GO
ALTER DATABASE [DanaWardrobe1] SET  READ_WRITE 
GO
