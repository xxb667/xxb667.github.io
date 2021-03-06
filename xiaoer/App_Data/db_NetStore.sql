USE [master]
GO
/****** Object:  Database [db_NetStore]    Script Date: 2021/6/9 17:21:42 ******/
CREATE DATABASE [db_NetStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_NetStore', FILENAME = N'D:\Sql Server 2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_NetStore.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_NetStore_log', FILENAME = N'D:\Sql Server 2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_NetStore_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_NetStore] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_NetStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_NetStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_NetStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_NetStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_NetStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_NetStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_NetStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_NetStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_NetStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_NetStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_NetStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_NetStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_NetStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_NetStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_NetStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_NetStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_NetStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_NetStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_NetStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_NetStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_NetStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_NetStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_NetStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_NetStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_NetStore] SET  MULTI_USER 
GO
ALTER DATABASE [db_NetStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_NetStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_NetStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_NetStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [db_NetStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_NetStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_NetStore', N'ON'
GO
ALTER DATABASE [db_NetStore] SET QUERY_STORE = OFF
GO
USE [db_NetStore]
GO
/****** Object:  User [sa]    Script Date: 2021/6/9 17:21:42 ******/
CREATE USER [sa] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tb_Admin]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RealName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[LoadDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tb_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Admin1]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Admin1](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RealName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[LoadDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tb_Admin1] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_BookInfo]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_BookInfo](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[BookName] [varchar](50) NOT NULL,
	[BookIntroduce] [ntext] NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[Company] [varchar](50) NOT NULL,
	[BookUrl] [varchar](200) NOT NULL,
	[MarketPrice] [float] NOT NULL,
	[HotPrice] [float] NOT NULL,
	[Isrefinement] [bit] NOT NULL,
	[IsHot] [bit] NOT NULL,
	[IsDiscount] [bit] NOT NULL,
	[LoadDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tb_BookInfo] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_BookInfo1]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_BookInfo1](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[BookName] [varchar](50) NOT NULL,
	[BookIntroduce] [ntext] NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[Company] [varchar](50) NOT NULL,
	[BookUrl] [varchar](200) NOT NULL,
	[MarketPrice] [float] NOT NULL,
	[HotPrice] [float] NOT NULL,
	[Isrefinement] [bit] NOT NULL,
	[IsHot] [bit] NOT NULL,
	[IsDiscount] [bit] NOT NULL,
	[LoadDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tb_BookInfo1] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Class]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
	[CategoryUrl] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Class1]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Class1](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
	[CategoryUrl] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_Class1] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Detail]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Detail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[Num] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[TotailPrice] [float] NOT NULL,
	[Remark] [varchar](200) NULL,
 CONSTRAINT [PK_tb_BuyInfo] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Detail1]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Detail1](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[Num] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[TotailPrice] [float] NOT NULL,
	[Remark] [varchar](200) NULL,
 CONSTRAINT [PK_tb_BuyInfo1] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Image]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Image](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [varchar](50) NOT NULL,
	[ImageUrl] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tb_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Image1]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Image1](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [varchar](50) NOT NULL,
	[ImageUrl] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tb_Image1] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_LeaveWord]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LeaveWord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Uid] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[DateTime] [datetime] NOT NULL,
	[IP] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_tb_LeaveWord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_LeaveWord1]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LeaveWord1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Uid] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[DateTime] [datetime] NOT NULL,
	[IP] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_tb_LeaveWord1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Member]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Member](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RealName] [varchar](50) NOT NULL,
	[Sex] [bit] NOT NULL,
	[Phonecode] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[PostCode] [char](10) NOT NULL,
	[LoadDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tb_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Member1]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Member1](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RealName] [varchar](50) NOT NULL,
	[Sex] [bit] NOT NULL,
	[Phonecode] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[PostCode] [char](10) NOT NULL,
	[LoadDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tb_Member1] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderInfo]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderInfo](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[BooksFee] [float] NOT NULL,
	[ShipFee] [float] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[ShipType] [varchar](50) NOT NULL,
	[ReceiverName] [varchar](50) NOT NULL,
	[ReceiverPhone] [varchar](20) NOT NULL,
	[ReceiverPostCode] [char](10) NOT NULL,
	[ReceiverAddress] [varchar](200) NOT NULL,
	[ReceiverEmail] [varchar](50) NOT NULL,
	[IsConfirm] [bit] NOT NULL,
	[IsSend] [bit] NOT NULL,
	[IsEnd] [bit] NOT NULL,
	[AdminID] [int] NULL,
	[ConfirmTime] [datetime] NULL,
 CONSTRAINT [PK_tb_OrderInfo] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderInfo1]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderInfo1](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[BooksFee] [float] NOT NULL,
	[ShipFee] [float] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[ShipType] [varchar](50) NOT NULL,
	[ReceiverName] [varchar](50) NOT NULL,
	[ReceiverPhone] [varchar](20) NOT NULL,
	[ReceiverPostCode] [char](10) NOT NULL,
	[ReceiverAddress] [varchar](200) NOT NULL,
	[ReceiverEmail] [varchar](50) NOT NULL,
	[IsConfirm] [bit] NOT NULL,
	[IsSend] [bit] NOT NULL,
	[IsEnd] [bit] NOT NULL,
	[AdminID] [int] NULL,
	[ConfirmTime] [datetime] NULL,
 CONSTRAINT [PK_tb_OrderInfo1] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Reply]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Reply](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UName] [nvarchar](50) NULL,
	[Content] [ntext] NULL,
	[DateTime] [datetime] NULL,
	[ReplyID] [int] NULL,
	[IP] [nvarchar](20) NULL,
 CONSTRAINT [PK_tb_Reply] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Reply1]    Script Date: 2021/6/9 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Reply1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UName] [nvarchar](50) NULL,
	[Content] [ntext] NULL,
	[DateTime] [datetime] NULL,
	[ReplyID] [int] NULL,
	[IP] [nvarchar](20) NULL,
 CONSTRAINT [PK_tb_Reply1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Admin] ON 

