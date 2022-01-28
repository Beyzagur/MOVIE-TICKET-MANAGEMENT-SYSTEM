USE [master]
GO
/****** Object:  Database [BIA]    Script Date: 28.01.2022 19:23:35 ******/
CREATE DATABASE [BIA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BIA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BIA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BIA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BIA_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BIA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BIA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BIA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BIA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BIA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BIA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BIA] SET ARITHABORT OFF 
GO
ALTER DATABASE [BIA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BIA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BIA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BIA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BIA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BIA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BIA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BIA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BIA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BIA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BIA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BIA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BIA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BIA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BIA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BIA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BIA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BIA] SET RECOVERY FULL 
GO
ALTER DATABASE [BIA] SET  MULTI_USER 
GO
ALTER DATABASE [BIA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BIA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BIA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BIA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BIA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BIA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BIA', N'ON'
GO
ALTER DATABASE [BIA] SET QUERY_STORE = OFF
GO
USE [BIA]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[address_ID] [int] IDENTITY(1,1) NOT NULL,
	[city_ID] [int] NULL,
	[addressText] [varchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriesOfMovies]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriesOfMovies](
	[categoriesOfMovies_ID] [int] IDENTITY(1,1) NOT NULL,
	[category_ID] [int] NOT NULL,
	[movie_ID] [int] NOT NULL,
 CONSTRAINT [PK_CategoriesOfMovies] PRIMARY KEY CLUSTERED 
(
	[categoriesOfMovies_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_ID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cinema]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinema](
	[cinema_ID] [int] IDENTITY(1,1) NOT NULL,
	[address_ID] [int] NULL,
	[cinemaName] [varchar](50) NULL,
 CONSTRAINT [PK_Cinema] PRIMARY KEY CLUSTERED 
(
	[cinema_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[city_ID] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [varchar](20) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[city_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[comment_ID] [int] IDENTITY(1,1) NOT NULL,
	[commentText] [varchar](max) NULL,
	[isSpoiler] [bit] NULL,
	[movie_ID] [int] NULL,
	[user_ID] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[comment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[movie_ID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](max) NULL,
	[duration] [int] NULL,
	[movieName] [varchar](100) NULL,
	[viewStatus] [varchar](30) NULL,
	[trailerLink] [varchar](max) NULL,
	[director] [varchar](50) NULL,
	[year] [int] NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieRate]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieRate](
	[movieRate_ID] [int] IDENTITY(1,1) NOT NULL,
	[point] [int] NOT NULL,
	[movie_ID] [int] NOT NULL,
	[user_ID] [int] NOT NULL,
 CONSTRAINT [PK_MovieRate] PRIMARY KEY CLUSTERED 
(
	[movieRate_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[seat_ID] [int] IDENTITY(1,1) NOT NULL,
	[seatLetter] [char](1) NULL,
	[seatNo] [int] NULL,
 CONSTRAINT [PK_Seat] PRIMARY KEY CLUSTERED 
(
	[seat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[ticket_ID] [int] IDENTITY(1,1) NOT NULL,
	[cinema_ID] [int] NULL,
	[movie_ID] [int] NULL,
	[user_ID] [int] NULL,
	[seat_ID] [int] NULL,
	[date] [date] NULL,
	[session] [varchar](5) NULL,
	[cardOwnerName] [varchar](30) NULL,
	[cardNumber] [char](16) NULL,
	[cardValidDate] [char](7) NULL,
	[cardCVV] [char](3) NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[ticket_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 28.01.2022 19:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NULL,
	[surname] [varchar](30) NULL,
	[nickName] [varchar](30) NULL,
	[gender] [bit] NULL,
	[email] [varchar](50) NULL,
	[phoneNumber] [char](10) NULL,
	[birthday] [date] NULL,
	[password] [varchar](30) NULL,
	[userType] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WatchedList]    Script Date: 28.01.2022 19:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchedList](
	[watchedList_ID] [int] IDENTITY(1,1) NOT NULL,
	[user_ID] [int] NULL,
	[movie_ID] [int] NULL,
	[isFavorite] [bit] NULL,
 CONSTRAINT [PK_WatchedList] PRIMARY KEY CLUSTERED 
(
	[watchedList_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_userType]  DEFAULT ((0)) FOR [userType]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_City] FOREIGN KEY([city_ID])
REFERENCES [dbo].[City] ([city_ID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_City]
GO
ALTER TABLE [dbo].[CategoriesOfMovies]  WITH CHECK ADD  CONSTRAINT [FK_CategoriesOfMovies_Category] FOREIGN KEY([category_ID])
REFERENCES [dbo].[Category] ([category_ID])
GO
ALTER TABLE [dbo].[CategoriesOfMovies] CHECK CONSTRAINT [FK_CategoriesOfMovies_Category]
GO
ALTER TABLE [dbo].[Cinema]  WITH CHECK ADD  CONSTRAINT [FK_Cinema_Address] FOREIGN KEY([address_ID])
REFERENCES [dbo].[Address] ([address_ID])
GO
ALTER TABLE [dbo].[Cinema] CHECK CONSTRAINT [FK_Cinema_Address]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Movie] FOREIGN KEY([movie_ID])
REFERENCES [dbo].[Movie] ([movie_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Movie]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([user_ID])
REFERENCES [dbo].[User] ([user_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[MovieRate]  WITH CHECK ADD  CONSTRAINT [FK_MovieRate_Movie] FOREIGN KEY([movie_ID])
REFERENCES [dbo].[Movie] ([movie_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MovieRate] CHECK CONSTRAINT [FK_MovieRate_Movie]
GO
ALTER TABLE [dbo].[MovieRate]  WITH CHECK ADD  CONSTRAINT [FK_MovieRate_User] FOREIGN KEY([user_ID])
REFERENCES [dbo].[User] ([user_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MovieRate] CHECK CONSTRAINT [FK_MovieRate_User]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Cinema] FOREIGN KEY([cinema_ID])
REFERENCES [dbo].[Cinema] ([cinema_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Cinema]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Movie] FOREIGN KEY([movie_ID])
REFERENCES [dbo].[Movie] ([movie_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Movie]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Seat] FOREIGN KEY([seat_ID])
REFERENCES [dbo].[Seat] ([seat_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Seat]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_User] FOREIGN KEY([user_ID])
REFERENCES [dbo].[User] ([user_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_User]
GO
ALTER TABLE [dbo].[WatchedList]  WITH CHECK ADD  CONSTRAINT [FK_WatchedList_Movie] FOREIGN KEY([movie_ID])
REFERENCES [dbo].[Movie] ([movie_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WatchedList] CHECK CONSTRAINT [FK_WatchedList_Movie]
GO
ALTER TABLE [dbo].[WatchedList]  WITH CHECK ADD  CONSTRAINT [FK_WatchedList_User] FOREIGN KEY([user_ID])
REFERENCES [dbo].[User] ([user_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WatchedList] CHECK CONSTRAINT [FK_WatchedList_User]
GO
USE [master]
GO
ALTER DATABASE [BIA] SET  READ_WRITE 
GO
