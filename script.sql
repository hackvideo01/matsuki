USE [master]
GO
/****** Object:  Database [matsuki]    Script Date: 2021/08/19 18:59:53 ******/
CREATE DATABASE [matsuki]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'matsuki', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\matsuki.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'matsuki_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\matsuki_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [matsuki] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [matsuki].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [matsuki] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [matsuki] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [matsuki] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [matsuki] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [matsuki] SET ARITHABORT OFF 
GO
ALTER DATABASE [matsuki] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [matsuki] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [matsuki] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [matsuki] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [matsuki] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [matsuki] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [matsuki] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [matsuki] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [matsuki] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [matsuki] SET  DISABLE_BROKER 
GO
ALTER DATABASE [matsuki] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [matsuki] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [matsuki] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [matsuki] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [matsuki] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [matsuki] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [matsuki] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [matsuki] SET RECOVERY FULL 
GO
ALTER DATABASE [matsuki] SET  MULTI_USER 
GO
ALTER DATABASE [matsuki] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [matsuki] SET DB_CHAINING OFF 
GO
ALTER DATABASE [matsuki] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [matsuki] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [matsuki] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [matsuki] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'matsuki', N'ON'
GO
ALTER DATABASE [matsuki] SET QUERY_STORE = OFF
GO
USE [matsuki]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 2021/08/19 18:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](1000) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[ImageType] [nvarchar](50) NULL,
	[HouseNo] [varchar](100) NULL,
 CONSTRAINT [PK__Image__7516F70C5B918074] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalManagementDB]    Script Date: 2021/08/19 18:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalManagementDB](
	[HouseNo] [varchar](100) NOT NULL,
	[HouseName] [nvarchar](100) NULL,
	[HousePost] [nvarchar](50) NULL,
	[HouseAddress] [nvarchar](500) NULL,
	[NearestSation] [nvarchar](500) NULL,
	[HouseType] [nvarchar](250) NULL,
	[Construction] [nvarchar](500) NULL,
	[YearConstruction] [nvarchar](250) NULL,
	[Decorate] [nvarchar](500) NULL,
	[TotalArea] [nvarchar](200) NULL,
	[Parking] [nvarchar](500) NULL,
	[Pets] [nvarchar](500) NULL,
	[OtherEquipment] [nvarchar](1000) NULL,
	[HouseRemarks] [nvarchar](1000) NULL,
	[SecurityDeposit] [nvarchar](1000) NULL,
	[KeyMoney] [nvarchar](150) NULL,
	[CommonFee] [nvarchar](500) NULL,
	[ManagementFee] [nvarchar](250) NULL,
	[Rent] [nvarchar](250) NULL,
	[ParkingFee] [nvarchar](250) NULL,
	[OtherFee] [nvarchar](500) NULL,
	[MNGMTCOName] [nvarchar](500) NULL,
	[CompanyAddress] [nvarchar](500) NULL,
	[COPhone] [nvarchar](150) NULL,
	[COFax] [nvarchar](150) NULL,
	[Name] [nvarchar](250) NULL,
	[Address] [nvarchar](500) NULL,
	[Phone] [nvarchar](150) NULL,
	[Fax] [nvarchar](150) NULL,
	[MNGMTForm] [nvarchar](500) NULL,
	[Remarks] [nvarchar](1000) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_RentalManagementDB] PRIMARY KEY CLUSTERED 
(
	[HouseNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK__Image__HouseNo__7C4F7684] FOREIGN KEY([HouseNo])
REFERENCES [dbo].[RentalManagementDB] ([HouseNo])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK__Image__HouseNo__7C4F7684]
GO
USE [master]
GO
ALTER DATABASE [matsuki] SET  READ_WRITE 
GO
