USE [master]
GO
/****** Object:  Database [MasterPolUgryumova]    Script Date: 29.04.2025 11:57:07 ******/
CREATE DATABASE [MasterPolUgryumova]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterPolUgryumova', FILENAME = N'C:\Users\307-02\MasterPolUgryumova.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterPolUgryumova_log', FILENAME = N'C:\Users\307-02\MasterPolUgryumova_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterPolUgryumova] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterPolUgryumova].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterPolUgryumova] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterPolUgryumova] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterPolUgryumova] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterPolUgryumova] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterPolUgryumova] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterPolUgryumova] SET  MULTI_USER 
GO
ALTER DATABASE [MasterPolUgryumova] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterPolUgryumova] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterPolUgryumova] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterPolUgryumova] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterPolUgryumova] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterPolUgryumova] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterPolUgryumova] SET QUERY_STORE = OFF
GO
USE [MasterPolUgryumova]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 29.04.2025 11:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[ProcentBrakMaterial] [ntext] NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProducts]    Script Date: 29.04.2025 11:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductsId] [int] NOT NULL,
	[PartnersId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 29.04.2025 11:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypePartner] [ntext] NOT NULL,
	[Name] [ntext] NOT NULL,
	[Director] [ntext] NOT NULL,
	[Mail] [ntext] NOT NULL,
	[Phone] [ntext] NOT NULL,
	[UrAdress] [ntext] NOT NULL,
	[INN] [nvarchar](50) NOT NULL,
	[Rating] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29.04.2025 11:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Name] [ntext] NOT NULL,
	[Articule] [int] NOT NULL,
	[MinPrice] [money] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 29.04.2025 11:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[QTypeProduct] [real] NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([Id], [Name], [ProcentBrakMaterial]) VALUES (1, N'Тип материала 1
', N'0,1')
INSERT [dbo].[MaterialType] ([Id], [Name], [ProcentBrakMaterial]) VALUES (2, N'Тип материала 2
', N'0,0095')
INSERT [dbo].[MaterialType] ([Id], [Name], [ProcentBrakMaterial]) VALUES (3, N'Тип материала 3
', N'0,28')
INSERT [dbo].[MaterialType] ([Id], [Name], [ProcentBrakMaterial]) VALUES (4, N'Тип материала 4', N'0,0055')
INSERT [dbo].[MaterialType] ([Id], [Name], [ProcentBrakMaterial]) VALUES (5, N'Тип материала 5
', N'0,0034')
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProducts] ON 

INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (1, 1, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (2, 3, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (3, 4, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (4, 2, 2, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (5, 5, 2, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (6, 3, 2, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (7, 1, 2, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (8, 1, 3, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (9, 2, 3, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (10, 4, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (11, 3, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (13, 3, 5, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (14, 4, 5, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (15, 1, 5, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [ProductsId], [PartnersId], [Count], [Date]) VALUES (16, 2, 5, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([Id], [TypePartner], [Name], [Director], [Mail], [Phone], [UrAdress], [INN], [Rating]) VALUES (1, N'ЗАО', N'База Строитель', N'Иванова Александра Ивановна', N'aleksandraivanova@ml.ru', N'493 123 45 67', N'652050, Кемеровская область, город Юрга, ул. Лесная, 15', N'2222455179', N'7')
INSERT [dbo].[Partners] ([Id], [TypePartner], [Name], [Director], [Mail], [Phone], [UrAdress], [INN], [Rating]) VALUES (2, N'ООО', N'Паркет 29', N'Петров Василий Петрович', N'vppetrov@vl.ru', N'987 123 56 78', N'164500, Архангельская область, город Северодвинск, ул. Строителей, 18', N'3333888520', N'7')
INSERT [dbo].[Partners] ([Id], [TypePartner], [Name], [Director], [Mail], [Phone], [UrAdress], [INN], [Rating]) VALUES (3, N'ПАО', N'Стройсервис', N'Соловьев Андрей Николаевич', N'ansolovev@st.ru', N'812 223 32 00', N'188910, Ленинградская область, город Приморск, ул. Парковая, 21', N'4440391035', N'7')
INSERT [dbo].[Partners] ([Id], [TypePartner], [Name], [Director], [Mail], [Phone], [UrAdress], [INN], [Rating]) VALUES (4, N'ОАО', N'Ремонт и отделка', N'Воробьева Екатерина Валерьевна', N'ekaterina.vorobeva@ml.ru', N'444 222 33 11', N'143960, Московская область, город Реутов, ул. Свободы, 51', N'1111520857', N'5')
INSERT [dbo].[Partners] ([Id], [TypePartner], [Name], [Director], [Mail], [Phone], [UrAdress], [INN], [Rating]) VALUES (5, N'ЗАО', N'МонтажПро', N'Степанов Степан Сергеевич', N'stepanov@stepan.ru', N'912 888 33 33', N'309500, Белгородская область, город Старый Оскол, ул. Рабочая, 122', N'5552431140', N'10')
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [TypeId], [Name], [Articule], [MinPrice]) VALUES (1, 3, N'Паркетная доска Ясень темный однополосная 14 мм', 8758385, 4456.9000)
INSERT [dbo].[Products] ([Id], [TypeId], [Name], [Articule], [MinPrice]) VALUES (2, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 8858958, 7330.9900)
INSERT [dbo].[Products] ([Id], [TypeId], [Name], [Articule], [MinPrice]) VALUES (3, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 7750282, 1799.3300)
INSERT [dbo].[Products] ([Id], [TypeId], [Name], [Articule], [MinPrice]) VALUES (4, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 7028748, 3890.4100)
INSERT [dbo].[Products] ([Id], [TypeId], [Name], [Articule], [MinPrice]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 5012543, 5450.5900)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([Id], [Name], [QTypeProduct]) VALUES (1, N'Ламинат', 2.35)
INSERT [dbo].[ProductType] ([Id], [Name], [QTypeProduct]) VALUES (2, N'Массивная доска', 5.15)
INSERT [dbo].[ProductType] ([Id], [Name], [QTypeProduct]) VALUES (3, N'Паркетная доска', 4.34)
INSERT [dbo].[ProductType] ([Id], [Name], [QTypeProduct]) VALUES (4, N'Пробковое покрытие', 1.5)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Partners] FOREIGN KEY([PartnersId])
REFERENCES [dbo].[Partners] ([Id])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Partners]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Products] FOREIGN KEY([ProductsId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
USE [master]
GO
ALTER DATABASE [MasterPolUgryumova] SET  READ_WRITE 
GO
