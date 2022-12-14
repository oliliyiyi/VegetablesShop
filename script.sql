USE [master]
GO
/****** Object:  Database [ShoppingManagement]    Script Date: 3/12/2022 11:17:07 PM ******/
CREATE DATABASE [ShoppingManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppingManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CHOUCHOU\MSSQL\DATA\ShoppingManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShoppingManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CHOUCHOU\MSSQL\DATA\ShoppingManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShoppingManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppingManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppingManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppingManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppingManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppingManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ShoppingManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppingManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppingManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppingManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppingManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppingManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppingManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppingManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppingManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShoppingManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppingManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppingManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppingManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppingManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppingManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppingManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppingManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoppingManagement] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppingManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppingManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppingManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppingManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShoppingManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShoppingManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShoppingManagement] SET QUERY_STORE = OFF
GO
USE [ShoppingManagement]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 3/12/2022 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[categoryID] [nvarchar](10) NOT NULL,
	[categoryName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOder]    Script Date: 3/12/2022 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOder](
	[oderID] [nvarchar](10) NOT NULL,
	[oderDate] [nvarchar](30) NULL,
	[total] [int] NULL,
	[status] [bit] NULL,
	[userID] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[oderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOderDetail]    Script Date: 3/12/2022 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOderDetail](
	[detailID] [nvarchar](10) NOT NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[oderID] [nvarchar](10) NULL,
	[productID] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 3/12/2022 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[productID] [nvarchar](10) NOT NULL,
	[productName] [nvarchar](30) NULL,
	[image] [nvarchar](300) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[categoryID] [nvarchar](10) NULL,
	[importDate] [date] NULL,
	[usingDate] [date] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 3/12/2022 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[roleID] [nvarchar](10) NOT NULL,
	[roleName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 3/12/2022 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [nvarchar](10) NOT NULL,
	[fullName] [nvarchar](30) NOT NULL,
	[password] [nvarchar](30) NOT NULL,
	[roleID] [nvarchar](10) NULL,
	[address] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[phone] [nvarchar](30) NULL,
	[email] [nvarchar](30) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblOder]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
GO
ALTER TABLE [dbo].[tblOderDetail]  WITH CHECK ADD FOREIGN KEY([oderID])
REFERENCES [dbo].[tblOder] ([oderID])
GO
ALTER TABLE [dbo].[tblOderDetail]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[tblProduct] ([productID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategory] ([categoryID])
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRoles] ([roleID])
GO
USE [master]
GO
ALTER DATABASE [ShoppingManagement] SET  READ_WRITE 
GO

INSERT INTO dbo.tblRoles ( roleID, roleName ) VALUES (N'AD' , N'Admin')
INSERT INTO dbo.tblRoles ( roleID, roleName ) VALUES (N'US' , N'User')
GO

INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (N'Admin', N'Toi la Admin', N'1', N'AD', N'Ha Noi','01/01/2001', N'123', N'abc123@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (N'Hoadnt', N'Hoa Doan', N'1', N'US',  N'Ha Noi','01/01/2001', N'123', N'def123@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (N'SE130363', N'Ngo Ha Tri Bao', N'1', N'AD', N'Ha Noi','01/01/2001', N'123', N'abc456@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (N'SE140103', N'Phuoc Ha', N'1', N'US', N'Ha Noi','01/01/2001', N'123', N'abc789@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (N'SE140119', N'Trai Nguyen', N'1', N'AD', N'Ha Noi','01/01/2001', N'123', N'abc321@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (N'SE140130', N'Tam Tran', N'1', N'AD', N'Ha Noi','01/01/2001', N'123', N'hdc123@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (N'SE140201', N'PHAM HOANG TU', N'1', N'US', N'Ha Noi','01/01/2001', N'123', N'ndh123@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (N'SE140969', N'Nguyen Gia Tin', N'123', N'US', N'Ha Noi','01/01/2001', N'123', N'pqh123@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (N'SE150443', N'LE MINH KHOA', N'1', N'US', N'Ha Noi','01/01/2001', N'123', N'tdg123@gmail.com', 1)
GO

INSERT dbo.tblCategory ([categoryID], [categoryName]) VALUES (N'CG01', N'Vegetable')
INSERT dbo.tblCategory ([categoryID], [categoryName]) VALUES (N'CG02', N'Fruit')
GO

INSERT dbo.tblProduct ([productID], [productName], [image], [categoryID], [price], [quantity], [importDate], [usingDate], [status]) VALUES (N'PD1', N'Strawberry', N'assets\img\products\product-img-1.jpg',N'CG02', N'3', N'5', '05/03/2022', '05/08/2022', 1)
INSERT dbo.tblProduct ([productID], [productName], [image], [categoryID], [price], [quantity], [importDate], [usingDate], [status]) VALUES (N'PD2', N'Grape', N'assets\img\products\product-img-2.jpg',N'CG02', N'6', N'5', '05/03/2022', '05/08/2022', 1)
INSERT dbo.tblProduct ([productID], [productName], [image], [categoryID], [price], [quantity], [importDate], [usingDate], [status]) VALUES (N'PD3', N'Lemon', N'assets\img\products\product-img-3.jpg',N'CG02', N'4', N'3', '05/03/2022', '05/08/2022', 1)
INSERT dbo.tblProduct ([productID], [productName], [image], [categoryID], [price], [quantity], [importDate], [usingDate], [status]) VALUES (N'PD4', N'Kiwi', N'assets\img\products\product-img-4.jpg',N'CG02', N'6', N'5', '05/03/2022', '05/08/2022', 1)
INSERT dbo.tblProduct ([productID], [productName], [image], [categoryID], [price], [quantity], [importDate], [usingDate], [status]) VALUES (N'PD5', N'Apple', N'assets\img\products\product-img-5.jpg',N'CG02', N'3', N'3', '05/03/2022', '05/08/2022', 1)
INSERT dbo.tblProduct ([productID], [productName], [image], [categoryID], [price], [quantity], [importDate], [usingDate], [status]) VALUES (N'PD6', N'Cabbage', N'assets\img\products\product-img-7.jpg',N'CG01', N'2', N'1', '05/03/2022', '05/08/2022', 1)
GO