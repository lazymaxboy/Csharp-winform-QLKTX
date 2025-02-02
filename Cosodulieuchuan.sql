USE [master]
GO
/****** Object:  Database [QuanLyKyTucXasql]    Script Date: 12/6/2020 11:07:06 PM ******/
CREATE DATABASE [QuanLyKyTucXasql]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyKyTucXasql', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyKyTucXasql.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyKyTucXasql_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyKyTucXasql_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyKyTucXasql] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyKyTucXasql].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyKyTucXasql] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyKyTucXasql] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyKyTucXasql] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyKyTucXasql', N'ON'
GO
ALTER DATABASE [QuanLyKyTucXasql] SET QUERY_STORE = OFF
GO
USE [QuanLyKyTucXasql]
GO
/****** Object:  Table [dbo].[Loaiphong]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaiphong](
	[Maloaiphong] [nvarchar](20) NOT NULL,
	[Tenloaiphong] [nvarchar](30) NULL,
	[Giatien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloaiphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[Maphong] [nvarchar](20) NOT NULL,
	[Daynha] [nvarchar](10) NULL,
	[Songuoi] [int] NULL,
	[GioiHan] [int] NULL,
	[Maloaiphong] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[Mahd] [nvarchar](20) NOT NULL,
	[Ngaythu] [datetime] NULL,
	[Maphong] [nvarchar](20) NULL,
	[Sodien] [int] NULL,
	[Sonuoc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Phieuthu]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Phieuthu]
as
select Phong.Maphong,phong.Maloaiphong,Tenloaiphong,Loaiphong.Giatien,Mahd,Ngaythu,Songuoi,Sodien,Sonuoc, tongienphong = Sodien*3500 + Sonuoc*20000 + Giatien
from   Phong,Hoadon,Loaiphong
where  Phong.Maphong = Hoadon.Maphong and Loaiphong.Maloaiphong = Phong.Maloaiphong
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[Makhoa] [nvarchar](20) NOT NULL,
	[Tenkhoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Makhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[Malop] [nvarchar](20) NOT NULL,
	[Tenlop] [nvarchar](50) NULL,
	[Makhoa] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinhvien]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinhvien](
	[Masv] [int] NOT NULL,
	[Tensv] [nvarchar](50) NULL,
	[Sdt] [int] NULL,
	[Ngaysinh] [datetime] NULL,
	[Gioitinh] [nchar](20) NULL,
	[Quequan] [nvarchar](50) NULL,
	[Malop] [nvarchar](20) NULL,
	[Maphong] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[timkiemsv]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[timkiemsv]
as
select Masv,Tensv,Gioitinh,Sdt,Quequan,Tenlop,Tenkhoa,Sinhvien.Maphong 
from Sinhvien,Khoa,Lop
where Sinhvien.Malop = Lop.Malop and Khoa.Makhoa = Lop.Makhoa 
GO
/****** Object:  Table [dbo].[Taikhoan]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Hotennguoidung] [nvarchar](20) NULL,
	[Sdt] [int] NULL,
	[Gioitinh] [nvarchar](10) NULL,
	[Pass] [nvarchar](50) NULL,
	[Cpass] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Quanlytaikhoan]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Quanlytaikhoan]
as
select ID,Username,Hotennguoidung,Sdt,Gioitinh,Pass
from Taikhoan
GO
/****** Object:  View [dbo].[timkiemphong]    Script Date: 12/6/2020 11:07:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[timkiemphong]
as
select Phong.Maphong,Sodien,Sonuoc,Songuoi,Loaiphong.Maloaiphong,Tenloaiphong,Giatien,Tienphong = Sodien*3500 + Sonuoc*20000 + Giatien
from Phong,Hoadon,Loaiphong 
where Phong.Maphong = Hoadon.Maphong and Phong.Maloaiphong = Loaiphong.Maloaiphong 
GO
INSERT [dbo].[Hoadon] ([Mahd], [Ngaythu], [Maphong], [Sodien], [Sonuoc]) VALUES (N'HD1', CAST(N'2020-06-06T00:00:00.000' AS DateTime), N'A100', 50, 10)
GO
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'CK2020', N'Cơ khí')
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'DT2020', N'Điện')
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'IT2020', N'Công nghệ thông tin')
GO
INSERT [dbo].[Loaiphong] ([Maloaiphong], [Tenloaiphong], [Giatien]) VALUES (N'BD1', N'Bình dân', 600000)
INSERT [dbo].[Loaiphong] ([Maloaiphong], [Tenloaiphong], [Giatien]) VALUES (N'HS1', N'Hạng sang', 2000000)
INSERT [dbo].[Loaiphong] ([Maloaiphong], [Tenloaiphong], [Giatien]) VALUES (N'V1', N'Vip', 1000000)
GO
INSERT [dbo].[Lop] ([Malop], [Tenlop], [Makhoa]) VALUES (N'KTPM1', N'Kĩ thuật phầm mềm 1', N'IT2020')
INSERT [dbo].[Lop] ([Malop], [Tenlop], [Makhoa]) VALUES (N'KTPM2', N'Kĩ thuật phầm mềm 2', N'IT2020')
INSERT [dbo].[Lop] ([Malop], [Tenlop], [Makhoa]) VALUES (N'OTO1', N'Kỹ thuật ô tô 1', N'CK2020')
INSERT [dbo].[Lop] ([Malop], [Tenlop], [Makhoa]) VALUES (N'OTO2', N'Kỹ thuật ô tô 2', N'CK2020')
INSERT [dbo].[Lop] ([Malop], [Tenlop], [Makhoa]) VALUES (N'TDH1', N'Kỹ thuật tự động hóa 1', N'DT2020')
INSERT [dbo].[Lop] ([Malop], [Tenlop], [Makhoa]) VALUES (N'TDH2', N'Kỹ thuật tự động hóa 2', N'DT2020')
GO
INSERT [dbo].[Phong] ([Maphong], [Daynha], [Songuoi], [GioiHan], [Maloaiphong]) VALUES (N'A100', N'A', 1, 4, N'BD1')
INSERT [dbo].[Phong] ([Maphong], [Daynha], [Songuoi], [GioiHan], [Maloaiphong]) VALUES (N'A101', N'A', 1, 4, N'V1')
INSERT [dbo].[Phong] ([Maphong], [Daynha], [Songuoi], [GioiHan], [Maloaiphong]) VALUES (N'A102', N'A', 1, 4, N'HS1')
GO
INSERT [dbo].[Sinhvien] ([Masv], [Tensv], [Sdt], [Ngaysinh], [Gioitinh], [Quequan], [Malop], [Maphong]) VALUES (2018603198, N'Nguyễn Văn Thuần', 981953791, CAST(N'2000-02-02T00:00:00.000' AS DateTime), N'Nam                 ', N'Hải Dương', N'KTPM2', N'A101')
INSERT [dbo].[Sinhvien] ([Masv], [Tensv], [Sdt], [Ngaysinh], [Gioitinh], [Quequan], [Malop], [Maphong]) VALUES (2018603728, N'Ngô Ðình Non', 981953791, CAST(N'2000-03-03T00:00:00.000' AS DateTime), N'Nam                 ', N'Bắc Giang', N'OTO1', N'A102')
INSERT [dbo].[Sinhvien] ([Masv], [Tensv], [Sdt], [Ngaysinh], [Gioitinh], [Quequan], [Malop], [Maphong]) VALUES (2018603798, N'Phạm Ðức Trung', 981953791, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Nam                 ', N'Hải Dương', N'KTPM1', N'A100')
GO
SET IDENTITY_INSERT [dbo].[Taikhoan] ON 

INSERT [dbo].[Taikhoan] ([ID], [Username], [Hotennguoidung], [Sdt], [Gioitinh], [Pass], [Cpass]) VALUES (1, N'Admin', N'ABC', 113, N'Nam', N'admin', NULL)
SET IDENTITY_INSERT [dbo].[Taikhoan] OFF
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD FOREIGN KEY([Maphong])
REFERENCES [dbo].[Phong] ([Maphong])
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD FOREIGN KEY([Maphong])
REFERENCES [dbo].[Phong] ([Maphong])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([Makhoa])
REFERENCES [dbo].[Khoa] ([Makhoa])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([Makhoa])
REFERENCES [dbo].[Khoa] ([Makhoa])
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([Maloaiphong])
REFERENCES [dbo].[Loaiphong] ([Maloaiphong])
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([Maloaiphong])
REFERENCES [dbo].[Loaiphong] ([Maloaiphong])
GO
ALTER TABLE [dbo].[Sinhvien]  WITH CHECK ADD FOREIGN KEY([Malop])
REFERENCES [dbo].[Lop] ([Malop])
GO
ALTER TABLE [dbo].[Sinhvien]  WITH CHECK ADD FOREIGN KEY([Malop])
REFERENCES [dbo].[Lop] ([Malop])
GO
ALTER TABLE [dbo].[Sinhvien]  WITH CHECK ADD FOREIGN KEY([Maphong])
REFERENCES [dbo].[Phong] ([Maphong])
GO
ALTER TABLE [dbo].[Sinhvien]  WITH CHECK ADD FOREIGN KEY([Maphong])
REFERENCES [dbo].[Phong] ([Maphong])
GO

ALTER DATABASE [QuanLyKyTucXasql] SET  READ_WRITE 

use QuanLyKyTucXasql
go
------------------------------------------------------------------------------------------------------

CREATE TRIGGER add_person ON Sinhvien FOR INSERT
AS
BEGIN
	DECLARE @maPhong_new NVARCHAR(20)
	SELECT @maPhong_new = Maphong FROM inserted
	UPDATE Phong SET Songuoi = Songuoi+1 WHERE Maphong = @maPhong_new
END
go
------------------------------------------------------------------------------

CREATE TRIGGER delete_person ON Sinhvien FOR delete
AS
BEGIN
	DECLARE @maPhong_new NVARCHAR(20)
	SELECT @maPhong_new = Maphong FROM deleted
	UPDATE Phong SET Songuoi = Songuoi-1 WHERE Maphong = @maPhong_new
END
go
-----------------------------------------------------------------------------------

Create Trigger insert_hd On Hoadon For Insert
As
If (Select Count(a.Maphong)
     From Hoadon a Inner Join INSERTED b On a.Maphong = b.Maphong) > 1
Begin
   RollBack Tran
End
GO
ALTER TABLE Hoadon ENABLE TRIGGER insert_hd
GO

------------------------------------------------------------------------------------------

CREATE TRIGGER edit_person ON Sinhvien FOR UPDATE
AS
BEGIN
	DECLARE @maPhong_new NVARCHAR(20)
	DECLARE @maPhong_old NVARCHAR(20)
	SELECT @maPhong_old = Maphong FROM deleted
	SELECT @maPhong_new = Maphong FROM inserted
	UPDATE Phong SET Songuoi = Songuoi+1 WHERE Maphong = @maPhong_new
	UPDATE Phong SET Songuoi = Songuoi-1 WHERE Maphong = @maPhong_old
END
go

use master
go
----------------------------------------------------------------------------------------------------
