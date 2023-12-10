
CREATE DATABASE [QuanLyDaiDoi]
GO
USE [QuanLyDaiDoi]
GO
/****** Object:  Table [dbo].[ChiTietDanhSachCongViec]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDanhSachCongViec](
	[MaCTDSCV] [int] IDENTITY(1,1) NOT NULL,
	[MaDS] [int] NULL,
	[MaQN] [int] NULL,
	[MaCongviec] [int] NULL,
 CONSTRAINT [PK_ChiTietDanhSachCongViec] PRIMARY KEY CLUSTERED 
(
	[MaCTDSCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDanhSachGac]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDanhSachGac](
	[MaCTDSG] [int] IDENTITY(1,1) NOT NULL,
	[MaDS] [int] NULL,
	[MaTG] [int] NULL,
	[MaQN] [int] NULL,
	[MaGac] [int] NULL,
 CONSTRAINT [PK_ChiTietDanhSachGac] PRIMARY KEY CLUSTERED 
(
	[MaCTDSG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCV] [int] IDENTITY(1,1) NOT NULL,
	[TenCV] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSach]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSach](
	[MaDS] [int] IDENTITY(1,1) NOT NULL,
	[TenDS] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhSach] PRIMARY KEY CLUSTERED 
(
	[MaDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiDungCongViec]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiDungCongViec](
	[MaCongViec] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](50) NULL,
	[Điaiem] [nvarchar](50) NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [PK_NoiDungCongViec] PRIMARY KEY CLUSTERED 
(
	[MaCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiDungGac]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiDungGac](
	[MaGac] [int] IDENTITY(1,1) NOT NULL,
	[NgayGac] [date] NULL,
	[MKGac] [nvarchar](50) NULL,
 CONSTRAINT [PK_NoiDungGac] PRIMARY KEY CLUSTERED 
(
	[MaGac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QN_UuTien]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_UuTien](
	[MaQN] [int] NOT NULL,
	[MaUT] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QN_ViPham]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_ViPham](
	[MaQN] [int] NOT NULL,
	[MaVP] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanNhan]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanNhan](
	[MaQN] [int] IDENTITY(1,1) NOT NULL,
	[TenQN] [nvarchar](50) NULL,
	[MaDV] [int] NULL,
	[MaCV] [int] NULL,
	[GioiTinh] [bit] NULL,
 CONSTRAINT [PK_QuanNhan] PRIMARY KEY CLUSTERED 
(
	[MaQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[TenTK] [nvarchar](50) NULL,
	[MK] [nvarchar](50) NULL,
	[MaQN] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TK_Quyen]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TK_Quyen](
	[MaTK] [int] NOT NULL,
	[MaQuyen] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiGian]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiGian](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGianBatDau] [time](7) NULL,
	[ThoiGianKetThuc] [time](7) NULL,
 CONSTRAINT [PK_ThoiGian] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UuTien]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UuTien](
	[MaUT] [int] IDENTITY(1,1) NOT NULL,
	[TenUuTien] [nvarchar](50) NULL,
 CONSTRAINT [PK_UuTien] PRIMARY KEY CLUSTERED 
(
	[MaUT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViPham]    Script Date: 28-Nov-23 10:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViPham](
	[MaVP] [int] IDENTITY(1,1) NOT NULL,
	[TenViPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_ViPham] PRIMARY KEY CLUSTERED 
(
	[MaVP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDanhSachCongViec] ON 

INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongviec]) VALUES (3, 1, 1, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongviec]) VALUES (9, 1, 2, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongviec]) VALUES (14, 1, 3, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongviec]) VALUES (16, 1, 10, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongviec]) VALUES (17, 1, 16, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongviec]) VALUES (19, 1, 23, 2)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongviec]) VALUES (20, 1, 1, 2)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongviec]) VALUES (21, 1, 6, 2)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongviec]) VALUES (23, 1, 20, 2)
SET IDENTITY_INSERT [dbo].[ChiTietDanhSachCongViec] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietDanhSachGac] ON 

INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (1, 2, 1, 1, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (2, 2, 1, 2, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (3, 2, 1, 3, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (4, 2, 1, 4, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (5, 2, 1, 5, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (6, 2, 2, 6, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (7, 2, 2, 7, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (8, 2, 2, 8, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (9, 2, 2, 9, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (10, 2, 2, 10, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (11, 2, 3, 11, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (12, 2, 3, 12, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (13, 2, 3, 13, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (14, 2, 3, 14, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (15, 2, 3, 15, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (16, 2, 4, 16, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (17, 2, 4, 17, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (18, 2, 4, 18, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (19, 2, 4, 19, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (20, 2, 4, 20, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (21, 2, 5, 21, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (22, 2, 5, 22, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (23, 2, 5, 23, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (24, 2, 5, 24, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (25, 2, 5, 25, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (26, 2, 6, 26, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (27, 2, 6, 27, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (28, 2, 6, 28, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (29, 2, 6, 29, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (30, 2, 6, 30, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (31, 2, 7, 31, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (32, 2, 7, 32, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (33, 2, 7, 33, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (34, 2, 7, 34, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (36, 2, 7, 35, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (37, 2, 8, 36, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (38, 2, 8, 37, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (39, 2, 8, 38, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (40, 2, 8, 39, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (41, 2, 8, 40, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (42, 2, 9, 41, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (43, 2, 9, 42, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (44, 2, 9, 43, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (45, 2, 9, 44, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (46, 2, 9, 45, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (47, 2, 10, 46, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (48, 2, 10, 47, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (49, 2, 10, 48, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (50, 2, 10, 49, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (51, 2, 10, 50, 1)
SET IDENTITY_INSERT [dbo].[ChiTietDanhSachGac] OFF
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (1, N'Đại đội trưởng')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (2, N'Lớp trưởng')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (3, N'Học viên')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (4, N'Chính trị viên đại đội')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (5, N'Phó đại đội trưởng')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (6, N'Chính trị viên phó đại đội')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (7, N'Lớp phó')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhSach] ON 

INSERT [dbo].[DanhSach] ([MaDS], [TenDS]) VALUES (1, N'DanhSachCongViec')
INSERT [dbo].[DanhSach] ([MaDS], [TenDS]) VALUES (2, N'DanhSachGac')
SET IDENTITY_INSERT [dbo].[DanhSach] OFF
GO
SET IDENTITY_INSERT [dbo].[DonVi] ON 

INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (1, N'CNTT - c156')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (2, N'BĐATTT - c156')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (3, N'ANHTTT - c156')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (4, N'PTDL - c156')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (5, N'CNPM - c156')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (6, N'HTTT - c156')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (7, N'MMT&TTDL - c156')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (8, N'c156')
SET IDENTITY_INSERT [dbo].[DonVi] OFF
GO
SET IDENTITY_INSERT [dbo].[NoiDungCongViec] ON 

INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [Điaiem], [ThoiGian]) VALUES (1, N'Bê đồ', N'Tầng Hầm S4', CAST(N'2023-11-23T07:30:00.000' AS DateTime))
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [Điaiem], [ThoiGian]) VALUES (2, N'Xem văn nghệ', N'Hội trường S5', CAST(N'2023-11-22T07:30:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[NoiDungCongViec] OFF
GO
SET IDENTITY_INSERT [dbo].[NoiDungGac] ON 

INSERT [dbo].[NoiDungGac] ([MaGac], [NgayGac], [MKGac]) VALUES (1, CAST(N'2023-11-28' AS Date), N'Lào Cai - Cao Bằng')
SET IDENTITY_INSERT [dbo].[NoiDungGac] OFF
GO
INSERT [dbo].[QN_UuTien] ([MaQN], [MaUT]) VALUES (5, 1)
INSERT [dbo].[QN_UuTien] ([MaQN], [MaUT]) VALUES (18, 1)
INSERT [dbo].[QN_UuTien] ([MaQN], [MaUT]) VALUES (42, 1)
INSERT [dbo].[QN_UuTien] ([MaQN], [MaUT]) VALUES (66, 1)
INSERT [dbo].[QN_UuTien] ([MaQN], [MaUT]) VALUES (72, 1)
INSERT [dbo].[QN_UuTien] ([MaQN], [MaUT]) VALUES (76, 1)
INSERT [dbo].[QN_UuTien] ([MaQN], [MaUT]) VALUES (89, 1)
GO
SET IDENTITY_INSERT [dbo].[QuanNhan] ON 

INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (1, N'Nguyễn Hữu Đức An
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (2, N'Nguyễn Đức Cường
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (3, N'Phạm Ngọc Anh Dũng
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (4, N'Bùi Minh Đức
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (5, N'Nguyễn Lê Trung Hiếu
', 1, 2, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (6, N'Trần Thị Ngọc Khánh
', 1, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (7, N'Bùi Quốc Khánh
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (8, N'Nguyễn Hoàng Nam
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (9, N'Nguyễn Khôi Nguyên
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (10, N'Nguyễn Thị Hà Phương
', 1, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (11, N'Nguyễn Tấn Quý
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (12, N'Trịnh Viết Tài
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (13, N'Nghiêm Văn Tiến
', 1, 7, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (14, N'Mai Thị Hạnh Trang
', 1, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (15, N'Phạm Thanh Tùng
', 1, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (16, N'Nguyễn Thị Hải Vân
', 1, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (17, N'Lê Thị Mỹ Duyên
', 2, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (18, N'Trần Minh Đức
', 2, 2, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (19, N'Nguyễn Thị Phượng Hằng
', 2, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (20, N'Lê Hữu Hiển
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (21, N'Nguyễn Gia Hiếu
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (22, N'Nguyễn Đức Hiếu
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (23, N'Nguyễn Ngọc Hiếu
', 2, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (24, N'Hà Huy Hoàng
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (25, N'Hà Thùy Linh
', 2, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (26, N'Dương Quang Minh 
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (27, N'Phạm Đức Minh
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (28, N'Nguyễn Anh Nam
', 2, 7, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (29, N'Dương Thành Nam
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (30, N'Nguyễn Văn Nghĩa
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (31, N'Lê Thị Nhi
', 2, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (32, N'Nguyễn Quang Phong 
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (33, N'Bùi Bích Phương 
', 2, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (34, N'Nguyễn Duy Phương
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (35, N'Đỗ Nguyên Phương
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (36, N'Quách Việt Tùng
', 2, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (37, N'Sùng Thị Út
', 2, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (38, N'Trần Quốc Bảo
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (39, N'Nguyễn Minh Dương
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (40, N'Nguyễn Phúc Đẳng
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (41, N'Nguyễn Minh Đức
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (42, N'Nguyễn Minh Hiếu
', 3, 2, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (43, N'Nguyễn Sỹ Huy Hoàng
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (44, N'Trần Quốc Huy
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (45, N'Nguyễn Văn Hưng
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (46, N'Nguyễn Thị Thu Huyền
', 3, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (47, N'Vũ Lê Huyền
', 3, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (48, N'Trang Đăng Khoa
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (49, N'Dương Đình Nhật Linh
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (50, N'Hoàng Mỹ Linh
', 3, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (51, N'Lê Đức Mạnh
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (52, N'Nguyễn Đức Minh
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (53, N'Lý Bích Ngọc
', 3, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (54, N'Hà Đức Ngọc
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (55, N'Phạm Công Nguyên
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (56, N'Nguyễn Thiện Nhân
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (57, N'Đinh Đoàn Xuân Phương
', 3, 7, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (58, N'Nguyễn Thu Phương
', 3, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (59, N'Đoàn Mạnh Tân
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (60, N'Phạm Ng. Tất Thắng
', 3, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (61, N'Đào Thị Kim Yến
', 3, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (62, N'Bùi Ngọc An
', 4, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (63, N'Đỗ Phan Nhật Anh
', 4, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (64, N'Chu Mạnh Hùng
', 4, 7, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (65, N'Nguyễn Bá Nam
', 4, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (66, N'Hoàng Trung Nguyên
', 4, 2, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (67, N'Hà Thị Ngọc Phương
', 4, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (68, N'Phan Thị Hồng Thắm
', 4, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (69, N'Vũ Duy Anh
', 5, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (70, N'Nguyễn Thảo Anh
', 5, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (71, N'Vũ Văn Biển
', 5, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (72, N'Nguyễn Quang Cường
', 5, 2, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (73, N'Trần Nhật Hiếu
', 5, 7, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (74, N'Trần Thị Thanh Thoại
', 5, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (75, N'Ngô Anh Vũ
', 5, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (76, N'Nguyễn Thế Anh
', 6, 2, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (77, N'Nguyễn Thanh Hiếu
', 6, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (78, N'Võ Quốc Huy
', 6, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (79, N'Phan Đinh Minh Ngọc
', 6, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (80, N'Tạ Văn Nhật
', 6, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (81, N'Nguyễn Hồng Quân
', 6, 7, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (82, N'Nguyễn Thúy Quỳnh
', 6, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (83, N'Nguyễn Đặng Diệp Anh
', 7, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (84, N'Trần Quốc Dũng
', 7, 7, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (85, N'Nguyễn Mạnh Dũng
', 7, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (86, N'Đàm Thị Thu Mai
', 7, 3, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (87, N'Nguyễn Bảo Ngọc
', 7, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (88, N'Đỗ Đức Phúc
', 7, 3, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (89, N'Đặng Hoàng Việt
', 7, 2, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (90, N'Bùi Xuân Long', 8, 1, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (91, N'Lê Phi Hùng', 8, 5, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (92, N'Phùng Quang Toàn', 8, 4, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaDV], [MaCV], [GioiTinh]) VALUES (93, N'Nguyễn Trường Giang', 8, 5, 1)
SET IDENTITY_INSERT [dbo].[QuanNhan] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Chỉ huy đại đội')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'Chỉ huy lớp')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MK], [MaQN]) VALUES (1, N'ct156', N'ct156', 90)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
INSERT [dbo].[TK_Quyen] ([MaTK], [MaQuyen]) VALUES (1, 1)
GO
SET IDENTITY_INSERT [dbo].[ThoiGian] ON 

INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (1, CAST(N'18:30:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (2, CAST(N'20:00:00' AS Time), CAST(N'21:00:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (3, CAST(N'21:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (4, CAST(N'22:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (5, CAST(N'23:00:00' AS Time), CAST(N'00:00:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (6, CAST(N'00:00:00' AS Time), CAST(N'01:00:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (7, CAST(N'01:00:00' AS Time), CAST(N'02:00:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (8, CAST(N'02:00:00' AS Time), CAST(N'03:00:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (9, CAST(N'03:00:00' AS Time), CAST(N'04:00:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (10, CAST(N'04:00:00' AS Time), CAST(N'05:30:00' AS Time))
SET IDENTITY_INSERT [dbo].[ThoiGian] OFF
GO
SET IDENTITY_INSERT [dbo].[UuTien] ON 

INSERT [dbo].[UuTien] ([MaUT], [TenUuTien]) VALUES (1, N'Lớp Trưởng')
INSERT [dbo].[UuTien] ([MaUT], [TenUuTien]) VALUES (2, N'Phó đại đội trưởng thực tập')
INSERT [dbo].[UuTien] ([MaUT], [TenUuTien]) VALUES (3, N'Chính trị viên phó đại đội thực tập')
INSERT [dbo].[UuTien] ([MaUT], [TenUuTien]) VALUES (4, N'Tham gia thi')
INSERT [dbo].[UuTien] ([MaUT], [TenUuTien]) VALUES (5, N'Diễn văn nghệ / Thể Thao ')
SET IDENTITY_INSERT [dbo].[UuTien] OFF
GO
SET IDENTITY_INSERT [dbo].[ViPham] ON 

INSERT [dbo].[ViPham] ([MaVP], [TenViPham]) VALUES (1, N'Nội vụ vệ sinh ')
INSERT [dbo].[ViPham] ([MaVP], [TenViPham]) VALUES (2, N'Điều lệnh, điều lệ quân đội')
INSERT [dbo].[ViPham] ([MaVP], [TenViPham]) VALUES (3, N'Nội quy, quy định Học viện')
INSERT [dbo].[ViPham] ([MaVP], [TenViPham]) VALUES (4, N'Quy định đại đội, tiểu đoàn')
SET IDENTITY_INSERT [dbo].[ViPham] OFF
GO
ALTER TABLE [dbo].[ChiTietDanhSachCongViec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachCongViec_DanhSach] FOREIGN KEY([MaDS])
REFERENCES [dbo].[DanhSach] ([MaDS])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDanhSachCongViec] CHECK CONSTRAINT [FK_ChiTietDanhSachCongViec_DanhSach]
GO
ALTER TABLE [dbo].[ChiTietDanhSachCongViec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachCongViec_NoiDungCongViec] FOREIGN KEY([MaCongviec])
REFERENCES [dbo].[NoiDungCongViec] ([MaCongViec])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDanhSachCongViec] CHECK CONSTRAINT [FK_ChiTietDanhSachCongViec_NoiDungCongViec]
GO
ALTER TABLE [dbo].[ChiTietDanhSachCongViec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachCongViec_QuanNhan] FOREIGN KEY([MaQN])
REFERENCES [dbo].[QuanNhan] ([MaQN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDanhSachCongViec] CHECK CONSTRAINT [FK_ChiTietDanhSachCongViec_QuanNhan]
GO
ALTER TABLE [dbo].[ChiTietDanhSachGac]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachGac_DanhSach] FOREIGN KEY([MaDS])
REFERENCES [dbo].[DanhSach] ([MaDS])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDanhSachGac] CHECK CONSTRAINT [FK_ChiTietDanhSachGac_DanhSach]
GO
ALTER TABLE [dbo].[ChiTietDanhSachGac]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachGac_NoiDungGac] FOREIGN KEY([MaGac])
REFERENCES [dbo].[NoiDungGac] ([MaGac])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDanhSachGac] CHECK CONSTRAINT [FK_ChiTietDanhSachGac_NoiDungGac]
GO
ALTER TABLE [dbo].[ChiTietDanhSachGac]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachGac_QuanNhan] FOREIGN KEY([MaQN])
REFERENCES [dbo].[QuanNhan] ([MaQN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDanhSachGac] CHECK CONSTRAINT [FK_ChiTietDanhSachGac_QuanNhan]
GO
ALTER TABLE [dbo].[ChiTietDanhSachGac]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachGac_ThoiGian] FOREIGN KEY([MaTG])
REFERENCES [dbo].[ThoiGian] ([MaTG])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDanhSachGac] CHECK CONSTRAINT [FK_ChiTietDanhSachGac_ThoiGian]
GO
ALTER TABLE [dbo].[QN_UuTien]  WITH CHECK ADD  CONSTRAINT [FK_QN_UuTien_QuanNhan] FOREIGN KEY([MaQN])
REFERENCES [dbo].[QuanNhan] ([MaQN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QN_UuTien] CHECK CONSTRAINT [FK_QN_UuTien_QuanNhan]
GO
ALTER TABLE [dbo].[QN_UuTien]  WITH CHECK ADD  CONSTRAINT [FK_QN_UuTien_UuTien] FOREIGN KEY([MaUT])
REFERENCES [dbo].[UuTien] ([MaUT])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QN_UuTien] CHECK CONSTRAINT [FK_QN_UuTien_UuTien]
GO
ALTER TABLE [dbo].[QN_ViPham]  WITH CHECK ADD  CONSTRAINT [FK_QN_ViPham_QuanNhan] FOREIGN KEY([MaQN])
REFERENCES [dbo].[QuanNhan] ([MaQN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QN_ViPham] CHECK CONSTRAINT [FK_QN_ViPham_QuanNhan]
GO
ALTER TABLE [dbo].[QN_ViPham]  WITH CHECK ADD  CONSTRAINT [FK_QN_ViPham_ViPham] FOREIGN KEY([MaVP])
REFERENCES [dbo].[ViPham] ([MaVP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QN_ViPham] CHECK CONSTRAINT [FK_QN_ViPham_ViPham]
GO
ALTER TABLE [dbo].[QuanNhan]  WITH CHECK ADD  CONSTRAINT [FK_QuanNhan_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuanNhan] CHECK CONSTRAINT [FK_QuanNhan_ChucVu]
GO
ALTER TABLE [dbo].[QuanNhan]  WITH CHECK ADD  CONSTRAINT [FK_QuanNhan_DonVi] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DonVi] ([MaDV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuanNhan] CHECK CONSTRAINT [FK_QuanNhan_DonVi]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_QuanNhan] FOREIGN KEY([MaQN])
REFERENCES [dbo].[QuanNhan] ([MaQN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_QuanNhan]
GO
ALTER TABLE [dbo].[TK_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_TK_Quyen_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TK_Quyen] CHECK CONSTRAINT [FK_TK_Quyen_Quyen]
GO
ALTER TABLE [dbo].[TK_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_TK_Quyen_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TK_Quyen] CHECK CONSTRAINT [FK_TK_Quyen_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [QuanLyDaiDoi] SET  READ_WRITE 
GO

use QuanLyDaiDoi
go
select * from ViPham
select * from QN_ViPham
select * from QuanNhan
Select *from DonVi
Select *from NoiDungCongViec
Select *from NoiDungGac
select c.TenQN,a.TenViPham from ViPham a,QN_ViPham b,QuanNhan c where a.MaVP=b.MaVP and b.MaQN=c.MaQN

select a.MaQN, a.TenQN, b.TenDV,c.TenCV from QuanNhan a,DonVi b, ChucVu c where a.MaDV=b.MaDV and a.MaCV=c.MaCV