INSERT [dbo].[tb_Admin] ([AdminID], [AdminName], [Password], [RealName], [Email], [LoadDate]) VALUES (1, N'mr', N'mrsoft', N'mr', N'1@126.com', CAST(N'2007-03-24T12:15:30.780' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_BookInfo] ON 

INSERT [dbo].[tb_BookInfo] ([BookID], [ClassID], [BookName], [BookIntroduce], [Author], [Company], [BookUrl], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate]) VALUES (16, 16, N'VC++', N'内容丰富', N'宋坤、李伟明、刘锐宁', N'人民邮电出版社', N'~\images\ftp\精品推荐3.jpg', 52, 52, 0, 1, 0, CAST(N'2007-06-01T09:43:47.000' AS DateTime))
INSERT [dbo].[tb_BookInfo] ([BookID], [ClassID], [BookName], [BookIntroduce], [Author], [Company], [BookUrl], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate]) VALUES (17, 16, N'Delphi开发技术大全', N'内容丰富', N'梁冰、梁水、李方超', N'人民邮电出版社', N'~\images\ftp\热销商品3.jpg', 52, 52, 1, 0, 0, CAST(N'2007-05-31T10:55:19.450' AS DateTime))
INSERT [dbo].[tb_BookInfo] ([BookID], [ClassID], [BookName], [BookIntroduce], [Author], [Company], [BookUrl], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate]) VALUES (18, 16, N'VB数据库系统开发完全手册', N'内容丰富', N'李俊民、高春艳、刘彬彬', N'人民邮电出版社', N'~\images\ftp\热销商品4.jpg', 59, 59, 0, 0, 1, CAST(N'2007-05-31T10:56:20.983' AS DateTime))
INSERT [dbo].[tb_BookInfo] ([BookID], [ClassID], [BookName], [BookIntroduce], [Author], [Company], [BookUrl], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate]) VALUES (19, 16, N'ASP.NET程序开发范例宝典', N'内容丰富', N'张跃廷、王小科', N'人民邮电出版社', N'~\images\ftp\热销商品.jpg', 52, 52, 1, 1, 1, CAST(N'2007-06-01T10:33:16.890' AS DateTime))
INSERT [dbo].[tb_BookInfo] ([BookID], [ClassID], [BookName], [BookIntroduce], [Author], [Company], [BookUrl], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate]) VALUES (20, 2, N'小说', N'很好看的', N'明明', N'*出版社', N'~\images\ftp\小说.jpg', 40, 40, 1, 1, 1, CAST(N'2007-06-01T10:52:29.983' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_BookInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_BookInfo1] ON 

INSERT [dbo].[tb_BookInfo1] ([BookID], [ClassID], [BookName], [BookIntroduce], [Author], [Company], [BookUrl], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate]) VALUES (1002, 1, N'软件工程', N'阿爸阿爸啊', N'薛艺佳', N'河南师范大学出版社', N'', 50, 45, 1, 1, 0, CAST(N'2021-05-19T17:38:51.320' AS DateTime))
INSERT [dbo].[tb_BookInfo1] ([BookID], [ClassID], [BookName], [BookIntroduce], [Author], [Company], [BookUrl], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate]) VALUES (2002, 1, N'乖，摸摸头', N'很nice', N'大冰', N'湖南出版社', N'~\images\ftp\文艺.jpg', 30, 20, 1, 1, 1, CAST(N'2021-05-25T10:12:19.917' AS DateTime))
INSERT [dbo].[tb_BookInfo1] ([BookID], [ClassID], [BookName], [BookIntroduce], [Author], [Company], [BookUrl], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate]) VALUES (2003, 2, N'全职法师', N'很好', N'乱', N'阅文集团', N'~\images\ftp\小说.jpg', 25, 18, 1, 1, 1, CAST(N'2021-05-25T10:15:17.440' AS DateTime))
INSERT [dbo].[tb_BookInfo1] ([BookID], [ClassID], [BookName], [BookIntroduce], [Author], [Company], [BookUrl], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate]) VALUES (2005, 6, N'周易易读', N'nice', N'韩广岳', N'中华出版社', N'~\images\ftp\管理.jpg', 25, 17, 1, 1, 1, CAST(N'2021-05-25T10:22:14.060' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_BookInfo1] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Class] ON 

INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (1, N'文艺', N'~\images\ftp\文艺.jpg')
INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (2, N'小说', N'~\images\ftp\小说.jpg')
INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (3, N'生活', N'~\images\ftp\生活.jpg')
INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (4, N'励志', N'~\images\ftp\励志.jpg')
INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (5, N'人文社科', N'~\images\ftp\人文.jpg')
INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (6, N'管理', N'~\images\ftp\管理.jpg')
INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (7, N'少儿', N'~\images\ftp\少儿.jpg')
INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (8, N'科技', N'~\images\ftp\科技.jpg')
INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (9, N'教育', N'~\images\ftp\教育.jpg')
INSERT [dbo].[tb_Class] ([ClassID], [ClassName], [CategoryUrl]) VALUES (16, N'哲学', N'~\images\ftp\工具书.jpg')
SET IDENTITY_INSERT [dbo].[tb_Class] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Class1] ON 

INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (1, N'文艺', N'~\images\ftp\文艺.jpg')
INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (2, N'小说', N'~\images\ftp\小说.jpg')
INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (3, N'生活', N'~\images\ftp\生活.jpg')
INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (4, N'励志', N'~\images\ftp\励志.jpg')
INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (5, N'人文社科', N'~\images\ftp\人文.jpg')
INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (6, N'管理', N'~\images\ftp\管理.jpg')
INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (7, N'少儿', N'~\images\ftp\少儿.jpg')
INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (8, N'科技', N'~\images\ftp\科技.jpg')
INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (9, N'教育', N'~\images\ftp\教育.jpg')
INSERT [dbo].[tb_Class1] ([ClassID], [ClassName], [CategoryUrl]) VALUES (10, N'哲学', N'~\images\ftp\工具书.jpg')
SET IDENTITY_INSERT [dbo].[tb_Class1] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Detail] ON 

INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (33, 18, 1, 50, 59, N'hh')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (34, 16, 1, 51, 52, N'hh')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (38, 20, 1, 55, 40, N'wu')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (39, 17, 1, 56, 52, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (40, 17, 1, 57, 52, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (1038, 20, 44, 1055, 1760, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (1039, 16, 1, 1055, 52, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (1040, 17, 11, 1055, 572, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (1041, 18, 1, 1055, 59, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (1042, 19, 2, 1055, 104, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (1043, 19, 1, 1056, 52, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (1044, 17, 1, 1057, 52, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (1045, 17, 1, 1058, 52, N'')
INSERT [dbo].[tb_Detail] ([DetailID], [BookID], [Num], [OrderID], [TotailPrice], [Remark]) VALUES (2038, 17, 1, 2055, 52, N'')
SET IDENTITY_INSERT [dbo].[tb_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Image] ON 

INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (23, N'工具书.jpg', N'~\images\ftp\工具书.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (24, N'管理.jpg', N'~\images\ftp\管理.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (25, N'教育.jpg', N'~\images\ftp\教育.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (26, N'科技.jpg', N'~\images\ftp\科技.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (27, N'励志.jpg', N'~\images\ftp\励志.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (28, N'人文.jpg', N'~\images\ftp\人文.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (29, N'少儿.jpg', N'~\images\ftp\少儿.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (30, N'生活.jpg', N'~\images\ftp\生活.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (31, N'文艺.jpg', N'~\images\ftp\文艺.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (32, N'小说.jpg', N'~\images\ftp\小说.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (34, N'精品推荐3.jpg', N'~\images\ftp\精品推荐3.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (37, N'热销商品3.jpg', N'~\images\ftp\热销商品3.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (38, N'热销商品4.jpg', N'~\images\ftp\热销商品4.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (39, N'热销商品5.jpg', N'~\images\ftp\热销商品5.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (41, N'热销商品.jpg', N'~\images\ftp\热销商品.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (42, N'特价商品2.jpg', N'~\images\ftp\特价商品2.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (43, N'特价商品.jpg', N'~\images\ftp\特价商品.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (46, N'特价商品4.jpg', N'~\images\ftp\特价商品4.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (47, N'特价商品3.jpg', N'~\images\ftp\特价商品3.jpg')
INSERT [dbo].[tb_Image] ([ImageID], [ImageName], [ImageUrl]) VALUES (49, N'未标题-1.jpg', N'~\images\ftp\未标题-1.jpg')
SET IDENTITY_INSERT [dbo].[tb_Image] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Image1] ON 

INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (1, N'工具书.jpg', N'~\images\ftp\工具书.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (2, N'管理.jpg', N'~\images\ftp\管理.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (3, N'教育.jpg', N'~\images\ftp\教育.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (4, N'科技.jpg', N'~\images\ftp\科技.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (5, N'励志.jpg', N'~\images\ftp\励志.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (6, N'人文.jpg', N'~\images\ftp\人文.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (7, N'少儿.jpg', N'~\images\ftp\少儿.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (8, N'生活.jpg', N'~\images\ftp\生活.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (9, N'文艺.jpg', N'~\images\ftp\文艺.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (10, N'小说.jpg', N'~\images\ftp\小说.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (11, N'精品推荐3.jpg', N'~\images\ftp\精品推荐3.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (12, N'热销商品3.jpg', N'~\images\ftp\热销商品3.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (13, N'热销商品4.jpg', N'~\images\ftp\热销商品4.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (14, N'热销商品5.jpg', N'~\images\ftp\热销商品5.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (15, N'热销商品.jpg', N'~\images\ftp\热销商品.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (16, N'特价商品2.jpg', N'~\images\ftp\特价商品2.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (17, N'特价商品.jpg', N'~\images\ftp\特价商品.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (18, N'特价商品4.jpg', N'~\images\ftp\特价商品4.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (19, N'特价商品3.jpg', N'~\images\ftp\特价商品3.jpg')
INSERT [dbo].[tb_Image1] ([ImageID], [ImageName], [ImageUrl]) VALUES (20, N'未标题-1.jpg', N'~\images\ftp\未标题-1.jpg')
SET IDENTITY_INSERT [dbo].[tb_Image1] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_LeaveWord] ON 

INSERT [dbo].[tb_LeaveWord] ([ID], [Uid], [Subject], [Content], [DateTime], [IP]) VALUES (30, N'mr', N'商品质量', N'商品质量不错，继续加油', CAST(N'2021-05-18T13:19:42.000' AS DateTime), N'::1')
INSERT [dbo].[tb_LeaveWord] ([ID], [Uid], [Subject], [Content], [DateTime], [IP]) VALUES (1030, N'xueyijia', N'shopping', N'aaaaaaaaaaaaaaaaaa', CAST(N'2021-05-19T17:51:43.000' AS DateTime), N'::1')
INSERT [dbo].[tb_LeaveWord] ([ID], [Uid], [Subject], [Content], [DateTime], [IP]) VALUES (2030, N'xueyijia', N'支付问题', N'不能选用支付宝支付
', CAST(N'2021-05-26T10:17:05.000' AS DateTime), N'::1')
SET IDENTITY_INSERT [dbo].[tb_LeaveWord] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Member] ON 

INSERT [dbo].[tb_Member] ([MemberID], [UserName], [Password], [RealName], [Sex], [Phonecode], [Email], [Address], [PostCode], [LoadDate]) VALUES (3, N'mr', N'mrsoft', N'00', 0, N'0431-0000***       ', N'www.88@1*3.com', N'长春市', N'000000    ', CAST(N'2007-05-30T16:45:41.340' AS DateTime))
INSERT [dbo].[tb_Member] ([MemberID], [UserName], [Password], [RealName], [Sex], [Phonecode], [Email], [Address], [PostCode], [LoadDate]) VALUES (4, N'xueyijia', N'12345678', N'xueyijia', 1, N'1233424             ', N'243553666@qq.com', N'河南师范大学', N'467100    ', CAST(N'2021-05-19T17:50:15.747' AS DateTime))
INSERT [dbo].[tb_Member] ([MemberID], [UserName], [Password], [RealName], [Sex], [Phonecode], [Email], [Address], [PostCode], [LoadDate]) VALUES (1004, N'jia', N'123456', N'小明', 1, N'1233424             ', N'243553666@qq.com', N'河南师范大学', N'467100    ', CAST(N'2021-05-25T23:15:31.927' AS DateTime))
INSERT [dbo].[tb_Member] ([MemberID], [UserName], [Password], [RealName], [Sex], [Phonecode], [Email], [Address], [PostCode], [LoadDate]) VALUES (1005, N'1', N'1', N'2', 1, N'1233424             ', N'243553666@qq.com', N'12', N'467100    ', CAST(N'2021-05-25T23:40:36.420' AS DateTime))
INSERT [dbo].[tb_Member] ([MemberID], [UserName], [Password], [RealName], [Sex], [Phonecode], [Email], [Address], [PostCode], [LoadDate]) VALUES (2004, N'12', N'12345678', N'j', 1, N'1233424             ', N'243553666@qq.com', N'bucuo', N'467100    ', CAST(N'2021-05-26T17:18:20.140' AS DateTime))
INSERT [dbo].[tb_Member] ([MemberID], [UserName], [Password], [RealName], [Sex], [Phonecode], [Email], [Address], [PostCode], [LoadDate]) VALUES (2005, N'13', N'123', N'x', 0, N'1233424             ', N'243553666@qq.com', N'河南师范大学', N'467100    ', CAST(N'2021-05-26T17:21:04.420' AS DateTime))
INSERT [dbo].[tb_Member] ([MemberID], [UserName], [Password], [RealName], [Sex], [Phonecode], [Email], [Address], [PostCode], [LoadDate]) VALUES (3004, N'薛艺佳', N'12345678901', N'薛艺佳', 0, N'2345677             ', N'2538377833@qq.com', N'河南', N'467200    ', CAST(N'2021-05-30T11:28:28.847' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Member] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_OrderInfo] ON 

INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (50, CAST(N'2007-05-31T11:27:37.123' AS DateTime), 59, 10, 69, N'邮局邮寄普通包裹（10元/本）', N'00', N'0431-0000***', N'000000    ', N'长春市', N'www.88@1*3.com', 1, 0, 0, 1, CAST(N'2007-05-31T11:29:30.000' AS DateTime))
INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (51, CAST(N'2007-05-31T11:29:07.373' AS DateTime), 52, 10, 62, N'邮局邮寄普通包裹（10元/本）', N'00', N'0431-0000***', N'000000    ', N'长春市', N'www.88@1*3.com', 1, 1, 0, 1, CAST(N'2007-05-31T11:29:58.000' AS DateTime))
INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (55, CAST(N'2021-05-19T17:58:20.467' AS DateTime), 40, 0, 40, N'免费送货（长春）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (56, CAST(N'2021-05-19T18:04:12.343' AS DateTime), 52, 30, 82, N'邮局邮寄快递包裹（30元/本）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (57, CAST(N'2021-05-19T18:06:30.827' AS DateTime), 52, 10, 62, N'邮局邮寄普通包裹（10元/本）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (1055, CAST(N'2021-05-24T23:27:56.353' AS DateTime), 2547, 0, 2547, N'免费送货（长春）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (1056, CAST(N'2021-05-24T23:30:18.030' AS DateTime), 52, 0, 52, N'免费送货（长春）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (1057, CAST(N'2021-05-24T23:43:00.390' AS DateTime), 52, 0, 52, N'免费送货（长春）', N'贾新建', N'18248944218', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (1058, CAST(N'2021-05-24T23:47:48.913' AS DateTime), 52, 0, 52, N'免费送货（长春）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (2055, CAST(N'2021-05-26T10:12:51.053' AS DateTime), 52, 10, 62, N'邮局邮寄普通包裹（10元/本）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_OrderInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_OrderInfo1] ON 

INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (1, CAST(N'2007-05-31T11:27:37.123' AS DateTime), 59, 10, 69, N'邮局邮寄普通包裹（10元/本）', N'00', N'0431-0000***', N'000000    ', N'长春市', N'www.88@1*3.com', 1, 0, 0, 1, CAST(N'2007-05-31T11:29:30.000' AS DateTime))
INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (2, CAST(N'2007-05-31T11:29:07.373' AS DateTime), 52, 10, 62, N'邮局邮寄普通包裹（10元/本）', N'00', N'0431-0000***', N'000000    ', N'长春市', N'www.88@1*3.com', 1, 1, 0, 1, CAST(N'2007-05-31T11:29:58.000' AS DateTime))
INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (3, CAST(N'2021-05-19T17:58:20.467' AS DateTime), 40, 0, 40, N'免费送货（长春）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (4, CAST(N'2021-05-19T18:04:12.343' AS DateTime), 52, 30, 82, N'邮局邮寄快递包裹（30元/本）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (5, CAST(N'2021-05-19T18:06:30.827' AS DateTime), 52, 10, 62, N'邮局邮寄普通包裹（10元/本）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (6, CAST(N'2021-05-24T23:27:56.353' AS DateTime), 2547, 0, 2547, N'免费送货（长春）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (7, CAST(N'2021-05-24T23:30:18.030' AS DateTime), 52, 0, 52, N'免费送货（长春）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (8, CAST(N'2021-05-24T23:43:00.390' AS DateTime), 52, 0, 52, N'免费送货（长春）', N'贾新建', N'18248944218', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (9, CAST(N'2021-05-24T23:47:48.913' AS DateTime), 52, 0, 52, N'免费送货（长春）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tb_OrderInfo1] ([OrderID], [OrderDate], [BooksFee], [ShipFee], [TotalPrice], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverPostCode], [ReceiverAddress], [ReceiverEmail], [IsConfirm], [IsSend], [IsEnd], [AdminID], [ConfirmTime]) VALUES (10, CAST(N'2021-05-26T10:12:51.053' AS DateTime), 52, 10, 62, N'邮局邮寄普通包裹（10元/本）', N'xueyijia', N'1233424', N'467100    ', N'河南师范大学', N'243553666@qq.com', 0, 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_OrderInfo1] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Reply] ON 

INSERT [dbo].[tb_Reply] ([ID], [UName], [Content], [DateTime], [ReplyID], [IP]) VALUES (49, N'11', N'留言回复信息', CAST(N'2007-06-01T10:07:48.000' AS DateTime), 28, N'127.0.0.1')
INSERT [dbo].[tb_Reply] ([ID], [UName], [Content], [DateTime], [ReplyID], [IP]) VALUES (50, N'小明', N'多谢，多谢', CAST(N'2021-05-18T13:20:54.000' AS DateTime), 30, N'::1')
SET IDENTITY_INSERT [dbo].[tb_Reply] OFF
GO
ALTER TABLE [dbo].[tb_Admin] ADD  CONSTRAINT [DF_tb_Admin_LoadDate]  DEFAULT (getdate()) FOR [LoadDate]
GO
ALTER TABLE [dbo].[tb_Admin1] ADD  CONSTRAINT [DF_tb_Admin_LoadDate1]  DEFAULT (getdate()) FOR [LoadDate]
GO
ALTER TABLE [dbo].[tb_BookInfo] ADD  CONSTRAINT [DF_tb_BookInfo_LoadDate]  DEFAULT (getdate()) FOR [LoadDate]
GO
ALTER TABLE [dbo].[tb_BookInfo1] ADD  CONSTRAINT [DF_tb_BookInfo_LoadDate1]  DEFAULT (getdate()) FOR [LoadDate]
GO
ALTER TABLE [dbo].[tb_Member] ADD  CONSTRAINT [DF_tb_Member_LoadDate]  DEFAULT (getdate()) FOR [LoadDate]
GO
ALTER TABLE [dbo].[tb_Member1] ADD  CONSTRAINT [DF_tb_Member1_LoadDate]  DEFAULT (getdate()) FOR [LoadDate]
GO
ALTER TABLE [dbo].[tb_OrderInfo] ADD  CONSTRAINT [DF_tb_OrderInfo_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[tb_OrderInfo] ADD  CONSTRAINT [DF_tb_OrderInfo_IsConfirm]  DEFAULT ((0)) FOR [IsConfirm]
GO
ALTER TABLE [dbo].[tb_OrderInfo] ADD  CONSTRAINT [DF_tb_OrderInfo_SendStatus]  DEFAULT ((0)) FOR [IsSend]
GO
ALTER TABLE [dbo].[tb_OrderInfo] ADD  CONSTRAINT [DF_tb_OrderInfo_IsEnd]  DEFAULT ((0)) FOR [IsEnd]
GO
ALTER TABLE [dbo].[tb_OrderInfo1] ADD  CONSTRAINT [DF_tb_OrderInfo1_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[tb_OrderInfo1] ADD  CONSTRAINT [DF_tb_OrderInfo1_IsConfirm]  DEFAULT ((0)) FOR [IsConfirm]
GO
ALTER TABLE [dbo].[tb_OrderInfo1] ADD  CONSTRAINT [DF_tb_OrderInfo1_IsEnd]  DEFAULT ((0)) FOR [IsEnd]
GO
ALTER TABLE [dbo].[tb_BookInfo]  WITH CHECK ADD  CONSTRAINT [FK_tb_BookInfo_tb_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[tb_Class] ([ClassID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_BookInfo] CHECK CONSTRAINT [FK_tb_BookInfo_tb_Class]
GO
ALTER TABLE [dbo].[tb_BookInfo1]  WITH CHECK ADD  CONSTRAINT [FK_tb_BookInfo1_tb_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[tb_Class] ([ClassID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_BookInfo1] CHECK CONSTRAINT [FK_tb_BookInfo1_tb_Class]
GO
ALTER TABLE [dbo].[tb_BookInfo1]  WITH CHECK ADD  CONSTRAINT [FK_tb_BookInfo1_tb_Class1] FOREIGN KEY([ClassID])
REFERENCES [dbo].[tb_Class1] ([ClassID])
GO
ALTER TABLE [dbo].[tb_BookInfo1] CHECK CONSTRAINT [FK_tb_BookInfo1_tb_Class1]
GO
ALTER TABLE [dbo].[tb_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tb_Detail_tb_BookInfo] FOREIGN KEY([BookID])
REFERENCES [dbo].[tb_BookInfo] ([BookID])
GO
ALTER TABLE [dbo].[tb_Detail] CHECK CONSTRAINT [FK_tb_Detail_tb_BookInfo]
GO
ALTER TABLE [dbo].[tb_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tb_Detail_tb_OrderInfo] FOREIGN KEY([OrderID])
REFERENCES [dbo].[tb_OrderInfo] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Detail] CHECK CONSTRAINT [FK_tb_Detail_tb_OrderInfo]
GO
ALTER TABLE [dbo].[tb_Detail1]  WITH CHECK ADD  CONSTRAINT [FK_tb_Detail1_tb_BookInfo1] FOREIGN KEY([BookID])
REFERENCES [dbo].[tb_BookInfo1] ([BookID])
GO
ALTER TABLE [dbo].[tb_Detail1] CHECK CONSTRAINT [FK_tb_Detail1_tb_BookInfo1]
GO
ALTER TABLE [dbo].[tb_Detail1]  WITH CHECK ADD  CONSTRAINT [FK_tb_Detail1_tb_OrderInfo1] FOREIGN KEY([OrderID])
REFERENCES [dbo].[tb_OrderInfo1] ([OrderID])
GO
ALTER TABLE [dbo].[tb_Detail1] CHECK CONSTRAINT [FK_tb_Detail1_tb_OrderInfo1]
GO
/****** Object:  StoredProcedure [dbo].[Proc_AddCategory]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_AddCategory]
(
@ClassName varchar(50),
@CategoryUrl Varchar(50)
)
as
if exists(select * from tb_Class where ClassName=@ClassName )
	begin
		return -100
	end
else
	begin
		insert tb_Class(ClassName,categoryUrl)
		values(@ClassName,@categoryUrl)
	end
GO
/****** Object:  StoredProcedure [dbo].[Proc_AddGoodsInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_AddGoodsInfo]
(
  @ClassID bigint,
  @GoodsName varchar(50),
  @GoodsIntroduce ntext,
  @GoodsBrand varchar(50),
  @GoodsUnit varchar(10),
  @GoodsWeight float,
  @GoodsUrl varchar(50),
  @MarketPrice float,
  @MemberPrice float,
  @Isrefinement bit,
  @IsHot bit,
  @IsDisCount bit
  
)
as
if exists(select * from tb_GoodsInfo where GoodsName=@GoodsName)
  begin
   return -100
  end
else
  begin
    insert tb_GoodsInfo
    (ClassID,GoodsName,GoodsIntroduce,GoodsBrand,GoodsUnit,GoodsWeight,GoodsUrl,MarketPrice,MemberPrice,Isrefinement,IsHot,IsDiscount)
    Values (@ClassID,@GoodsName,@GoodsIntroduce,@GoodsBrand,@GoodsUnit,@GoodsWeight,@GoodsUrl,@MarketPrice,@MemberPrice,@Isrefinement,@IsHot,@IsDiscount)

  end
GO
/****** Object:  StoredProcedure [dbo].[proc_AddODetail]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_AddODetail]
(
@BookID int,
@Num int,
@OrderID int,
@TotailPrice float,
@Remark varchar(200)
)
as
Insert into tb_Detail1
(BookID,Num,OrderID,TotailPrice,Remark)
values
(@BookID,@Num,@OrderID,@TotailPrice,@Remark)
GO
/****** Object:  StoredProcedure [dbo].[proc_AddOI]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_AddOI]
(
@BooksFee float,
@ShipFee float,
@ShipType varchar(50),
@Name varchar(50),
@Phone varchar(20),
@PostCode char(10),
@Address varchar(200),
@Email varchar(50),
@OrderID int output
)
as
Insert into tb_OrderInfo1
(BooksFee,ShipFee,TotalPrice,ShipType,ReceiverName,ReceiverPhone,ReceiverPostCode,ReceiverAddress,ReceiverEmail)
values
(@BooksFee,@ShipFee,(@BooksFee+@ShipFee),@ShipType,@Name,@Phone,@PostCode,@Address,@Email)
select @OrderID=@@identity
GO
/****** Object:  StoredProcedure [dbo].[proc_AddUser]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[proc_AddUser]
(
	@UserName varchar(50),
	@Password varchar(50),
	@RealName varchar(50),
	@Sex bit,
	@Phonecode char(20),
	@Email varchar(50),
	@Address varchar(200),
	@PostCode char(10)
)
as
if Exists(select * from tb_Member where UserName=@UserName)
	return -100
else
	begin
		Insert tb_Member(UserName,Password,RealName,Sex,Phonecode,Email,Address,PostCode)
		values(@UserName,@Password,@RealName,@Sex,@Phonecode,@Email,@Address,@PostCode)
		return 100
	end
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteAdminInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeleteAdminInfo]
(
@AdminID bigint
)
as
delete from tb_Admin
where AdminID=@AdminID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteAreaInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeleteAreaInfo]
(
@AreaID bigint
)
as
delete from tb_Area
where AreaID=@AreaID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteCategory]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_DeleteCategory]
(
 @ClassID bigint
)
as
delete from tb_Class where ClassID=@ClassID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteGoodsInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeleteGoodsInfo]
(
@GoodsID bigint
)
as
Delete from tb_GoodsInfo
where GoodsID=@GoodsID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteImageInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeleteImageInfo]
(
@ImageID bigint
)
as
delete from tb_Image
where ImageID=@ImageID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteMemberInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeleteMemberInfo]
(
@MemberID bigint
)
as
delete from tb_Member 
where MemberID=@MemberID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteOrderInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_DeleteOrderInfo]
(
@OrderID bigint
)
as
delete from tb_OrderInfo
where OrderID=@OrderID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeletePayInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeletePayInfo]
(
@PayID bigint
)
as
delete from tb_PayType
where PayID=@PayID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteSC]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Proc_DeleteSC]
(
@MemberID bigint
)
as
delete from tb_ShopCart
where MemberID=@MemberID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteSCByID]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeleteSCByID]
(
@MemberID bigint,
@CartID bigint
)
as
delete from tb_ShopCart
where MemberID=@MemberID and CartID=@CartID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteShipInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeleteShipInfo]
(
@ShipID bigint
)
as
delete from tb_ShipType
where ShipID=@ShipID
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteShopCart]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeleteShopCart]
(
@MemberID bigint
)
as
delete from tb_ShopCart
where MemberID=@MemberID
GO
/****** Object:  StoredProcedure [dbo].[proc_DeplayGI]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--当@Deplay=1时,从数据表tb_BookInfo中，查询Isrefinement(精品推出)字段为1的商品信息
--当@Deplay=2时,从数据表tb_BookInfo中，查询IsDiscount(特价商品)字段为1的商品信息
--当@Deplay=3时,从数据表tb_BookInfo中，查询IsHot(热销商品)字段为1的商品信息
Create proc [dbo].[proc_DeplayGI]
(
	@Deplay int
)
as
if(@Deplay=1)--精品推出
	begin
		select top 3 * from tb_BookInfo
		where Isrefinement=1 
	end		
else if(@Deplay=2)--特价商品
	begin
		 select top 6 * from tb_BookInfo
		 where  IsDiscount=1
	end
else if(@Deplay=3)--热销商品
	begin
		 select top 6 * from tb_BookInfo
		 where IsHot=1 
	end
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeplayGIByC]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeplayGIByC]
(
@ClassID bigint
)
as

	select * from tb_GoodsInfo
	where ClassID=@ClassID 
	
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeplayGInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_DeplayGInfo]
(
@Deplay int
)
as
if(@Deplay=1)
	begin
		 select top 4 * from tb_GoodsInfo
		 where Isrefinement=1 
	end
else if(@Deplay=2)
	begin
		 select top 4 * from tb_GoodsInfo
		 where IsHot=1 
	end
else if(@Deplay=3)
	begin
		 select top 4 * from tb_GoodsInfo
		 where  IsDiscount=1
	end
GO
/****** Object:  StoredProcedure [dbo].[proc_GCN]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_GCN]
(
	@ClassID int
)
as
if exists(select * from tb_Class where ClassID=@ClassID)
	begin
		select ClassName from tb_Class 
		where ClassID=@ClassID
	end
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAdminInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetAdminInfo]
as
select * from tb_Admin
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAllUserInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetAllUserInfo]
as
select * from tb_Member
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAreaInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetAreaInfo]
as
select * from tb_Area
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAreaInfoByID]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetAreaInfoByID]
(
@AreaID bigint
)
as
select * from tb_Area
where AreaID=@AreaID
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetCategory]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetCategory]
as
select * from tb_Class
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetClassName]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetClassName]
(
@ClassID bigint
)
as
select ClassName from tb_Class
where ClassID=@ClassID
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetGIByOID]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetGIByOID]
(
@OrderID bigint
)
as
select g.GoodsID,g.GoodsName,b.Num,g.MemberPrice,b.SumPrice,(case IsDisCount when '1' then '是' when '0' then '否' end) as IsDisCount 
from tb_GoodsInfo g,tb_BuyInfo b,tb_OrderInfo o
where g.GoodsID=b.GoodsID and b.OrderID=o.OrderID and o.OrderID=@OrderID
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetGoodsInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetGoodsInfo]
as
select * from tb_GoodsInfo
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetGoodsInfoByID]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetGoodsInfoByID]
(
@GoodsID bigint
)
as
select * from tb_GoodsInfo
where GoodsID=@GoodsID
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetImageInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Proc_GetImageInfo]
as
select * from tb_Image
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetNMI]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetNMI]
as
if exists(select * from tb_Member where DATEDIFF(day, LoadDate, getdate()) < 1)
	begin
		select * from tb_Member where DATEDIFF(day, LoadDate, getdate()) < 1
	end
else
	return -100
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetNOI]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetNOI]
as
if exists(select * from tb_OrderInfo where  DATEDIFF(day, OrderDate, getdate()) < 1
)
   begin
		select * from tb_OrderInfo where DATEDIFF(day, OrderDate, getdate()) < 1
   end
else
   return -100
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetOdIf]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetOdIf]
(
 @OrderID bigint
)
as
select * from tb_OrderInfo
where OrderID=@OrderID
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetPayInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetPayInfo]
as
select * from tb_PayType
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetPayInfoByID]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetPayInfoByID]
(
@PayID bigint
)
as
select * from tb_PayType
where PayID=@PayID
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetPayWay]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetPayWay]
(
@PayType int
)
as
select PayWay from tb_PayType where PayID=@PayType
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetSCI]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetSCI]
(
@MemberID bigint
)
as
select *
from tb_ShopCart
where MemberID=@MemberID
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetShipInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetShipInfo]
as
select * from tb_ShipType
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetShipInfoByID]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetShipInfoByID]
(
@ShipID bigint
)
as
select * from tb_ShipType
where ShipID=@ShipID
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetShipWay]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetShipWay]
(
@ShipType int
)
as
select ShipWay from tb_ShipType where ShipID=@ShipType
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetShopCart]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetShopCart]
(
@MemberID bigint
)
as
select CartID,GoodsName,MarketPrice,MemberPrice,Num,SumPrice,MemberID
from tb_ShopCart b,tb_GoodsInfo i
where b.GoodsID=i.GoodsID and MemberID=@MemberID
GO
/****** Object:  StoredProcedure [dbo].[proc_GetUI]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[proc_GetUI]
(
	@MemberID int 
)
as
if exists(select * from tb_Member where MemberID=@MemberID)
	begin
		select * from tb_Member 
		where  MemberID=@MemberID
	end
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetUIByID]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetUIByID]
(
@MemberID bigint
)
as 
   select * from tb_Member where MemberID=@MemberID
GO
/****** Object:  StoredProcedure [dbo].[proc_GIList]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[proc_GIList]
(
	@ClassID int,
	@Deplay int
)
as
if (@ClassID=0)
	begin
		if(@Deplay=1) --最新商品
			begin
	            select * from tb_BookInfo
				where DATEDIFF(day, LoadDate, getdate()) < 7
			end	
		else if(@Deplay=2)	--精品推荐
			begin 
				select * from tb_BookInfo		
				where Isrefinement=1 
			end		
		else if(@Deplay=3)--特价商品
			begin
				 select  * from tb_BookInfo
				 where  IsDiscount=1
			end	
		else if(@Deplay=4)--热销商品
			begin
				 select  * from tb_BookInfo
				 where IsHot=1 
			end	
	end
else
	begin
		select * from tb_BookInfo
		where ClassID=@ClassID
	end	
GO
/****** Object:  StoredProcedure [dbo].[Proc_GSF]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Proc_GSF]
(
@GoodsID bigint,
@ShipWay varchar(50)
)
as
if exists(select ShipFee
from tb_ShipType
where shipWay=@shipWay and 
ClassID=
(
select ClassID
from tb_GoodsInfo
where GoodsID=@GoodsID
)
)
begin
select ShipFee
from tb_ShipType
where shipWay=@shipWay and 
ClassID=
(
select ClassID
from tb_GoodsInfo
where GoodsID=@GoodsID
)
end
else
return 100
GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertAreaInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_InsertAreaInfo]
(
@AreaName varchar(50),
@AreaKM   int
)
as
if exists(select * from tb_Area where AreaName=@AreaName and AreaKM=@AreaKM)
	begin
		return
	end
else
	begin
		insert into tb_Area(AreaName,AreaKM)
		values (@AreaName,@AreaKM)
	end

GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertBuy]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_InsertBuy]
(
@GoodsID bigint,
@Num int,
@OrderID bigint,
@SumPrice float, 
@MemberID bigint
)
as
insert into tb_BuyInfo(GoodsID,Num,OrderID,SumPrice, MemberID)
values (@GoodsID,@Num,@OrderID,@SumPrice, @MemberID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertImageInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_InsertImageInfo]
(
@ImageName varchar(50),
@ImageUrl varchar(200)
)
as
insert into tb_Image(ImageName,ImageUrl)
values(@ImageName,@ImageUrl)
GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertPayInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_InsertPayInfo]
(
@PayWay varchar(50)
)
as
if exists(select * from tb_PayType where PayWay=@PayWay)
	begin
		return
	end
else
	begin
		insert into tb_PayType(PayWay)
		values (@PayWay)
	end

GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertShipInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_InsertShipInfo]
(
@ShipWay varchar(50),
@ShipFee float,
@ClassID bigint
)
as
if exists(select * from tb_ShipType where ShipWay=@ShipWay and ShipFee=@ShipFee  and ClassID=@ClassID)
	begin
		return
	end
else
begin
	insert into tb_ShipType(ShipWay,ShipFee,ClassID)
	values (@ShipWay,@ShipFee,@ClassID)
end

GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertShopCart]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_InsertShopCart]
(
@GoodsID bigint,
@MemberPrice float,
@MemberID bigint,
@GoodsWeight float
)
as
if exists(select * from tb_ShopCart where GoodsID=@GoodsID and MemberID=@MemberID)
	begin
		update tb_ShopCart
		set Num=(Num+1),
			SumPrice=(SumPrice+@MemberPrice),
            GoodsWeight=(GoodsWeight+@GoodsWeight)
        where GoodsID=@GoodsID and MemberID=@MemberID
	end
else
	begin
		Insert into tb_ShopCart(GoodsID,Num,SumPrice,MemberID,GoodsWeight)
		values(@GoodsID,1,@MemberPrice,@MemberID,@GoodsWeight)
	end	
GO
/****** Object:  StoredProcedure [dbo].[proc_ModifyUser]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[proc_ModifyUser]
(
	@UserName varchar(50),
	@Password varchar(50),
	@RealName varchar(50),
	@Sex bit,
	@Phonecode char(20),
	@Email varchar(50),
	@Address varchar(200),
	@PostCode char(10),
	@MemberID int 
)
as
update tb_Member
set UserName=@UserName,
	Password=@Password,
    RealName=@RealName,
    Sex=@Sex,
	Phonecode=@Phonecode,
	Email=@Email,
	Address=@Address,
	PostCode=@PostCode
   
 where MemberID=@MemberID
GO
/****** Object:  StoredProcedure [dbo].[proc_NewGoods]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[proc_NewGoods]
as
select * from tb_BookInfo1
where DATEDIFF(day, LoadDate, getdate()) < 7

GO
/****** Object:  StoredProcedure [dbo].[proc_SearchGI]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_SearchGI]
(
@keywords varchar(50)
)
as
declare
@sql nvarchar(1024)
set @sql='select * from tb_BookInfo1 b, tb_Class1 c 
          where b.ClassID=c.ClassID 
          and 
			(BookID like ''%'+CONVERT(NVARCHAR(50),@keywords)+'%'' 
			or BookName like ''%'+CONVERT(NVARCHAR(50),@keywords)+'%'' 
			or ClassName like''%'+CONVERT(NVARCHAR(50),@keywords)+'%''
			or Author like''%'+CONVERT(NVARCHAR(50),@keywords)+'%''
			or Company like''%'+CONVERT(NVARCHAR(50),@keywords)+'%''
			or HotPrice like ''%'+CONVERT(NVARCHAR(50),@keywords)
			+'%'')'
exec(@sql)
GO
/****** Object:  StoredProcedure [dbo].[Proc_SearchGoodsInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_SearchGoodsInfo]
(
@keywords varchar(50)
)
as
declare
@sql nvarchar(1024)
set @sql='select * from tb_GoodsInfo g, tb_Class c 
          where g.ClassID=c.ClassID 
          and 
			(GoodsID like ''%'+CONVERT(NVARCHAR(50),@keywords)
		+'%'' or GoodsName like ''%'+CONVERT(NVARCHAR(50),@keywords)
		+'%'' or ClassName like''%'+CONVERT(NVARCHAR(50),@keywords)
		+'%''or MemberPrice like ''%'+CONVERT(NVARCHAR(50),@keywords)
		+'%'')'
exec(@sql)
GO
/****** Object:  StoredProcedure [dbo].[Proc_SearchOI]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_SearchOI]
(
 @OrderID int,
 @NF int,
 @Name varchar(50),
 @IsConfirm int,
 @IsSend int,
 @IsEnd int
)
as
declare
            @Msql varchar(1024)
			set @Msql='select * from tb_OrderInfo1 where IsConfirm='+Convert(varchar(20),@IsConfirm)+' and IsSend='+Convert(varchar(20),@IsSend)+' and IsEnd='+Convert(varchar(20),@IsEnd)+''
            if @OrderID>0
				begin
				set @Msql=@Msql+'and OrderID='+ convert(varchar(20),@OrderID)
				end
			if @NF>0
				begin
				set @Msql=@Msql+'and ReceiverName='''+convert(varchar(50),@Name)+''''
                end
           exec(@Msql)
GO
/****** Object:  StoredProcedure [dbo].[Proc_TotalInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_TotalInfo]
(
@MemberID bigint
)
as
select * from tb_ShopCart
select Sum(SumPrice),Sum(GoodsWeight),Sum(Num)
from tb_ShopCart
where MemberID=@MemberID
GO
/****** Object:  StoredProcedure [dbo].[Proc_UpdateAreaInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_UpdateAreaInfo]
(
@AreaID bigint,
@AreaName varchar(50),
@AreaKM   int
)
as
update tb_Area
set AreaName=@AreaName,
    AreaKM=@AreaKM
where AreaID=@AreaID
GO
/****** Object:  StoredProcedure [dbo].[Proc_UpdateGoodsInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_UpdateGoodsInfo]
(
 @ClassID bigint,
  @GoodsName varchar(50),
  @GoodsIntroduce ntext,
  @GoodsBrand varchar(50),
  @GoodsUnit varchar(10),
  @GoodsWeight float,
  @GoodsUrl varchar(50),
  @MarketPrice float,
  @MemberPrice float,
  @Isrefinement bit,
  @IsHot bit,
  @IsDisCount bit,
  @GoodsID int
)
as
update tb_GoodsInfo
set ClassID=@ClassID,
	GoodsName=@GoodsName,
	GoodsIntroduce=@GoodsIntroduce,
	GoodsBrand=@GoodsBrand,
	GoodsUnit=@GoodsUnit,
	GoodsWeight=@GoodsWeight,
	GoodsUrl=@GoodsUrl,
	MarketPrice=@MarketPrice,
	MemberPrice=@MemberPrice,
	Isrefinement=@Isrefinement,
	IsHot=@IsHot,
	IsDiscount=@IsDiscount,
    AddDate=GetDate()
where GoodsID=@GoodsID
GO
/****** Object:  StoredProcedure [dbo].[Proc_UpdatePayInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_UpdatePayInfo]
(
@PayID bigint,
@PayWay varchar(50)
)
as
update tb_PayType
set PayWay=@PayWay  
where PayID=@PayID
GO
/****** Object:  StoredProcedure [dbo].[Proc_UpdateSC]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_UpdateSC]
(
@CartID bigint,
@Num int,
@MemberID bigint
)
as
update tb_ShopCart
set Num=@Num,
    SumPrice=(@Num*(
				Select MemberPrice 
				from tb_GoodsInfo 
				where GoodsID=
				(
				select GoodsId
				from tb_ShopCart
				where CartID=@CartID
				)
			)),
   GoodsWeight=(@Num*(
				Select GoodsWeight 
				from tb_GoodsInfo 
				where GoodsID=
				(
				select GoodsId
				from tb_ShopCart
				where CartID=@CartID
				)
			))
where MemberID=@MemberID and CartID=@CartID
GO
/****** Object:  StoredProcedure [dbo].[Proc_UpdateShipInfo]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_UpdateShipInfo]
(
@ShipID bigint,
@ShipWay varchar(50),
@ShipFee float,
@ClassID bigint
)
as
update tb_ShipType
set ShipWay=@ShipWay,
    ShipFee=@ShipFee,
    ClassID=@ClassID
where ShipID=@ShipID
GO
/****** Object:  StoredProcedure [dbo].[proc_UserLogin]    Script Date: 2021/6/9 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[proc_UserLogin]
(
	@UserName varchar(50),
	@Password varchar(50)
)
as
if exists(select * from tb_Member where UserName=@UserName and Password=@Password)
	begin
		select * from tb_Member 
		where UserName=@UserName and Password=@Password
	end
GO
USE [master]
GO
ALTER DATABASE [db_NetStore] SET  READ_WRITE 
GO
