IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Suppliers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [FK_Orders_UserDetails]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderProducts]') AND type in (N'U'))
ALTER TABLE [dbo].[OrderProducts] DROP CONSTRAINT IF EXISTS [FK_OrderProducts_Orders]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT IF EXISTS [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP INDEX IF EXISTS [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP INDEX IF EXISTS [EmailIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP INDEX IF EXISTS [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP INDEX IF EXISTS [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP INDEX IF EXISTS [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP INDEX IF EXISTS [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP INDEX IF EXISTS [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[UserDetails]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Suppliers]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Orders]
GO
/****** Object:  Table [dbo].[OrderProducts]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[OrderProducts]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Database [StoreFront1]    Script Date: 11/30/2023 2:51:33 PM ******/
DROP DATABASE IF EXISTS [StoreFront1]
GO
/****** Object:  Database [StoreFront1]    Script Date: 11/30/2023 2:51:33 PM ******/
CREATE DATABASE [StoreFront1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StoreFront1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\StoreFront1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StoreFront1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\StoreFront1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [StoreFront1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StoreFront1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StoreFront1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StoreFront1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StoreFront1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StoreFront1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StoreFront1] SET ARITHABORT OFF 
GO
ALTER DATABASE [StoreFront1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StoreFront1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StoreFront1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StoreFront1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StoreFront1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StoreFront1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StoreFront1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StoreFront1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StoreFront1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StoreFront1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StoreFront1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StoreFront1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StoreFront1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StoreFront1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StoreFront1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StoreFront1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StoreFront1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StoreFront1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StoreFront1] SET  MULTI_USER 
GO
ALTER DATABASE [StoreFront1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StoreFront1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StoreFront1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StoreFront1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StoreFront1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StoreFront1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [StoreFront1] SET QUERY_STORE = ON
GO
ALTER DATABASE [StoreFront1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/30/2023 2:51:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Animal] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProducts]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProducts](
	[OrderProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [smallint] NULL,
	[ProductPrice] [money] NOT NULL,
 CONSTRAINT [PK_OrderProducts] PRIMARY KEY CLUSTERED 
(
	[OrderProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShipName] [varchar](100) NOT NULL,
	[ShipCity] [varchar](50) NOT NULL,
	[ShipState] [char](2) NULL,
	[ShipZip] [char](5) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](200) NOT NULL,
	[ProductPrice] [money] NOT NULL,
	[ProductDescription] [varchar](500) NULL,
	[IsDiscontinued] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SupplierId] [int] NULL,
	[ProductImage] [varchar](75) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](100) NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[State] [char](2) NULL,
	[Zip] [char](5) NULL,
	[Phone] [varchar](24) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 11/30/2023 2:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Address] [varchar](150) NULL,
	[City] [varchar](50) NULL,
	[State] [char](2) NULL,
	[Phone] [varchar](24) NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.15')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'83c92544-b531-4a10-aa84-80b44dc7d175', N'user', N'USER', N'26ff3d46-8cc6-4e49-952c-fb5838935dfa')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'866e7608-ea1b-4aa5-b98e-aa5ff4440896', N'test', N'TEST', N'23beddc3-6301-45a7-be27-f0c69139fd38')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a368136e-250d-4b54-a2d1-5afa3fb39b20', N'Admin', N'ADMIN', N'b6c1eaad-34d0-403c-8f52-84c81368d161')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1f740e13-f64d-4c05-bafa-f7b89f164b46', N'a368136e-250d-4b54-a2d1-5afa3fb39b20')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1f740e13-f64d-4c05-bafa-f7b89f164b46', N'admin@petdepot.com', N'ADMIN@PETDEPOT.COM', N'admin@petdepot.com', N'ADMIN@PETDEPOT.COM', 1, N'AQAAAAEAACcQAAAAEOKef6T0qbhoznTywbsq/Af3nFgumZvetq6z3r5seafYxuEq4s2no7W9NFER6yTG3w==', N'HM5E34JZPVOP6SJBZ7GRK52UURIUXROP', N'34b61ce4-becf-40d4-8720-5a45133fd71f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'55b7fe45-1ea7-4f22-a9ff-6797597c4bc5', N'user@petdepot.com', N'USER@PETDEPOT.COM', N'user@petdepot.com', N'USER@PETDEPOT.COM', 1, N'AQAAAAEAACcQAAAAEKQ/p9/c6epOSicY+VgphWfqxy/BH1PliiXCIWgou9tuNsjDkG75z+e7rtPwCPuAOg==', N'GNKU3PZMTYBF65ZUGLNDXGOYCKBDVLLB', N'ddc79054-10da-4072-85b5-bf21c5a1b62e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'592e415f-2243-450d-8dfd-c316450e31cb', N'testadmin@test.com', N'TESTADMIN@TEST.COM', N'testadmin@test.com', N'TESTADMIN@TEST.COM', 1, N'AQAAAAEAACcQAAAAEPgYWp4wfzeseyobE1ZH2MtO1j+jPK4trcjLwhI/T3jZkO/D7bDwz/IUYXkKeopK9Q==', N'FAIFEP5EOGEISH6B77YSG62KZHDB4FNS', N'faee8576-b927-469b-8795-d95e4707d588', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c9c2e0ae-d548-47e0-bf7c-86a7eea5139c', N'zbateman0118@gmail.com', N'ZBATEMAN0118@GMAIL.COM', N'zbateman0118@gmail.com', N'ZBATEMAN0118@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKAm4Ul7NK3TZen2oOIB1l9hXipZKyUWJhy/dqGVgGvsvYt1Nd4YJDi9U+gsHpkhlg==', N'ITGXLFBKMSC6BVTB5OUI2XXJIGK2TUY5', N'8389a5c2-3927-4003-b3db-2328b644f1d4', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Animal]) VALUES (1, N'Cat')
INSERT [dbo].[Categories] ([CategoryId], [Animal]) VALUES (2, N'Dog')
INSERT [dbo].[Categories] ([CategoryId], [Animal]) VALUES (3, N'Bird')
INSERT [dbo].[Categories] ([CategoryId], [Animal]) VALUES (4, N'Lizard')
INSERT [dbo].[Categories] ([CategoryId], [Animal]) VALUES (5, N'Rabbit')
INSERT [dbo].[Categories] ([CategoryId], [Animal]) VALUES (6, N'Fish')
INSERT [dbo].[Categories] ([CategoryId], [Animal]) VALUES (7, N'pig')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (2, N'Dog Food', 29.9900, N'Premium dog food, specially formulated for adult dogs.', 0, 2, 1, N'Screenshot 2023-10-15 202316.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (3, N'Cat Litter', 12.9900, N'High-quality clumping cat litter for odor control.', 0, 1, 6, N'Screenshot 2023-10-15 203118.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (4, N'Dog Leash

', 9.9900, N'Durable nylon dog leash with a comfortable handle.', 0, 2, 2, N'Screenshot 2023-10-15 203153.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (5, N'Cat Scratching Post

', 19.9900, N'Sisal-wrapped cat scratching post for healthy claws.', 0, 1, 11, N'Screenshot 2023-10-15 203251.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (6, N'Fish Tank

', 69.9900, N'Glass aquarium with LED lights and filter system.', 0, 6, 9, N'Screenshot 2023-10-15 203344.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (7, N'Bird Cage', 49.9900, N'Spacious bird cage with perches and feeders.', 0, 3, 7, N'Screenshot 2023-10-15 203413.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (8, N'Hamster Cage', 34.9900, N'Multi-level hamster cage with tunnels and wheel.', 0, 5, 13, N'Screenshot 2023-10-15 203450.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (9, N'Dog Shampoo', 7.9900, N'Gentle pet shampoo for dogs with sensitive skin', 0, 2, 12, N'Screenshot 2023-10-15 203548.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (10, N'Cat Bed', 24.9900, N'Plush pet bed for small to medium-sized pets', 0, 1, 11, N'Screenshot 2023-10-15 203620.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (11, N'Dog Toys', 14.9900, N'Assorted squeaky chew toys for dogs', 0, 2, 2, N'Screenshot 2023-10-15 203733.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (12, N'Cat Toys', 11.9900, N'Variety pack of interactive toys to entertain cats', 0, 1, 6, N'Screenshot 2023-10-15 203807.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (13, N'Aquarium Plants', 5.9900, N'Artificial aquatic plants to enhance your fish tank.', 1, 6, 9, N'Screenshot 2023-10-15 203920.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (14, N'Cat Carrier', 29.9900, N'Sturdy cat carrier with a comfortable padded interior.', 0, 1, 13, N'Screenshot 2023-10-15 204014.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (15, N'Reptile Heat Lamp', 16.9900, N'Heat lamp and bulb for reptile terrariums', 0, 4, 8, N'Screenshot 2023-10-15 204039.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (16, N'Small Animal Bedding', 6.9900, N'Soft and absorbent bedding for small rodents.', 1, 5, 13, N'Screenshot 2023-10-15 204138.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (17, N'Cat Brush', 10.9900, N'Brush with soft bristles for pet grooming and shedding control.', 0, 1, 2, N'Screenshot 2023-10-15 204208.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (18, N'Fish Food', 4.9900, N'Nutritionally balanced fish flakes for tropical fish', 0, 6, 9, N'Screenshot 2023-10-15 204231.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (19, N'Dog Tag', 3.9900, N'Customizable engraved ID tag for your dog''s collar', 1, 2, 12, N'Screenshot 2023-10-15 204358.png')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductDescription], [IsDiscontinued], [CategoryId], [SupplierId], [ProductImage]) VALUES (20, N'Crickets', 5.9900, N'Food for lizards', 0, 4, 8, N'Screenshot 2023-10-15 204429.png')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [Address], [City], [State], [Zip], [Phone]) VALUES (1, N'PetPro Distributors', N'PetPro Distributors', N'Petville', N'CA', N'90210', N' (555) 555-1234')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [Address], [City], [State], [Zip], [Phone]) VALUES (2, N'Animal Essentials Inc.', N'456 Oak Avenue', N'Pawsville', N'NY', N'10001', N'(555) 555-5678')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [Address], [City], [State], [Zip], [Phone]) VALUES (6, N'Paws and Claws Supplies', N'789 Elm Road', N'Furborough', N'TX', N'12105', N'(555) 555-9876')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [Address], [City], [State], [Zip], [Phone]) VALUES (7, N'Feathered Friends Supply Co.', N'567 Pine Street', N'Beaktown', N'OR', N'97201', N'(555) 555-6789
')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [Address], [City], [State], [Zip], [Phone]) VALUES (8, N'Scaley Sensations

', N' 890 Maple Drive', N'Reptilia', N'AZ', N'85001', N'(555) 555-2345')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [Address], [City], [State], [Zip], [Phone]) VALUES (9, N'AquaWorld Supply', N'234 Coral Avenue', N'Finville', N'WA', N'98101', N' (555) 555-8765')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [Address], [City], [State], [Zip], [Phone]) VALUES (11, N'Purrfect Pet Products', N' 456 Whisker Way', N'Meowington', N'MO', N'48201', N' (555) 555-6543')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [Address], [City], [State], [Zip], [Phone]) VALUES (12, N'BarkBox Distributors', N'987 Tail Trail', N'Woofington', N'GA', N'30301', N'(555) 555-3456')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [Address], [City], [State], [Zip], [Phone]) VALUES (13, N'Fluffy Friends Supply', N' 543 Fur Lane', N'Snuggleburg', N'IL', N'60601', N' (555) 555-4321')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/30/2023 2:51:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/30/2023 2:51:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/30/2023 2:51:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/30/2023 2:51:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/30/2023 2:51:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/30/2023 2:51:34 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/30/2023 2:51:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_UserDetails] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserDetails] ([UserId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_UserDetails]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([SupplierId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER DATABASE [StoreFront1] SET  READ_WRITE 
GO
