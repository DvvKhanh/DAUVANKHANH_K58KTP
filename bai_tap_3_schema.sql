USE [master]
GO
/****** Object:  Database [QLSV]    Script Date: 28/03/2025 10:10:00 CH ******/
CREATE DATABASE [QLSV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSV', FILENAME = N'C:\HequantriCSDL\QLSV.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSV_log', FILENAME = N'C:\HequantriCSDL\QLSV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLSV] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSV] SET  MULTI_USER 
GO
ALTER DATABASE [QLSV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSV', N'ON'
GO
ALTER DATABASE [QLSV] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLSV] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLSV]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[MaBM] [varchar](20) NOT NULL,
	[TenBM] [nvarchar](50) NULL,
	[Makhoa] [varchar](20) NULL,
 CONSTRAINT [PK_BoMon] PRIMARY KEY CLUSTERED 
(
	[MaBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[id] [int] NOT NULL,
	[id_dk] [int] NULL,
	[diem] [float] NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKMH]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKMH](
	[id_dk] [int] NOT NULL,
	[MalopHP] [varchar](20) NOT NULL,
	[Masv] [varchar](13) NOT NULL,
	[Diemthi] [float] NOT NULL,
	[Phantramthi] [float] NOT NULL,
 CONSTRAINT [PK_DKMH_1] PRIMARY KEY CLUSTERED 
(
	[id_dk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[Magv] [varchar](20) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Ngaysinh] [date] NULL,
	[MaBM] [varchar](20) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[Magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GVCN]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GVCN](
	[Malop] [varchar](20) NOT NULL,
	[Magv] [varchar](20) NOT NULL,
	[HK] [int] NOT NULL,
 CONSTRAINT [PK_GVCN] PRIMARY KEY CLUSTERED 
(
	[Malop] ASC,
	[Magv] ASC,
	[HK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[Makhoa] [varchar](20) NOT NULL,
	[Tenkhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[Makhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[Malop] [varchar](20) NOT NULL,
	[Tenlop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[Malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHP](
	[MalopHP] [varchar](20) NOT NULL,
	[TenlopHP] [nvarchar](50) NULL,
	[HK] [int] NULL,
	[Mamon] [varchar](20) NULL,
	[Magv] [varchar](20) NULL,
 CONSTRAINT [PK_LopHP] PRIMARY KEY CLUSTERED 
(
	[MalopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSV]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSV](
	[Malop] [varchar](20) NOT NULL,
	[Masv] [varchar](13) NOT NULL,
	[Chucvu] [nvarchar](30) NULL,
 CONSTRAINT [PK_LopSV] PRIMARY KEY CLUSTERED 
(
	[Malop] ASC,
	[Masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[Mamon] [varchar](20) NOT NULL,
	[Tenmon] [nvarchar](50) NULL,
	[STC] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[Mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 28/03/2025 10:10:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[Masv] [varchar](13) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Ngaysinh] [date] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[Masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [FK_BoMon_Khoa] FOREIGN KEY([Makhoa])
REFERENCES [dbo].[Khoa] ([Makhoa])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [FK_BoMon_Khoa]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_DKMH] FOREIGN KEY([id_dk])
REFERENCES [dbo].[DKMH] ([id_dk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_DKMH]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_LopHP] FOREIGN KEY([MalopHP])
REFERENCES [dbo].[LopHP] ([MalopHP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_LopHP]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_SinhVien] FOREIGN KEY([Masv])
REFERENCES [dbo].[SinhVien] ([Masv])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_SinhVien]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_BoMon] FOREIGN KEY([MaBM])
REFERENCES [dbo].[BoMon] ([MaBM])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_BoMon]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_GiaoVien] FOREIGN KEY([Magv])
REFERENCES [dbo].[GiaoVien] ([Magv])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_GiaoVien]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_Lop] FOREIGN KEY([Malop])
REFERENCES [dbo].[Lop] ([Malop])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_Lop]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_GiaoVien] FOREIGN KEY([Magv])
REFERENCES [dbo].[GiaoVien] ([Magv])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_GiaoVien]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_MonHoc] FOREIGN KEY([Mamon])
REFERENCES [dbo].[MonHoc] ([Mamon])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_MonHoc]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_Lop] FOREIGN KEY([Malop])
REFERENCES [dbo].[Lop] ([Malop])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_Lop]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_SinhVien] FOREIGN KEY([Masv])
REFERENCES [dbo].[SinhVien] ([Masv])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_SinhVien]
GO
ALTER TABLE [dbo].[Diem]  WITH NOCHECK ADD  CONSTRAINT [CK_Diem] CHECK NOT FOR REPLICATION (([diem]>=(0) AND [diem]<=(10)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK_Diem]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [CK_DKMH_1] CHECK  (([Diemthi]>=(0) AND [Diemthi]<=(10)))
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [CK_DKMH_1]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [CK_DKMH_2] CHECK  (([Phantramthi]=(0.6) OR [Phantramthi]=(0.4)))
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [CK_DKMH_2]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [CK_GiaoVien] CHECK  (([Ngaysinh]>='1970-01-01' AND [Ngaysinh]<='2002-12-31'))
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [CK_GiaoVien]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [CK_GVCN] CHECK  (([HK]>=(1) AND [HK]<=(3)))
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [CK_GVCN]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [CK_LopHP] CHECK  (([HK]>=(1) AND [HK]<=(3)))
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [CK_LopHP]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [CK_MonHoc] CHECK  (([STC]>=(1) AND [STC]<=(4)))
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [CK_MonHoc]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [CK_SinhVien] CHECK  (([Ngaysinh]>='1995-01-01' AND [Ngaysinh]<=getdate()))
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [CK_SinhVien]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [CK_SinhVien_1] CHECK  (([Hoten]<>N'Khánh'))
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [CK_SinhVien_1]
GO
USE [master]
GO
ALTER DATABASE [QLSV] SET  READ_WRITE 
GO
