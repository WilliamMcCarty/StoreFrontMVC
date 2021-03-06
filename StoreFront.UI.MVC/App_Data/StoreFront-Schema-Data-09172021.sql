/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5026)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[UserDetails] DROP CONSTRAINT IF EXISTS [FK_UserDetails_AspNetUsers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Suppliers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Sizes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_ProductStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Colors]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Employees]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Department]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[UserDetails]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[Suppliers]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[Sizes]
GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[ProductStatus]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[Images]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[Department]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[Colors]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/17/2021 2:28:23 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
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
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[CategorieParentID] [int] IDENTITY(1,1) NOT NULL,
	[MainCategory] [varchar](25) NOT NULL,
	[ChildCategory] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategorieParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Colors](
	[ColorVariantID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorVariantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Department]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[HireDate] [date] NOT NULL,
	[HomePhone] [nvarchar](20) NOT NULL,
	[Extension] [nvarchar](5) NULL,
	[Notes] [nvarchar](max) NULL,
	[ReportsToID] [int] NULL,
	[DepartmentID] [int] NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [char](2) NOT NULL,
	[Zip] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Images]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Images](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[SizeVariantID] [int] NULL,
	[ColorVariantID] [int] NULL,
	[CategoriesID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[SKU] [nvarchar](15) NOT NULL,
	[Price] [money] NOT NULL,
	[Stock] [int] NOT NULL,
	[StatusID] [int] NULL,
	[ImageID] [int] NOT NULL,
	[ImageID1] [int] NULL,
	[ImageID2] [int] NULL,
	[ImageID3] [int] NULL,
	[ImageID4] [int] NULL,
	[ImageID5] [int] NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](25) NOT NULL,
 CONSTRAINT [PK_ProductStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sizes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sizes](
	[SizeVariantID] [int] IDENTITY(1,1) NOT NULL,
	[Size] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[SizeVariantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[Supplier] [nvarchar](100) NOT NULL,
	[Contact] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[City] [nvarchar](50) NULL,
	[State] [char](2) NULL,
	[Zip] [nvarchar](12) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 9/17/2021 2:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserDetails](
	[UserId] [nvarchar](128) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[FavoriteColor] [varchar](7) NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202108302111252_InitialCreate', N'IdentitySample.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C468EFC2DBB61323E30BA6ED41DE066C89DD1646A2B412E5B511EC97E5219F945F4851A22EBCE9D22D77B7170B2CDC62F154B15845168BC5F9DF7FFE3BFDE9250CAC679CA47E44CEECA3C9A16D61E2469E4F56677646973F7CB27FFAF18F7F985E7AE18BF5B5A43B6174D093A467F613A5F1A9E3A4EE130E513A097D3789D26849276E143AC88B9CE3C3C3BF3947470E06081BB02C6BFA2523D40F71FE037ECE22E2E2986628B8893C1CA4FC3BB4CC7354EB1685388D918BCFEC6B0F435FFA3A47611CE049D1C1B6CE031F8130731C2C6D0B1112514441D4D3C714CF691291D53C860F2878788D31D02D5190623E84D39ABCEF680E8FD9689CBA6309E566298DC2818047275C3D8EDC7D2D25DB95FA408197B9B2D8A87325D6FAFB1205A00099E1E92C4818F1997D53B1384FE35B4C2765C74901799500DCAF51F27DD2443CB07AF73BA8CCE97872C8FE3BB0665940B3049F119CD1040507D67DB6087CF79FF8F521FA8EC9D9C9D16279F2E9C347E49D7CFC2B3EF9D01C298C15E8840FF0E93E89629C806C78598DDFB61CB19F2377ACBA35FA145A015B02CFB0AD1BF4F21993157D029F39FE645B57FE0BF6CA2FDCB81E890F8E049D6892C1CFDB2C08D022C055BBD3CA93FDBF85EBF1878FA370BD45CFFE2A9F7A893F384E027EF50507796BFAE4C7857B09F3FD8D935D2551C87E8BF655B47E9B4759E2B2C14446920794AC3015A59B3AB5F1F632690635BE5997A8FB6FDA4C52D5BCB5A46C40EB7842C962DBDE50CAFBB67C7B5BDC791CC3E4E5A6C534D26670DAFD6A22011C58731A2518BC88D0C9E3F5E4E6EBACB6A1A3BE3644606CBFE725F132447E30C29AD8830B44244B3F097135CA9F23B0404406CB7C8FD2149604EF1F287D6A111DFE1C41F43976B384D91A05637B736EF74F11C1B759B8600EB03D5EA34DCDC3AFD11572C1EF2E09EBB531DEE7C8FD1E65F492781788E247EA9680ECE7831FF60718459C73D7C5697A05C68CBD5904017709784DE8C9F16038B64CED3A269905C80FF54189B4A07E2B49EBC0444FA1042706325D80D226EAE768E5937EA296A466510B8A4E5139D9505119583F4939A559D09CA053CE826AB4902F9FA1F163BE1C76FF83BECD366FD35AD050631E99FC1D139CC032E6DD234A7142EA19E8B36EEC2258C8A78F317DF3BD29E7F41505D9D8ACD6F2867C1118DF1B72D8FDF7865C4CF8FCEC7B2C2AE971122A8901BE17BDFE90D5ED739264DB76076198DB66BE9D35C0E42EE7691AB97EEE059A1C18CF6088F2430C6775A7338AD1C82911181818BACFB63CF80263B365A3BA231738C0145BE76E91239CA1D4459EAA4618903740B07247D50856A74644E1FEA2F0044BC709EB84D82128054FF50955DDC227AE1FA3A0534B52CF9E5B181B7BC5436EB9C031268C61A726FA30D767429800151F6952BA3434751A16D76E8886A8D534E75D216C3DEF4A82622B36D9113B1BEC92C76F6F6298ED1ADB8271B6ABA48F00C6ACDE2E0C949F55FA1A807C70D93703954E4C0603E521D5560C54D4D80E0C5454C9BB33D0E288DA77FEA5F3EABE99A77850DEFEB6DEAAAE1DD8A6A08F3D33CD22F6843E147AE04435CF8B056BC42F5473380339F9F92CE5A1AE6C22F91502A662CAA68E77B571A8D30E221B511B606D681DA0FC3E5001521C6A8070652EAF553A1E450C802DF36EADB07CED97601B36A06237EF451B84E6DB53D9387B9D3EAA9155D6A01879AFC34203476310F2E2250EBC87524C795955317D62E121D17063607C325A14D411B91A94540E66742D95A6D9AD255D40362424DB484B52F864D0523998D1B5C46DB45B499AA0604058B0918AC42D7C24672B331DD56E53B54D9DA2628A7F983A86D2AAE90D8A639FAC1AA556FC8B352FEAAC663FCC87571F850586E3A69A22A44ADA8A138D12B4C2522BB00649AFFC24A51788A20562799E99172A64DABDD5B0FC972C9BDBA73A89E53E5052B3BFC5B55DBCC517B65B351EE1305730C890053579265D6302FAEE16AB7E43014A34C9FB5914642131C758E6DEC5155EB37FF14545983A92FC4A0CA5284C897445EDF79A1BD52FC69BA72A8A597FAECC10268D97316853E7A6B8D48C52A6A99A28A6D4D5CEE6CE14CE0C9D2F39581C3E5D9D086FE35DBC42A509C03F0DC468143928608DB6FEA8621D4A13536CE98F28159B3421A5A60152364B4A04219B0D6BE11934AAA7E8CF412D2269A2ABADFD9135E5244D684DF31AD81A99E5B6FEA89A8A9326B0A6B93F765D7E22AFA37BBC7F198F309B6C60C54177B31DCC80F1368BE2381B60E33EBF09D4F83C108BDFD82B60FCFB5E1A94F1B4B7894115298ECD0CCA80615E7F84CB7071F969BDC137630A37DCC212DF76C36FC61B66B66F6A1CCA794F26A9B857E73EE97C37E567ADEEF735CAE1AB20B1AD528DB0BDBFA6148713463099FF12CC021FB3C5BC24B841C45FE29416551DF6F1E1D1B1F43E677FDECA3869EA059AB3AAE9C18C38675B28D022CF28719F50A2964B6CF09EA4065532D1D7C4C32F67F6BFF35EA7795283FD957F3EB0AED347E2FF9241C3439261EB37B5FC739CFAFA1E2F3A2A417F7B174F25FAABFCFA5FDF8AAE07D65D02EE746A1D4A8A5E67FAC5071483A429BA6E20CDDACF2ADEAFB7094F15B4A892B7ACFF3261E1D3515E259452FE29442F7F1E2A9AF6E5C146889AD70563E18DA242D3EB8175B08C2F073CF849F39703C306AB7F49B08E68C657043E190E26BF21E8BF0C953D77B80F69CE4CDB5892723D77D6606F5490B9EBBD4929D5DEC8D1D572EC0170A3965C6F16A2BCB352E6D1B64E4DA5F268D8BBB4FB372F4FDE978AE43A68DF6D21F2366B8F5B6E967E5725C77B5024A729FAD97D61F1B66DCD9404DEF3EACC61E5C37B666C7C9BDF7D91F0B68DCD9420DE73631B540ABC67B6B6ABFD73C796D67B0BDD7961AF5AA364B8CCD16591BB0A778B943B1CFF17111841115116EF2DF595622666B5B11819D62466A6E6123599B1E2380A5F85A29DEDB0B1F20DBF75B09CA69DADA1B0B38D375FFF5B79739A76DE8672C95D941C6B0B167565E01DEB585B1DD57B2A311646D251D1DE15B3B6DECCBFA78AE2519422788FE176F9FD14108FA292315D6740C1B07A510C7B67E39F6B84FD3BF5573504FBC71B0976855DB3A2B926CBA8DCBC25894A122943738329F2604B3D4FA8BF442E85669680CE1F8CE7493D760DB2C0DE35B9CB689C5118320E178190F06241401BFFBC2A5A94797A17B35FE9184300317D96B8BF233F677EE055725F6972420608165DF0742F9B4BCAD2BEABD70AE936223D81B8FAAAA0E80187710060E91D99A367BC8E6C607E9FF10AB9AF7506D004D23D11A2DAA7173E5A25284C3946DD1F7E820D7BE1CB8FFF07131E6A59B5540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3ada7d34-dbda-4a20-8d2b-a9d712f104ac', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'6a8115d9-721c-4eab-aaf4-836fe6a5efc6', N'Customer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'c57f5271-d650-4a0b-a70e-7aaaf0dc2528', N'Employee')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f300b87d-add1-49f3-a425-c145a16aa0fd', N'3ada7d34-dbda-4a20-8d2b-a9d712f104ac')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd3c17bff-adad-440e-b4b5-c720607f40ac', N'6a8115d9-721c-4eab-aaf4-836fe6a5efc6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e9812a66-1371-4c09-b17d-7da2ede32015', N'6a8115d9-721c-4eab-aaf4-836fe6a5efc6')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd3c17bff-adad-440e-b4b5-c720607f40ac', N'fake@fake.com', 0, N'AF3uKcWTQKms7CuVtkHvlvqVsMo4pVDira83mTosgyiQC2Jzp41QaES7axpy9xnmJQ==', N'48d9ac3c-b9fd-41b9-870c-4b147ef73829', NULL, 0, 0, NULL, 1, 0, N'fake@fake.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e9812a66-1371-4c09-b17d-7da2ede32015', N'kcchief@yahoo.com', 0, N'ANNiEgTVPF3w0v/Ut60ErXkOccoeSncp8PTHraUr+aSieEzGlL7wbaQcLtDQty8KFg==', N'13ebe263-311f-4650-9ed7-a237b1aef142', NULL, 0, 0, NULL, 1, 0, N'kcchief@yahoo.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f300b87d-add1-49f3-a425-c145a16aa0fd', N'WilliamMcCarty1@outlook.com', 0, N'AKjtUyyKARqSYSvT/lOs+aB8zvu04voJdJzxWfk3y1MIE0KiielRcM0xpZeJY/Wttw==', N'69a7f417-ec12-49cf-88de-b7aebdfd1062', NULL, 0, 0, NULL, 1, 0, N'WilliamMcCarty1@outlook.com')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (1, N'Apparel', N'Baby Items')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (2, N'Apparel', N'Jackets')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (3, N'Apparel', N'T-Shirts')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (4, N'Apparel', N'Vests')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (5, N'Collectibles', N'Bird Houses')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (6, N'Collectibles', N'Mystical')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (7, N'Collectibles', N'Statues')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (8, N'Collectibles', N'Vases')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (9, N'Garden', N'Fountains')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (10, N'Garden', N'Out Door Living')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (11, N'Garden', N'Planters And Stands')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (12, N'Garden', N'Stepping Stones')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (13, N'Gifts', N'Candles')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (14, N'Gifts', N'Faith Inspiration')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (15, N'Gifts', N'Fragrances')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (16, N'Gifts', N'Flowers')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (17, N'Home Decor', N'Bathroom')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (18, N'Home Decor', N'Kitchen')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (19, N'Home Decor', N'Lamps')
INSERT [dbo].[Categories] ([CategorieParentID], [MainCategory], [ChildCategory]) VALUES (20, N'Home Decor', N'Wall Decor')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (1, N'Red')
INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (2, N'White')
INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (3, N'Blue')
INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (4, N'Black')
INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (5, N'Gray')
INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (6, N'Pink')
INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (7, N'Yellow')
INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (8, N'Purple')
INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (9, N'Brown')
INSERT [dbo].[Colors] ([ColorVariantID], [Color]) VALUES (10, N'Silver')
SET IDENTITY_INSERT [dbo].[Colors] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [Department]) VALUES (1, N'Executive Office')
INSERT [dbo].[Department] ([DepartmentID], [Department]) VALUES (2, N'Accounting')
INSERT [dbo].[Department] ([DepartmentID], [Department]) VALUES (3, N'Human Resources')
INSERT [dbo].[Department] ([DepartmentID], [Department]) VALUES (4, N'Shipping')
INSERT [dbo].[Department] ([DepartmentID], [Department]) VALUES (5, N'Sales')
INSERT [dbo].[Department] ([DepartmentID], [Department]) VALUES (6, N'Marketing')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Title], [BirthDate], [HireDate], [HomePhone], [Extension], [Notes], [ReportsToID], [DepartmentID], [Address], [City], [State], [Zip]) VALUES (1, N'Smith', N'Frank', N'CEO', CAST(N'1953-02-09' AS Date), CAST(N'2011-08-12' AS Date), N'913-555-5121', N'309', NULL, NULL, 1, N'320 Copper Ave', N'Overland Park', N'KS', N'67895')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Title], [BirthDate], [HireDate], [HomePhone], [Extension], [Notes], [ReportsToID], [DepartmentID], [Address], [City], [State], [Zip]) VALUES (2, N'Randolph', N'Judy', N'Accountant', CAST(N'1959-05-16' AS Date), CAST(N'2015-08-18' AS Date), N'816-555-4587', N'312', NULL, 1, 2, N'145 East 8th Apt A', N'Lone Jack', N'MO', N'64082')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Title], [BirthDate], [HireDate], [HomePhone], [Extension], [Notes], [ReportsToID], [DepartmentID], [Address], [City], [State], [Zip]) VALUES (3, N'Patterson', N'Debbie', N'Human Resource Rep', CAST(N'1963-07-24' AS Date), CAST(N'2017-12-04' AS Date), N'816-555-2568', N'315', NULL, 1, 3, N'1216 Deena', N'Butler', N'MO', N'64705-6548')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Title], [BirthDate], [HireDate], [HomePhone], [Extension], [Notes], [ReportsToID], [DepartmentID], [Address], [City], [State], [Zip]) VALUES (4, N'Kent', N'Daniel', N'Shipping Manager', CAST(N'1964-09-17' AS Date), CAST(N'1962-04-12' AS Date), N'816-555-9845', N'370', NULL, 3, 4, N'41 Laramie', N'Drexel', N'MO', N'64609')
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (1, N'/Content/images/Collectibles/BirdHouses/two-story-pedestal-birdhouse-36.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (2, N'/Content/images/Apparel/Vests/GFVBIK42_800.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (3, N'/Content/Images/Gifts/Candles/hot-apple-pie-scented-candle-3x4-7.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (4, N'/Content/Images/Apparel/BabyItems/baby-premium-tee-pink-front-6083675f2392d.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (5, N'/Content/Images/Gifts/Flowers/beautiful-red-flowers-candle-holder-13.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (6, N'/Content/Images/Garden/Fountains/wishing-well-water-fountain-34.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (7, N'/Content/Images/Gifts/Flowers/lov-lav-med.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (9, N'/Content/Images/Apparel/BabyItems/baby-short-sleeve-one-piece-pink-front-608258e7bcaa8.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (10, N'/Content/Images/Apparel/BabyItems/baby-short-sleeve-bodysuit-pink-front-60825afc6890a.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (11, N'/Content/Images/Apparel/BabyItems/baby-premium-tee-heather-columbia-blue-front-60825fa0186d0.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (12, N'/Content/images/Apparel/Vests/GFVAPN_800.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (13, N'/Content/images/Apparel/Vests/GFVEMBPT_800.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (14, N'/Content/images/Apparel/Vests/GFVBIK144X-7X_800.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (15, N'/Content/images/Apparel/Jackets/GFSW_800.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (16, N'/Content/images/Apparel/Jackets/GFMOTLTR_800.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (17, N'/Content/images/Apparel/Jackets/kjk898ujk.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (18, N'/Content/images/Apparel/Jackets/123acvfg.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (19, N'/Content/images/Apparel/Shirts/unisex-basic-softstyle-t-shirt-black-front-6088aed871cb2.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (20, N'/Content/images/Apparel/Shirts/unisex-basic-softstyle-t-shirt-navy-front-6081db4c9d3dd.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (21, N'/Content/images/Apparel/Shirts/unisex-basic-softstyle-t-shirt-navy-front-6081b22cb927d.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (22, N'/Content/images/Apparel/Shirts/unisex-basic-softstyle-t-shirt-sport-grey-front-6081cc4f17034.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (23, N'/Content/images/Collectibles/BirdHouses/bass-lake-lodge-wood-bird-house-42.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (24, N'/Content/images/Collectibles/BirdHouses/biker-bar-birdhouse-55.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (25, N'/Content/images/Collectibles/BirdHouses/yacht-club-birdhouse-28.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (26, N'/Content/images/Collectibles/Mystical\medieval-chess-set-9.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (27, N'/Content/images/Collectibles/Mystical\guarding-dragon-accent-table-54.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (28, N'/Content/images/Collectibles/Mystical\orchid-fairy-table-lamp-39.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (29, N'/Content/images/Collectibles/Mystical\timber-wolf-goblet-29.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (30, N'/Content/images/Collectibles/Statues/couple-with-solar-street-light-statue-39.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (31, N'/Content/images/Collectibles/Statues/patriotic-eagle-statue-sculpture-63.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (32, N'/Content/images/Collectibles/Statues/peony-fairy-solar-statue-43.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (33, N'/Content/images/Collectibles/Statues/solar-bluebird-gnome-welcome-statue-47.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (34, N'/Content/images/Collectibles/Vases/azure-blue-art-glass-vase-30.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (35, N'/Content/images/Collectibles/Vases/emerald-art-glass-vase-29.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (36, N'/Content/images/Collectibles/Vases/sunfire-glass-vase-40.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (37, N'/Content/images/Collectibles/Vases/modern-duo-tone-glass-vase-29.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (38, N'/Content/Images/Garden/Fountains/doggy-wash-fountain-49.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (39, N'/Content/Images/Garden/Fountains/fairy-solar-water-fountain-38.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (40, N'/Content/Images/Garden/Fountains/teamwork-water-pump-solar-fountain-34.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (41, N'/Content/Images/Garden/OutDoorLiving/redporchchair.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (42, N'/Content/Images/Garden/OutDoorLiving/outdoorcanopy.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (43, N'/Content/Images/Garden/OutDoorLiving/LadyBugSwingRed.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (44, N'/Content/Images/Garden/OutDoorLiving/8ft-weather-resistant-yard-garden-windmill.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (45, N'/Content/Images/Garden/PlantersAndStands/wagon-wheel-barrel-planter-display-30.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (46, N'/Content/Images/Garden/PlantersAndStands/welcome-birdhouse-rustic-barrel-planter-46.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (47, N'/Content/Images/Garden/PlantersAndStands/zigzag-pallet-plant-stand-30.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (48, N'/Content/Images/Garden/PlantersAndStands/barrel-tricycle-planter-43.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (49, N'/Content/Images/Garden/SteppingStones/butterfly-stepping-stone-82.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (50, N'/Content/Images/Garden/SteppingStones/celestial-glow-dark-step-stone-41.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (51, N'/Content/Images/Garden/SteppingStones/turtle-stepping-stone-36.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (52, N'/Content/Images/Garden/SteppingStones/butterfly-stepping-stone-73.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (57, N'/Content/images/Gifts/Fragrances/e7de3ee8-f79e-46e3-90ea-ef2291ee7046.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (58, N'/Content/images/HomeDecor/Bathroom/b42283cd-d27f-479a-83e3-37d49594354f.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (59, N'/Content/images/HomeDecor/Kitchen/26b67cf3-12ae-4cda-aeac-de9b0ed2d4b3.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (60, N'/Content/images/HomeDecor/Lamps/18e085a2-7e45-4676-ba7f-aeba6bf98cb2.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (61, N'/Content/images/HomeDecor/WallDecor/8a8b62a3-4cc3-4508-bb99-60776050a1bc.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (62, N'/Content/images/Gifts/Flowers/0f312666-8ba8-4995-9c6f-33719cb7a157.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (63, N'/Content/images/Gifts/Flowers/0306c8d9-2391-45ce-8020-c4f41cc31e05.jpg')
INSERT [dbo].[Images] ([ImageID], [Image]) VALUES (64, N'/Content/images/Gifts/Flowers/302b157d-d73e-4df0-b2b9-524da99d46c1.jpg')
SET IDENTITY_INSERT [dbo].[Images] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (3, NULL, 2, 5, N'White Two Story Pedstal Bird House', N'<p><span style="font-size: medium;">Give the birds a grand home to call their own with this gorgeous white birdhouse. Its most charming features include a front staircase, multiple entrances, two separate floors, a turned pedestal stand, and top decorative finial. </span></p>
<p><span style="font-size: medium;">Item weight: 2.8 lbs. </span></p>
<p><span style="font-size: medium;">6 5/8" x 6 5/8" x 27 1/4" high. </span></p>
<p><span style="font-size: medium;">MDF wood. </span></p>
<p><span style="font-size: medium;">UPC: 849179018801. </span></p>', N'DGC35629', 65.9900, 32, 1, 1, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (4, 3, 4, 4, N'Diamond Plate™ Rock Design Genuine Buffalo Leather Biker Vest with 42 Patches
', N'Features multiple patches, black snaps and laced sides. Patches on the front of vest read: BORN WILD STILL WILD, FREEDOM ISN''T FREE, and USA. Back patches read: THESE COLORS DON''T RUN, LOUD PIPES SAVE LIVES, ROUTE 66, and RIDE FREE. Large eagle patch also featured on back. Embroidered cloth patches are included and already sewn in place. Actual designs may vary slightly from photograph.  Features: Genuine Brass Buffalo Nickel Snaps Lace-Up Sides 2 Interior Zippered Pockets 42 Patches on Front & Back
', N'DGC69856', 55.0000, 41, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (5, NULL, 1, 13, N'Hot Apple Pie Scented Candle 3 x 4', N'<p><span style="font-size: medium;">The scent of crisp red apples in a freshly baked pie, with subtle notes of banana puree and cider apple are followed with cinnamon stick, clove buds and creamy nutmeg. This delicious scent finishes with the scent of pastry crust accord, creamy whipped vanilla and sweet musk. Lead and tin free cotton wick. </span></p>
<p><span style="font-size: medium;"><strong>Burn time:</strong> up to 60 hours. </span></p>', N'DGC81578', 16.9900, 112, 3, 3, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (6, 10, 6, 1, N'Baby Jersey Short Sleeve Tee Monkey Business', N'<p><span style="font-size: medium;">Monkey print image Business word print It''s never too early to look great! So get your baby this short sleeve cotton jersey tee that''s not only stylish, but also comfy, durable, and easy to clean. It''s a classic that''s bound to become the most loved item in your baby''s wardrobe. </span></p>
<p><span style="font-size: medium;">&bull; 100% combed ring-spun cotton </span></p>
<p><span style="font-size: medium;">&bull; Heather colors are 52% combed ring-spun cotton, 48% polyester </span></p>
<p><span style="font-size: medium;">&bull; Fabric weight: 4.2 oz/yd&sup2; (142 g/m&sup2;) </span></p>
<p><span style="font-size: medium;">&bull; Pre-shrunk fabric </span></p>
<p><span style="font-size: medium;">&bull; 32 singles </span></p>
<p><span style="font-size: medium;">&bull; Relaxed fit </span></p>
<p><span style="font-size: medium;">&bull; Side-seamed construction </span></p>', N'DGC69856', 16.9900, 92, 1, 4, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (9, NULL, NULL, 16, N'Beautiful Red Flowers Candle Holder', N'<p><span style="font-size: medium;">Bask your table setting in a romantic glow with this beautiful double red flower candleholder. The decorative candleholder holds two tea lights inside the flowers for a soft and sultry glow. A stunning addition to your dining room or entryway table. </span></p>
<p><span style="font-size: medium;">Weight 2.2 pounds. 9" x 4.75" x 14.5". </span></p>
<p><em><strong><span style="font-size: medium;">Glass, Plastic, Iron. </span></strong></em></p>', N'DGC29858', 22.0000, 124, 1, 5, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (10, NULL, NULL, 9, N'Wishing Well Water Fountain Pump Included', N'<p><span style="font-size: medium;">The magic of the town wishing well can be yours! This incredible wooden outdoor fountain features a delightful design complete with a roofed well and metal-banded bucket that spouts water. It''s the perfect finishing touch for your yard or garden! </span></p>
<p><span style="font-size: medium;">Weight 18 pounds. 19.6" x 19.6" x 44". Fir Wood. </span></p>', N'DGC88859', 195.9900, 212, NULL, 6, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (11, NULL, NULL, 16, N'Lovely Lavender Medley', N'<p><span style="font-size: medium;">Lovely memories are made with thoughtful gifts for the ones we care about. Our charming bouquet is loosely gathered with a medley of lavender &amp; white blooms. Hand-designed inside a clear cylinder vase with cascading greenery all around, it&rsquo;s a wonderful way to express the sentiments you have inside your heart. All-around arrangement with white roses and carnations; lavender Peruvian lilies (alstroemeria) and stock; accented with baby&rsquo;s breath, seeded eucalyptus and assorted greenery Artistically designed a clear glass cylinder vase Large arrangement measures approximately 15"H x 13"L Medium arrangement measures approximately 13"H x 12"L Small arrangement measures approximately 12"H x 9"L Our florists select the freshest flowers available, so colors, varieties and container may vary due to local availability To ensure lasting beauty, Peruvian lilies may arrive in bud form and will fully bloom over the next few days</span></p>', N'DC1144578', 57.9900, 168, 1, 7, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (14, 11, 6, 1, N'Baby short sleeve one piece Mommy''s Little Princess', N'<p><span style="font-size: medium;"><strong>Mommy''s Little Princess</strong> With Princess Tiara Dress your baby to the nines with this 100% cotton one piece. It has three snap leg closure for easy changing, a comfortable envelope neckline, and a beautiful print that''s bound to get the baby all happy and giggling. </span></p>
<p><span style="font-size: medium;">&bull; 100% ring-spun combed cotton </span></p>
<p><span style="font-size: medium;">&bull; Heather colors are 52% ring-spun combed cotton and 48% polyester </span></p>
<p><span style="font-size: medium;">&bull; Fabric weight: 3.9 oz/y&sup2; (132.2 g/m&sup2;) </span></p>
<p><span style="font-size: medium;">&bull; Side-seamed construction </span></p>
<p><span style="font-size: medium;">&bull; Envelope neckline </span></p>
<p><span style="font-size: medium;">&bull; Three-snap leg closure</span></p>', N'DCG541251', 17.9900, 152, 1, 9, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (15, 9, 6, 1, N'Infant Bodysuit Daddy''s Little Monster', N'<p><span style="font-size: medium;"><strong>Daddy''s Little Monster</strong> With Monster On Front This comfortable bodysuit will be a great addition to any baby&rsquo;s wardrobe, and lap shoulders will make for easier changing. </span></p>
<p><span style="font-size: medium;">&bull; 100% combed ring-spun cotton in a 1x1 baby rib</span></p>
<p><span style="font-size: medium;">&bull; Fabric weight: 5 oz/yd&sup2; (170 g/m&sup2;) </span></p>
<p><span style="font-size: medium;">&bull; White one-piece is sewn with 100% cotton thread </span></p>
<p><span style="font-size: medium;">&bull; Three-snap closure on binding </span></p>
<p><span style="font-size: medium;">&bull; Lap shoulders for easy changing</span></p>', N'DCG504878', 19.9900, 125, 1, 10, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (17, 10, 3, 1, N'Infant Bodysuit Daddy''s Little Monster', N'<p><span style="font-size: medium;"><strong>Daddy''s Little Monster</strong> With Monster On Front This comfortable bodysuit will be a great addition to any baby&rsquo;s wardrobe, and lap shoulders will make for easier changing. </span></p>
<p><span style="font-size: medium;">&bull; 100% combed ring-spun cotton in a 1x1 baby rib</span></p>
<p><span style="font-size: medium;">&bull; Fabric weight: 5 oz/yd&sup2; (170 g/m&sup2;) </span></p>
<p><span style="font-size: medium;">&bull; White one-piece is sewn with 100% cotton thread </span></p>
<p><span style="font-size: medium;">&bull; Three-snap closure on binding </span></p>
<p><span style="font-size: medium;">&bull; Lap shoulders for easy changing &bull; Blank product sourced from India or Haiti</span></p>', N'DCF545855', 19.9900, 58, 1, 11, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (18, 5, 4, 4, N'Diamond Plate™ Rock Design Genuine Buffalo Leather Concealed Carry Vest with Patches', N'<p><span style="font-size: medium;">Features chrome-plated genuine brass star snaps, side laces and 2 interior gun pockets with 1 interchangeable holster. </span></p>
<p><span style="font-size: medium;">Patches include: extra large LIVE TO RIDE eagle; </span></p>
<p><span style="font-size: medium;">Caution Does Not Play Well With Others; </span></p>
<p><span style="font-size: medium;">American By Birth Biker By Choice; </span></p>
<p><span style="font-size: medium;">Sorry If My Loud Pipes Disturbed Your Phone Call; </span></p>
<p><span style="font-size: medium;">Bikers Are A Rare Breed; and more. </span></p>
<p><span style="font-size: medium;">Live To Ride&reg; brand embroidered cloth patches are included and already sewn in place. Chrome-Plated Genuine Brass Star Snaps Lace-Up Sides 2 Interior Gun Pockets Interchangeable Holster 16 Patches on Front &amp; Back</span></p>', N'DFG555555', 32.0000, 100, 1, 12, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (19, 3, 4, 4, N'Diamond Plate™ Hand-Sewn Pebble Grain Genuine Leather Biker Vest', N'Features antique finish buffalo snaps and laced sides. Patch on the vest is an eagle with the words LIVE TO RIDE. Live To Ride® brand embroidered cloth patch is included and already sewn in place.

FEATURES

Large LIVE TO RIDE Eagle Patch on Back

Antique Finish Buffalo Snaps

Lace-Up Sides', N'DCD545454', 40.0000, 200, NULL, 13, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (20, 3, 4, 4, N'Diamond Plate™ Hand-Sewn Pebble Grain Genuine Leather Biker Vest', N'Features antique finish buffalo snaps and laced sides. Patch on the vest is an eagle with the words LIVE TO RIDE. Live To Ride® brand embroidered cloth patch is included and already sewn in place.

FEATURES

Large LIVE TO RIDE Eagle Patch on Back

Antique Finish Buffalo Snaps

Lace-Up Sides

', N'DDFR44545', 39.9900, 125, NULL, 14, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (21, 3, 9, 2, N'Casual Outfitters™ Solid Genuine Suede Leather Jacket', N'<p><span style="font-size: medium;">A distinct southwestern flair enhances the look of this jacket. Features snap closure, elastic wrists and waist, slash pockets and a 100% polyester quilted lining. It also has faux sheepskin on the collar and lapels. </span></p>
<p><span style="font-size: medium;">Size Medium Only</span></p>
<p><span style="font-size: medium;"></span><span style="font-size: medium;">FEATURES Snap Closure Elastic Wrists and Waist Slash Pockets 100% Polyester </span><strong style="font-size: medium;">Quilted Lining</strong><span style="font-size: medium;"> Faux Sheepskin on the Collar and Lapels</span></p>', N'CCA345454', 79.9900, 50, 1, 15, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (22, 5, 4, 2, N'Diamond Plate™ Men''s Hand-Sewn Pebble Grain Genuine Buffalo Leather Jacket', N'Features large eagle patch on the back; zip-out polyester lining; gunmetal zipper and buckle with black snaps; multiple small patches; belted waist; leather laces; shirt collar that snaps down; slash pockets; and snap epaulets on the shoulder. Live To Ride® brand embroidered cloth patches are included and already sewn in place.

FEATURES

Zip-Out Polyester Lining

Includes Sewn-On Embroidered Patches

Belted Waist & Leather Side Laces

Multiple Pockets

Zippered Wrist Closures

Snap-Down Collar & Lapel

Snap Epaulets on Shoulders', N'BJG5458585', 54.9900, 74, NULL, 16, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (23, 3, 1, 2, N'Women''s Hooded Long Down Coat with Faux-fur Trim', N'<p><span style="font-size: medium;">This winter parka down jacket combines warmth and style and it will be your first choice no matter for daily wear or exploring the outdoors. When the weather turns cold you need a thick coat to keep warm and show your personality. High-quality nylon fabric helps keep you warm and prevent heat loss and a fluffy faux fur hood with a mask gives you the ultimate comfort. </span></p>', N'RV54258525', 77.9500, 55, 1, 17, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (24, 4, 4, 2, N'Hooded Electric USB Women’s Down Heated Jacket-Black', N'<p><span style="font-size: medium;">The highlight of this heated down jacket is its heating function. Want to dress light but warm in winter? Take a look at this intelligence down heated jacket! Filled with more down than normal light and thin ones it absolutely keeps you warmer. Different from others it''s powered by power bank and it won''t heat itself without power bank. And you can use heating function whenever and wherever possible with your own power bank. For convenience a pocket is designed for taking the power bank. </span></p>
<p><span style="font-size: medium;">4 temperatures (127.5℉ 118.5℉ 109.5℉ 100.5℉) that can be adjusted by simply pressing the logo-printed button below the pocket Powered by power bank (not included) so that you can use heating function whenever and wherever possible.</span></p>', N'hj54545456', 45.9500, 62, 1, 18, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (25, 3, 4, 3, N'Short-Sleeve Unisex T-Shirt Necron', N'Necron Short Sleeve T-Shirt

You''ve now found the staple t-shirt of your wardrobe. It''s made of 100% ring-spun cotton and is soft and comfy. The double stitching on the neckline and sleeves add more durability to what is sure to be a favorite!

• 100% ring-spun cotton
• Sport Grey is 90% ring-spun cotton, 10% polyester
• Dark Heather is 65% polyester, 35% cotton
• 4.5 oz/yd² (153 g/m²)
• Pre-shrunk
• Shoulder-to-shoulder taping
• Quarter-turned to avoid crease down the center', N'NEC555252', 12.9900, 78, NULL, 19, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (27, 3, 3, 3, N'Short-Sleeve Unisex T-Shirt Loved You Then Love You Now Always Have & Always Will', N'Loved You Then
Love You Now
Always Have &
Always Will

Fun Romantic Novelty T-Shirt

You''ve now found the staple t-shirt of your wardrobe. It''s made of 100% ring-spun cotton and is soft and comfy. The double stitching on the neckline and sleeves add more durability to what is sure to be a favorite!

• 100% ring-spun cotton
• Sport Grey is 90% ring-spun cotton, 10% polyester
• Dark Heather is 65% polyester, 35% cotton
• 4.5 oz/yd² (153 g/m²)
• Pre-shrunk
• Shoulder-to-shoulder taping
• Quarter-turned to avoid crease down the center', N'JJH5455555', 12.9900, 53, NULL, 20, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (28, 3, 3, 3, N'Short-Sleeve Unisex T-Shirt Waiter Doesn''t Need To Know Your Name.', N'Guess What?

The Waiter Doesn''t Need To Know Your Name.

Fun novelty T-Shirt

You''ve now found the staple t-shirt of your wardrobe. It''s made of 100% ring-spun cotton and is soft and comfy. The double stitching on the neckline and sleeves add more durability to what is sure to be a favorite!

• 100% ring-spun cotton
• Sport Grey is 90% ring-spun cotton, 10% polyester
• Dark Heather is 65% polyester, 35% cotton
• 4.5 oz/yd² (153 g/m²)
• Pre-shrunk
• Shoulder-to-shoulder taping
• Quarter-turned to avoid crease down the center', N'LKJ5525255', 13.9900, 65, NULL, 21, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (29, 3, 5, 3, N'Short-Sleeve Unisex T-Shirt Emoji Sunglasses', N'Emoji With Sunglasses

Fun novelty T-Shirt

You''ve now found the staple t-shirt of your wardrobe. It''s made of 100% ring-spun cotton and is soft and comfy. The double stitching on the neckline and sleeves add more durability to what is sure to be a favorite!

• 100% ring-spun cotton
• Sport Grey is 90% ring-spun cotton, 10% polyester
• Dark Heather is 65% polyester, 35% cotton
• 4.5 oz/yd² (153 g/m²)
• Pre-shrunk
• Shoulder-to-shoulder taping
• Quarter-turned to avoid crease down the center', N'ENS5258522', 14.9900, 98, NULL, 22, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (30, NULL, 5, 5, N'Bass Lake Lodge Bird House', N'Multi-level Bass Lake Lodge sports fishing-themed accents reminiscent of a lakeside retreat.

Weight 1.6 pounds. 8" x 6" x 10.2". Eucalyptus Wood.', N'BL54555555', 28.9900, 52, NULL, 23, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (31, NULL, 5, 5, N'Route 66 Biker Bar Bird House', N'The birds in your yard will love making this Route 66 biker bar their home! This whimsical birdhouse features all the trimmings of a smokin’ hot highway roadhouse, complete with a motorcycle parked outside and a flame-painted roof.

Item weight: 1.2 lbs. 10¼" x 7½" x 9" high. Wood. Clean out hole on back. ', N'BBBH542545', 32.9900, 68, NULL, 24, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (32, NULL, 9, 5, N'Yacht Club Bird House', N'Feathered friends can weather the storm in this wooden “yacht club�?, complete with straw roof, wooden dock and quaint nautical knicknacks.

Wood. 9 3/8" x 8" x 9 7/8" high. ', N'YCBH54545', 29.9900, 88, NULL, 25, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (33, NULL, 10, 6, N'Medeival Chess Set', N'Mystical knights and dragons square off on a medieval chess board, adding a legendary feel to the timeless battle of chess. All 32 finely detailed chessmen fit inside the elaborately carved chessboard case.', N'MEC542542', 161.9900, 42, NULL, 26, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (34, NULL, 5, 6, N'Guarding Dragon Accent Table', N'Stunning stone-look statue table features a hissing dragon standing guard over his lord’s treasure trove. Styled to resemble centuries-old castle gargoyles, this is a worthy decoration for the chamber of any king!

Weight: 16.5 lbs. 19" diameter x 23 1/4" high. Polyresin base with tempered glass top.', N'GDT552551', 191.9900, 51, NULL, 27, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (35, NULL, 8, 6, N'Orchid Fairy Table Lamp', N'Pausing above a newly blooming bed of violet-sunset orchids, a winged beauty reflects upon the peacefulness of her shady forest glade. A gorgeous table lamp of incredible artistry, from the graceful floral shade to the delicate lifelike blooms at the base. Sure to be the pride and joy of any dreamer at heart!

Maximum 15W E12 light bulb not included.', N'OFL554855', 90.9900, 65, NULL, 28, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (36, NULL, 10, 6, N'Timber Wolf Goblet And Mug', N'Cheers to the majestic wolf! This beautiful goblet features a cool Celtic design, and the centerpiece of the cup is the beautiful wolf bust set on a glorious blue background. Bright red jewels adorn the stem of the goblet.

Weight 0.8 pounds. 3.12" x 3.12" x 7.62". Polyresin, Stainless Steel.', N'TWG65554', 33.9900, 108, NULL, 29, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (37, NULL, NULL, 7, N'Cute Couple Statue With Solar Light', N'This cute couple is ready to brighten your days and your nights! A sweet boy and girl sit beneath a classic street light that has a solar panel to use the power of the sun to light up at night. This adorable solar statue is a great addition to your front walk', N'CST564454', 45.9900, 209, NULL, 30, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (38, NULL, NULL, 7, N'Patriotic Eagle With Flag', N'This glorious statue depicts the magnificent wings of the valiant Bald Eagle spread gloriously over the unfurled stars-and-stripes.
', N'PEF555555', 59.9900, 172, NULL, 31, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (39, NULL, NULL, 7, N'Peony Fairy Solar Statue', N'A sweet young fairy pauses to admire a new-found patch of blushing blooms', N'PFS512585', 78.9900, 26, NULL, 32, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (40, NULL, NULL, 7, N'Solar Blue Bird Gnome Welcome Statue', N'Welcome your friends to your favorite outdoor spot with this simply adorable statue. A classic gnome stands with a welcome sign', N'BBG555252', 47.9900, 160, NULL, 33, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (41, NULL, NULL, 8, N'Azure Blue Art Glass Vase', N'Cool blues and clear glass dance together in this stunning art glass vase. Set it next to your window to capture the sunlight. This is a true piece of art!

Item weight: 4.8 lbs. 5½" x 2½" x 8½" high. Glass.', N'ABA524585', 48.9900, 220, NULL, 34, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (42, NULL, NULL, 8, N'Emerald Green Art Glass Vase', N'Vibrant green flows through this stunning art glass vase, and it looks just as spectacular empty as it does with a fresh bouquet of flowers. Set it near a window and watch as sunlight streaming through makes this vase even more beautiful.

Item weight: 4.8 lbs. 5½" x 2½" x 8½" high.', N'EGA541255', 48.9900, 192, NULL, 35, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (43, NULL, NULL, 8, N'Sunfire Red Glass Vase', N'Brilliant reds and golds glow in any light, bringing a burst of color to any room. Add your favorite blooms to this striking glass vase for a breathtakingly beautiful focus piece!

Decorative purposes only. Weight 3.5 lbs. Glass. 5 1/2" x 3" x 9" high. ', N'SFR525455', 48.9900, 181, NULL, 36, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (44, NULL, NULL, 8, N'Duo Tone Modern Vase', N'Resplendent in hues of violet and indigo, this magnificent glass piece with flowing patterns of color stands alone as a perfect sculpture!', N'DTV555252', 125.9900, 165, NULL, 37, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (45, NULL, NULL, 9, N'Doggy Wash Fountain Pump Included', N'Two precious children are taking care of their little pup by giving him a bath at the water pump. Water flows out of the pump and over the doggy in this charming vintage-look fountain.', N'DWF585858', 266.9900, 18, NULL, 38, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (46, NULL, NULL, 9, N'Fairy Solar Fountain Pump Included', N'Fabulous fountain features a scene from treasured childhood tales, as a pair of fairies plays in the crystal waterfalls. The magic of solar power lets you add this fountain to your favorite spot without tangled cords, or an optional electrical plug for overcast days.

Weight 25 lbs. Polyresin, stonepowder, and sand. Solar panel, pump, electrical adapter included. UL Recognized. Some Assembly Required. 17 1/2" x 17 1/2" x 41 3/8" high. ', N'SFW548555', 383.9900, 26, NULL, 39, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (47, NULL, NULL, 9, N'Team Work Solar Fountain Pump Included', N'This solar-powered water fountain features two adorable children in cahoots to fill their pail with fresh water straight from the well pump. They enjoy working together while the solar-powered panel makes the water flow all day long.

Item weight: 16.6 lbs. 15¾" x 8¾" x 28¾" high. Resin. Solar panel, pump and electrical adapter included. UL Recognized.', N'TSF8598555', 270.9900, 35, NULL, 40, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (50, NULL, NULL, 10, N'Hanging Cushioned Hammock Chair with Stand-Red', N'Heavy-duty metal frame with non-slip pads can always keep this egg chair stable and won''t fall over easily.   The product consists of a stable stand and chair. You can sit in this comfortable swing chair and enjoy your leisure time.This swing chair can hold you well with enhanced frame and safety hook and provide an extra balance to use with more convenience. The soft fiber-filled seat cushion and headrest pillow offer a luxurious comfortable and reduce the fatigue. You can use it indoor or outdoor as you like.   The hanging hammock chair is the perfect choice for better enjoying your leisure time. Oder it for yourself!   Rugged frame ensure the stability Combined with non-slip pads for increased stability Comfortable pillow and cushion are included for enhanced comfort Safety hook and hanging chain provide better balance Widely used indoor or outdoor Relax yourself well sitting in the chair Removable pillow and cushion cover for easier maintenance Easy to assemble and start using soon

Color: Red/Gray/Blue Material: Iron steel PE polyester Size: 40.5" x 42" x 81" (L x W x H) Weight capacity: 396 lbs Net weight: 67 lbs Package includes: 1 x Hanging hammock chair 1 X Instruction manual', N'HRC55455', 427.9500, 61, NULL, 41, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (51, NULL, NULL, 10, N'Canopy Gazebo Tent Shelter Garden Lawn Patio with Mosquito Netting-Coffee', N'This canopy gazebo can make you enjoy the shade under it with the mosquito netting.      Built with sloping dome design help ensure proper water drainage. The loop straps allow you to conveniently fix the curtains onto the frame of your structure. Double tier roof design expands the height of the canopy provides proper ventilation and airflow. With 10ft length and 10ft width our gazebo tent is roomy enough for your party and relaxing in solace to entertaining guests. High-quality mosquito netting with zippers fully enclosed keeps you from disturbing mosquito and other insects. Ideal for daily or recreational use such as parties outdoor events camping picnics and any other occasion.     If you are looking for a canopy gazebo like this don''t hesitate to buy it!     High quality and brand new Solid steel frame durable and sturdy Beautiful design and appearance Nice-looking decorative patterns 150g khaki polyester fabric Easy to clean A perfect cover to keep out the sunshine and rain Waterproof top Practical and useful Perfect outdoor companion A wonderful shelter for outdoor life High-quality mosquito netting with zippers keep you from disturbing of mosquito and other insects. Double -tier canopy top provides proper ventilation and airflow 8 pcs metal stakes to fix the canopy to the ground. String to fasten canopy leg fabric All steel pipe design with buckle connection more stable Adds up to enjoyment Bring you a happy mood Assembly required

Color: Coffee/Beige Material: Steel and polyester fabric Overall dimension of this item: 10'' x 10'' x 9.0'' (L x W x H) Product weight: 36 lbs Package include:  1 x 2 tier canopy tent', N'CCC525255', 189.9500, 98, NULL, 42, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (52, NULL, NULL, 10, N'2 Person Kids Patio Swing Porch Bench with Canopy', N'This children''s swing is perfect to fit your room or garden for your baby.   Metal tubular construction provides stability and durable use. With the tent design style it provides UV protection so that you can let your kids play in the garden. Constructed with tubular metal and oxford cloth its cradle seat with two beetle patterns is funny and weight-light.   The seat belt can be fixed to your children ensuring his or her safety. Come and buy it!   Brand new and high quality Beetle pattern design attracts children Metal tubular construction provides stability and durable use Tent structures for providing UV protection Seat belt offers safety for your kids Easy for assemble and disassemble Natural material is harmless to kids and environment Durable beautiful and professional design For outdoor or indoor use Suitable for child with age from 3 to 5 years old

Color: Red Material: Fabric 210D oxford cloth Package includes: 1 x Children swing 1 x Instruction', N'RLS5485855', 95.9900, 23, NULL, 43, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (53, NULL, NULL, 10, N'8FT Weather Resistant Yard Garden Windmill Green', N'This new decorative windmill will be an attractive addition to your lawn or garden. It is made of durable steel with a 4 leg design that keeps it sturdy and in place. Although a beautiful decorative piece, it is also used for determining wind speed and direction. It uses roller bearings to keep the wheel turning smoothly and quietly with the wind. There is some assembly required and strictly wind powered. There are no batteries or electrical outlets needed. With its weather resistant design, it is built to last through the season. Set up this beautifully designed windmill to be the finishing touch to your lawn or gardens.

Specifications:
1. Color: Green
2. Material: Iron
3. Dimension: (26 x 26 x 96)" / (65 x 65 x 244)cm (L x W x H)
4. Weight: 20.5lbs / 9.3kg

Package Includes:
1 x Windmill', N'GWM84584', 99.9900, 416, NULL, 44, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (54, NULL, NULL, 11, N'Wagon Wheel Barrel Planter Display', N'Need a show-stopping way to show off your green thumb? This is it! This incredible wagon wheel is outfitted with four metal-banded barrels that are ready for your favorite plants.

Weight 10.2 pounds. 33.8" x 28" x 31". Fir Wood.', N'PBD55555', 149.9900, 85, NULL, 45, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (55, NULL, NULL, 11, N'Rustic Bird House Rustic Barrel Planter', N'A planter, a welcome sign, and a birdhouse all in one! This incredible yard accent features rustic style that will make your outdoor space look absolutely great. It has a rustic wooden birdhouse on top, a chalkboard sign, and a metal-banded barrel planter below.

Weight 3.6 pounds. 12" x 11" x 31.2". Fir Wood.', N'RPB55455', 89.9900, 65, NULL, 46, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (57, NULL, NULL, 11, N'Zigzag Pallet Plant Stand', N'Rustic and so stylish! This awesome plant stand is ready for three of your favorite potted plants, whether you show them off on your patio or inside your home.

Weight 4.4 pounds. 27.8" x 9.5" x 19.5". Fir Wood.', N'ZZPS555555', 65.9900, 111, NULL, 47, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (58, NULL, NULL, 11, N'Barrell Tricycle Planter', N'This may be the most charming plant holder ever! The rain barrel potted plant holder features authentic black metal banding and is set on a wooden tricycle frame. From the wagon wheels to the little box on the front of the handlebars, this plant accessory is overloaded with country charm!

Item weight: 3.6 lbs. 21" x 12" x 18" high. Fir wood. Plant not included.', N'BTP5155222', 89.9900, 124, NULL, 48, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (59, NULL, NULL, 12, N'Beautiful Colorful Butterfly Stepping Stone', N'A pair of vivid butterflies frolic amongst lush foliage, enlivening a bas-relief stepping stone with glowing colors and romantic sentiment.

Sure to be the crowning jewel of your garden. Cement. 11" diameter x 1" thick.', N'BBST555255', 11.9900, 500, NULL, 49, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (60, NULL, NULL, 12, N'Celestial Glow In The Dark Stepping Stone', N'Lovely by day, and magical by night— place this celestial plaque in a sunny spot to enjoy a beautiful glow-in-the-dark moon and stars image! Stone-look circular plaque makes a beautiful stepping stone.

A striking piece of garden art! Polyresin. 10 1/2" diameter x 1/2" thick. ', N'CGD565555', 23.9900, 457, NULL, 50, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (61, NULL, NULL, 12, N'Cast Iron Turtle Stepping Stone', N'This turtle stepping stone is just what your garden or yard needs! Beautifully detailed and cast from iron, it will be your favorite outdoor accent for years to come.

Item weight: 3.8 lbs. 12¼" x 10" x ½" thick. Cast iron. ', N'TST525555', 29.9900, 362, NULL, 51, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (62, NULL, NULL, 12, N'Cast Iron Butterfly Stepping Stone', N'Let this beautiful butterfly lead the way to your garden! Made from cast iron, this pretty stepping stone is a great way to add style to any spot in yard.

Item weight: 6 lbs. 14" x 11 5/8" x 1/4" thick. Cast iron.', N'BFST55555', 29.9900, 69, NULL, 52, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (65, NULL, NULL, 15, N'Versace Bright Crystal Absolu by Gianni Versace Eau De Parfum Spray 3 OZ', N'<p><span style="font-size: medium;">Highlights: </span></p>
<p><span style="font-size: medium;">1.VERSACE BRIGHT CRYSTAL ABSOLU by Gianni Versace EAU DE PARFUM SPRAY 3 OZ </span></p>
<p><span style="font-size: medium;">Details: Launched by the design house of Gianni Versace in 2013, VERSACE BRIGHT CRYSTAL ABSOLU by Gianni Versace for Women possesses a blend of: Yuzu, Pomegranate , Lotus, Peony, Raspberry It is recommended for wear.</span></p>', N'VPS525255', 59.9900, 35, 5, 57, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (66, NULL, 2, 17, N'5-Tier Multifunctional Bathroom Floor Cabinet Storage with 2 Drawers', N'<p><span style="font-size: medium;">If you are upset about your messy room. It is time to make full use of every place space give yourself a neat and comfortable home.&nbsp;</span></p>
<p><span style="font-size: medium;">Net weight: 32 lbs</span></p>
<p><span style="font-size: medium;"><span>Product dimensions: 12" x 12" x 57" (L x W xH) </span></span></p>
<p><span style="font-size: medium;"><span>Height between shelves: 9.5" </span></span></p>
<p><span style="font-size: medium;"><span>Weight capacity of each tier: 22 lbs </span></span></p>
<p><span style="font-size: medium;"><span>Package includes: 1 x High storage cabinet 1 x Instructions</span></span></p>', N'BAC52555', 124.9900, 63, 5, 58, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (68, NULL, 10, 18, N'Espresso Coffee Maker 2 Cup Built-in Steamer Frothier and Bean Grinder', N'<p><span style="font-size: medium;">Taste of life enjoy coffee life creator! Everything you need for a cup of fragrant coffee starts from our espresso machine. &nbsp; The espresso machine uses precise grinding and even heating for great-tasting espresso. From bean to espresso in less than 1 minute.&nbsp;</span></p>
<p><span style="font-size: medium;"><span>Material: Stainless steel </span></span></p>
<p><span style="font-size: medium;"><span>Net Weight: 20 lbs&nbsp;</span></span><span style="font-size: medium;">Overall dimension: 13.5" x 13" x 15.5" (L x W x H)</span></p>
<p><span style="font-size: medium;"><span>Water tank capacity: 67 oz&nbsp;</span></span><span style="font-size: medium;">Bean hopper capacity: 0.5 lbs</span></p>
<p><span style="font-size: medium;"><span>Package includes: 1 x Espresso machine 1 x User guide</span></span></p>', N'KEM552', 418.9900, 50, 5, 59, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (69, NULL, 9, 19, N'Western Wagon Table Lamp', N'<p><span style="font-size: medium;">Follow the wagon trail to discover the most charming lamp on the prairie. This tabletop wooden wagon lamp features metal wheels and a wagon cover with silhouettes of cowboys and horses.</span><br /><br /><span style="font-size: medium;">Item weight: 2.4 lbs. </span></p>
<p><span style="font-size: medium;">12" x 6 1/4" x 13 3/8" high. </span></p>
<p><span style="font-size: medium;">Wood and iron. </span></p>
<p><span style="font-size: medium;">One 5 watt, type C7 light bulb not included. UL Recognized.&nbsp;</span></p>', N'WTL55252', 80.9900, 26, 5, 60, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (70, NULL, 9, 20, N'Family 5 Photo Wall Frame', N'<p><span style="font-size: medium;">Display five of your most cherished family memories with this beautiful wall frame. It''s made from iron and features the word "Family" surrounded by scrolling vines and leaves.</span></p>
<p><span style="font-size: medium;"><span>Frame sizes: 4" x 4", 4" x 6", 5" x 7" &amp; 4" x 4".</span></span></p>
<p><span style="font-size: medium;"><span></span><span>Weight 2.4 pounds. 25.8" x 0.25" x 15". </span></span></p>
<p><span style="font-size: medium;"><span>Iron, Glass.</span></span></p>', N'PFF5552', 72.9900, 96, 5, 61, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (71, NULL, 1, 16, N'Blooming Love 18 Red Roses In Ruby Red Vase', N'<p><span style="font-size: medium;"><strong>EXCLUSIVE</strong>&nbsp;Sometimes flowers speak louder than words&hellip;and our elegant red roses speak volumes! Beautifully hand-arranged with lush greenery inside our exclusive ruby red vase, each radiant bloom will help you express your love in the most romantic way possible.</span></p>
<p><span style="font-size: medium;">All-around arrangement with premium red roses, baby&rsquo;s breath and greens</span><br /><span style="font-size: medium;">Our skilled florists select the freshest flowers available</span><br /><span style="font-size: medium;">Artistically designed in our exclusive ruby red glass vase; measures 8.75&rdquo;H</span><br /><span style="font-size: medium;">Large arrangement of 18 red roses measures approximately 20"H x 15"L</span></p>', N'RRE5522', 89.9900, 100, 5, 62, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (72, NULL, 8, 16, N'Daydream Bouquet Purple & Pink', N'<p><span style="font-size: medium;"><strong>EXCLUSIVE</strong>&nbsp;Just like a daydream. Our delightful lavender bouquet is gathered with pops of pink and lush greenery inside our striking, new fluted violet gathering vase. Designed in vintage pressed glass with ribbed detailing, it captures the rich beauty of the blooms, along with the thoughtfulness of your sentiment.</span></p>
<p><span style="font-size: medium;">All-around arrangement with pink roses; lavender carnations, daisy poms, button poms and stock; purple monte casino; accented with assorted greenery</span><br /><span style="font-size: medium;">Artistically designed in our exclusive fluted gathering vase in a lovely shade of violet; vintage pressed glass with ribbed detail creates a charming enhancement for the floral arrangement</span><br /><span style="font-size: medium;">Extra large arrangement measures approximately 17"H x 14"W</span></p>', N'FFP565454', 79.9900, 80, 5, 63, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [SizeVariantID], [ColorVariantID], [CategoriesID], [Title], [Description], [SKU], [Price], [Stock], [StatusID], [ImageID], [ImageID1], [ImageID2], [ImageID3], [ImageID4], [ImageID5], [SupplierID]) VALUES (73, NULL, 1, 16, N'Waterford Hand Crafted Glass Rose', N'<p><span style="font-size: medium;">Imagine the look of joy on their face when they receive our beautiful glass rose by Waterford. Available in clear, pink, red, lavender or&nbsp;pearlized white,&nbsp;this exquisite bloom is etched in stunning detail, creating a gift of timeless elegance. It&rsquo;s a unique and sparkling surprise to celebrate a special birthday, anniversary or any day you want to remind someone how much happiness they bring to your life.</span></p>
<p><span style="font-size: medium;">Waterford glass rose; measures 14.5"L</span><br /><span style="font-size: medium;">Hand-wash only</span></p>', N'WGR55855', 105.9900, 25, 5, 64, NULL, NULL, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ProductStatus] ON 

INSERT [dbo].[ProductStatus] ([StatusID], [Status]) VALUES (1, N'Discontinued')
INSERT [dbo].[ProductStatus] ([StatusID], [Status]) VALUES (2, N'Back Order')
INSERT [dbo].[ProductStatus] ([StatusID], [Status]) VALUES (3, N'Order Placed')
INSERT [dbo].[ProductStatus] ([StatusID], [Status]) VALUES (4, N'Recalled')
INSERT [dbo].[ProductStatus] ([StatusID], [Status]) VALUES (5, N'New')
SET IDENTITY_INSERT [dbo].[ProductStatus] OFF
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (1, N'Small')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (2, N'Medium')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (3, N'Large')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (4, N'1 Extra Large')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (5, N'2 Extra Large')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (6, N'3 Extra Large')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (7, N'4 Extra Large')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (8, N'6 Months')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (9, N'12 Months')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (10, N'18 Months')
INSERT [dbo].[Sizes] ([SizeVariantID], [Size]) VALUES (11, N'24 Months')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [Supplier], [Contact], [Email], [Phone], [Address], [City], [State], [Zip]) VALUES (1, N'B&F Maxam', N'Sheila West', N'swest@fake.com', N'709-555-9874', N'1214 West 9th St', N'Dallas', N'TX', N'77009')
INSERT [dbo].[Suppliers] ([SupplierID], [Supplier], [Contact], [Email], [Phone], [Address], [City], [State], [Zip]) VALUES (2, N'Kohler Wholesale', N'Amy Lee', N'alee@fake.com', N'417-555-2587', N'36 North St', N'Denver', N'CO', N'80012-6408')
INSERT [dbo].[Suppliers] ([SupplierID], [Supplier], [Contact], [Email], [Phone], [Address], [City], [State], [Zip]) VALUES (3, N'DOBA Distributor', N'Kyle Jackson', N'kjackson@fake.com', N'310-555-6724', N'15 Overland Drive', N'Jacksonville', N'FL', N'58743-7589')
INSERT [dbo].[Suppliers] ([SupplierID], [Supplier], [Contact], [Email], [Phone], [Address], [City], [State], [Zip]) VALUES (4, N'Printing Plus', N'James Caldwell', N'jcaldwell@fake.com', N'405-852-5555', N'21 Kite Ave', N'Oakland', N'CA', N'41252-8050')
INSERT [dbo].[Suppliers] ([SupplierID], [Supplier], [Contact], [Email], [Phone], [Address], [City], [State], [Zip]) VALUES (5, N'CostAway', N'Sam', N'Sam@cost.co', N'401-555-1212', N'Address 100', N'Lacriss', N'GA', N'52325')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
INSERT [dbo].[UserDetails] ([UserId], [FirstName], [LastName], [FavoriteColor]) VALUES (N'd3c17bff-adad-440e-b4b5-c720607f40ac', N'Mary', N'McCarty', N'#1f04ec')
INSERT [dbo].[UserDetails] ([UserId], [FirstName], [LastName], [FavoriteColor]) VALUES (N'e9812a66-1371-4c09-b17d-7da2ede32015', N'Bill', N'McCarty', N'#cccccc')
INSERT [dbo].[UserDetails] ([UserId], [FirstName], [LastName], [FavoriteColor]) VALUES (N'f300b87d-add1-49f3-a425-c145a16aa0fd', N'William', N'McCarty', N'#cccccc')
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Department]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Employees]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([ReportsToID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Employees]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoriesID])
REFERENCES [dbo].[Categories] ([CategorieParentID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Colors]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors] FOREIGN KEY([ColorVariantID])
REFERENCES [dbo].[Colors] ([ColorVariantID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Colors]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ImageID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images1] FOREIGN KEY([ImageID1])
REFERENCES [dbo].[Images] ([ImageID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images2] FOREIGN KEY([ImageID2])
REFERENCES [dbo].[Images] ([ImageID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images3]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images3] FOREIGN KEY([ImageID3])
REFERENCES [dbo].[Images] ([ImageID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images3]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images4] FOREIGN KEY([ImageID4])
REFERENCES [dbo].[Images] ([ImageID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images5]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images5] FOREIGN KEY([ImageID5])
REFERENCES [dbo].[Images] ([ImageID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Images5]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_ProductStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[ProductStatus] ([StatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_ProductStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductStatus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Sizes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Sizes] FOREIGN KEY([SizeVariantID])
REFERENCES [dbo].[Sizes] ([SizeVariantID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Sizes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Sizes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Suppliers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Suppliers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserDetails_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserDetails]'))
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserDetails_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserDetails_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserDetails]'))
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_UserDetails_AspNetUsers]
GO
