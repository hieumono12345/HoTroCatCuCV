USE [QuanlyDaiDoi]
GO
/****** Object:  UserDefinedFunction [dbo].[tongqn]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[tongqn]()
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;
    SELECT @Count = COUNT(MaQN)
    FROM dbo.QuanNhan;
    RETURN @Count;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[tongqnnam]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[tongqnnam]()
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;
    SELECT @Count = COUNT(qn.MaQN)
    FROM dbo.QuanNhan qn WHERE qn.GioiTinh=1
    RETURN @Count;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[tongqnnu]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[tongqnnu]()
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;
    SELECT @Count = COUNT(qn.MaQN)
    FROM dbo.QuanNhan qn WHERE qn.GioiTinh=0
    RETURN @Count;
END;
GO
/****** Object:  Table [dbo].[ChiTietDanhSachCongViec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDanhSachCongViec](
	[MaCTDSCV] [int] IDENTITY(1,1) NOT NULL,
	[MaDS] [int] NULL,
	[MaQN] [int] NULL,
	[MaCongViec] [int] NULL,
 CONSTRAINT [PK_ChiTietDanhSachCongViec] PRIMARY KEY CLUSTERED 
(
	[MaCTDSCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDanhSachGac]    Script Date: 27/12/2023 14:13:15 ******/
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
/****** Object:  Table [dbo].[ChucVu]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucvu] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSach]    Script Date: 27/12/2023 14:13:15 ******/
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
/****** Object:  Table [dbo].[DonVi]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [varchar](50) NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[MaNganh] [int] IDENTITY(1,1) NOT NULL,
	[TenNganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiDungCongViec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiDungCongViec](
	[MaCongViec] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](100) NULL,
	[DiaDiem] [nvarchar](100) NULL,
	[Ngay] [date] NULL,
	[SoLuong] [int] NULL,
	[STTDS] [bit] NULL,
	[MaTT] [int] NULL,
	[GhiChu] [nvarchar](300) NULL,
	[TGBD] [time](7) NULL,
	[TGKT] [time](7) NULL,
	[MaTC] [int] NULL,
	[MaDV] [int] NULL,
 CONSTRAINT [PK_NoiDungCongViec] PRIMARY KEY CLUSTERED 
(
	[MaCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiDungGac]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiDungGac](
	[MaGac] [int] IDENTITY(1,1) NOT NULL,
	[Ngay] [date] NULL,
	[Hoi] [nvarchar](50) NULL,
	[Dap] [nvarchar](50) NULL,
	[NhacNho] [nvarchar](300) NULL,
	[MaDV] [int] NULL,
	[STTDS] [bit] NULL,
 CONSTRAINT [PK_NoiDungGac] PRIMARY KEY CLUSTERED 
(
	[MaGac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanNhan]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanNhan](
	[MaQN] [int] IDENTITY(1,1) NOT NULL,
	[TenQN] [nvarchar](50) NULL,
	[MaNganh] [int] NULL,
	[MaChucVu] [int] NULL,
	[MaDV] [int] NULL,
	[SDT] [varchar](50) NULL,
	[GioiTinh] [int] NULL,
 CONSTRAINT [PK_QuanNhan] PRIMARY KEY CLUSTERED 
(
	[MaQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 27/12/2023 14:13:15 ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[TenTK] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[MaQN] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiGianGac]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiGianGac](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGian] [varchar](50) NULL,
 CONSTRAINT [PK_ThoiGianGac] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhChatCongViec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhChatCongViec](
	[MaTC] [int] IDENTITY(1,1) NOT NULL,
	[DacTaTC] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](300) NULL,
 CONSTRAINT [PK_TinhChatCongViec] PRIMARY KEY CLUSTERED 
(
	[MaTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TK_Quyen]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TK_Quyen](
	[MaTK] [int] NULL,
	[MaQuyen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiCongViec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiCongViec](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangThaiCongViec] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UuTien]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UuTien](
	[MaUuTien] [int] IDENTITY(1,1) NOT NULL,
	[MaQN] [int] NULL,
	[NoiDungUuTien] [nvarchar](50) NULL,
 CONSTRAINT [PK_QN_UuTien] PRIMARY KEY CLUSTERED 
(
	[MaUuTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDanhSachCongViec] ON 

INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (29, 2, 48, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (30, 2, 87, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (31, 2, 24, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (32, 2, 75, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (33, 2, 62, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (34, 2, 17, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (35, 2, 80, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (36, 2, 71, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (37, 2, 83, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (38, 2, 69, 5)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (39, 2, 68, 2)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (40, 2, 26, 2)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (41, 2, 80, 2)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (42, 2, 34, 2)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (43, 2, 38, 2)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (44, 2, 22, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (45, 2, 33, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (46, 2, 88, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (47, 2, 77, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (48, 2, 42, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (49, 2, 10, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (50, 2, 41, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (51, 2, 45, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (52, 2, 49, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (53, 2, 76, 1)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (54, 2, 25, 8)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (55, 2, 64, 8)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (56, 2, 65, 8)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (57, 2, 94, 8)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (58, 2, 37, 4)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (59, 2, 46, 4)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (60, 2, 16, 4)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (61, 2, 41, 4)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (62, 2, 76, 4)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (63, 2, 49, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (64, 2, 7, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (65, 2, 30, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (66, 2, 40, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (67, 2, 64, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (68, 2, 86, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (69, 2, 3, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (70, 2, 94, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (71, 2, 28, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (72, 2, 60, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (73, 2, 90, 10)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (74, 2, 65, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (75, 2, 37, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (76, 2, 4, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (77, 2, 6, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (78, 2, 22, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (79, 2, 10, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (80, 2, 23, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (81, 2, 76, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (82, 2, 92, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (83, 2, 61, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (84, 2, 43, 11)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (85, 2, 22, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (86, 2, 42, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (87, 2, 40, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (88, 2, 36, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (89, 2, 27, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (90, 2, 6, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (91, 2, 30, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (92, 2, 86, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (93, 2, 90, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (94, 2, 65, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (95, 2, 56, 12)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (96, 2, 19, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (97, 2, 58, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (98, 2, 11, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (99, 2, 61, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (100, 2, 33, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (101, 2, 67, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (102, 2, 49, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (103, 2, 46, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (104, 2, 85, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (105, 2, 72, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (106, 2, 91, 13)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (107, 2, 43, 15)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (108, 2, 78, 15)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (109, 2, 41, 16)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (110, 2, 33, 16)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (111, 2, 21, 17)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (112, 2, 88, 17)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (113, 2, 9, 17)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (114, 2, 64, 17)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (115, 2, 5, 17)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (116, 2, 63, 17)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (117, 2, 45, 17)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (118, 2, 66, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (119, 2, 57, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (120, 2, 60, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (121, 2, 39, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (122, 2, 11, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (123, 2, 46, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (124, 2, 88, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (125, 2, 44, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (126, 2, 16, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (127, 2, 53, 19)
GO
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (128, 2, 79, 19)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (129, 2, 81, 21)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (130, 2, 61, 21)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (131, 2, 21, 21)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (132, 2, 46, 21)
INSERT [dbo].[ChiTietDanhSachCongViec] ([MaCTDSCV], [MaDS], [MaQN], [MaCongViec]) VALUES (133, 2, 70, 21)
SET IDENTITY_INSERT [dbo].[ChiTietDanhSachCongViec] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietDanhSachGac] ON 

INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (1, 1, 1, 20, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (2, 1, 1, 87, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (3, 1, 1, 15, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (4, 1, 1, 54, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (5, 1, 2, 69, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (6, 1, 2, 18, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (7, 1, 2, 51, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (8, 1, 2, 84, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (9, 1, 3, 48, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (10, 1, 3, 59, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (11, 1, 3, 62, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (12, 1, 3, 47, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (13, 1, 5, 81, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (14, 1, 5, 61, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (15, 1, 5, 36, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (16, 1, 5, 89, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (17, 1, 5, 9, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (18, 1, 6, 37, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (19, 1, 6, 40, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (20, 1, 6, 56, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (21, 1, 6, 11, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (22, 1, 6, 41, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (23, 1, 7, 3, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (24, 1, 7, 12, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (25, 1, 7, 63, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (26, 1, 7, 44, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (27, 1, 7, 5, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (28, 1, 8, 72, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (29, 1, 8, 66, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (30, 1, 8, 78, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (31, 1, 8, 35, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (32, 1, 8, 21, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (33, 1, 9, 7, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (34, 1, 9, 23, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (35, 1, 9, 52, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (36, 1, 9, 88, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (37, 1, 9, 30, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (38, 1, 10, 33, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (39, 1, 10, 46, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (40, 1, 10, 45, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (41, 1, 10, 57, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (42, 1, 10, 86, 1)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (43, 1, 1, 15, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (44, 1, 1, 75, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (45, 1, 1, 26, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (46, 1, 1, 18, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (47, 1, 2, 47, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (48, 1, 2, 59, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (49, 1, 2, 87, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (50, 1, 2, 71, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (51, 1, 3, 51, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (52, 1, 3, 68, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (53, 1, 3, 38, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (54, 1, 3, 48, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (55, 1, 5, 11, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (56, 1, 5, 33, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (57, 1, 5, 8, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (58, 1, 5, 40, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (59, 1, 5, 79, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (60, 1, 6, 27, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (61, 1, 6, 78, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (62, 1, 6, 70, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (63, 1, 6, 49, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (64, 1, 6, 72, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (65, 1, 7, 2, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (66, 1, 7, 57, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (67, 1, 7, 76, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (68, 1, 7, 7, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (69, 1, 7, 45, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (70, 1, 8, 46, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (71, 1, 8, 41, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (72, 1, 8, 12, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (73, 1, 8, 53, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (74, 1, 8, 39, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (75, 1, 9, 52, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (76, 1, 9, 36, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (77, 1, 9, 35, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (78, 1, 9, 22, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (79, 1, 9, 88, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (80, 1, 10, 56, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (81, 1, 10, 4, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (82, 1, 10, 50, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (83, 1, 10, 3, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (84, 1, 10, 10, 5)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (85, 1, 1, 38, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (86, 1, 1, 18, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (87, 1, 1, 54, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (88, 1, 1, 47, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (89, 1, 2, 75, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (90, 1, 2, 20, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (91, 1, 2, 59, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (92, 1, 2, 83, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (93, 1, 3, 32, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (94, 1, 3, 71, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (95, 1, 3, 69, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (96, 1, 3, 80, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (97, 1, 5, 66, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (98, 1, 5, 70, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (99, 1, 5, 23, 6)
GO
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (100, 1, 5, 64, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (101, 1, 5, 61, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (102, 1, 6, 11, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (103, 1, 6, 39, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (104, 1, 6, 27, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (105, 1, 6, 50, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (106, 1, 6, 56, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (107, 1, 7, 76, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (108, 1, 7, 53, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (109, 1, 7, 46, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (110, 1, 7, 10, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (111, 1, 7, 35, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (112, 1, 8, 22, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (113, 1, 8, 5, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (114, 1, 8, 37, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (115, 1, 8, 49, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (116, 1, 8, 41, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (117, 1, 9, 8, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (118, 1, 9, 28, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (119, 1, 9, 72, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (120, 1, 9, 45, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (121, 1, 9, 4, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (122, 1, 10, 33, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (123, 1, 10, 52, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (124, 1, 10, 40, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (125, 1, 10, 2, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (126, 1, 10, 30, 6)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (127, 1, 1, 87, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (128, 1, 1, 24, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (129, 1, 1, 83, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (130, 1, 1, 20, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (131, 1, 2, 69, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (132, 1, 2, 38, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (133, 1, 2, 80, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (134, 1, 2, 26, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (135, 1, 3, 32, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (136, 1, 3, 34, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (137, 1, 3, 84, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (138, 1, 3, 47, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (139, 1, 5, 86, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (140, 1, 5, 22, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (141, 1, 5, 11, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (142, 1, 5, 72, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (143, 1, 5, 7, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (144, 1, 6, 25, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (145, 1, 6, 28, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (146, 1, 6, 42, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (147, 1, 6, 31, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (148, 1, 6, 36, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (149, 1, 7, 41, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (150, 1, 7, 19, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (151, 1, 7, 27, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (152, 1, 7, 40, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (153, 1, 7, 44, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (154, 1, 8, 78, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (155, 1, 8, 3, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (156, 1, 8, 76, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (157, 1, 8, 61, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (158, 1, 8, 12, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (159, 1, 9, 56, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (160, 1, 9, 66, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (161, 1, 9, 6, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (162, 1, 9, 35, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (163, 1, 9, 57, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (164, 1, 10, 9, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (165, 1, 10, 16, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (166, 1, 10, 37, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (167, 1, 10, 89, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (168, 1, 10, 64, 7)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (295, 1, 1, 51, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (296, 1, 1, 87, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (297, 1, 1, 38, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (298, 1, 1, 32, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (299, 1, 2, 15, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (300, 1, 2, 83, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (301, 1, 2, 47, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (302, 1, 2, 18, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (303, 1, 3, 54, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (304, 1, 3, 48, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (305, 1, 3, 24, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (306, 1, 3, 69, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (307, 1, 5, 64, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (308, 1, 5, 57, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (309, 1, 5, 46, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (310, 1, 5, 56, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (311, 1, 5, 11, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (312, 1, 6, 89, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (313, 1, 6, 27, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (314, 1, 6, 55, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (315, 1, 6, 31, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (316, 1, 6, 4, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (317, 1, 7, 21, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (318, 1, 7, 2, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (319, 1, 7, 22, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (320, 1, 7, 23, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (321, 1, 7, 72, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (322, 1, 8, 9, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (323, 1, 8, 10, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (324, 1, 8, 70, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (325, 1, 8, 42, 12)
GO
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (326, 1, 8, 78, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (327, 1, 9, 3, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (328, 1, 9, 41, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (329, 1, 9, 50, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (330, 1, 9, 13, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (331, 1, 9, 52, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (332, 1, 10, 33, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (333, 1, 10, 12, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (334, 1, 10, 63, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (335, 1, 10, 44, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (336, 1, 10, 53, 12)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (337, 1, 1, 48, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (338, 1, 1, 62, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (339, 1, 1, 51, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (340, 1, 1, 34, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (341, 1, 2, 54, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (342, 1, 2, 75, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (343, 1, 2, 26, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (344, 1, 2, 20, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (345, 1, 3, 83, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (346, 1, 3, 24, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (347, 1, 3, 32, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (348, 1, 3, 71, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (349, 1, 5, 14, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (350, 1, 5, 29, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (351, 1, 5, 8, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (352, 1, 5, 46, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (353, 1, 5, 13, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (354, 1, 6, 63, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (355, 1, 6, 25, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (356, 1, 6, 27, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (357, 1, 6, 12, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (358, 1, 6, 40, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (359, 1, 7, 22, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (360, 1, 7, 43, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (361, 1, 7, 88, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (362, 1, 7, 73, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (363, 1, 7, 36, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (364, 1, 8, 42, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (365, 1, 8, 5, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (366, 1, 8, 45, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (367, 1, 8, 39, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (368, 1, 8, 30, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (369, 1, 9, 76, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (370, 1, 9, 4, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (371, 1, 9, 3, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (372, 1, 9, 53, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (373, 1, 9, 79, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (374, 1, 10, 16, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (375, 1, 10, 56, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (376, 1, 10, 86, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (377, 1, 10, 7, 13)
INSERT [dbo].[ChiTietDanhSachGac] ([MaCTDSG], [MaDS], [MaTG], [MaQN], [MaGac]) VALUES (378, 1, 10, 9, 13)
SET IDENTITY_INSERT [dbo].[ChiTietDanhSachGac] OFF
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (1, N'Đại đội trưởng')
INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (2, N'Lớp trưởng')
INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (3, N'Học viên')
INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (4, N'Chính trị viên đại đội')
INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (5, N'Phó đại đội trưởng')
INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (6, N'Chính trị viên phó đại đội')
INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (7, N'Lớp phó')
INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (8, N'Tiểu đoàn trưởng')
INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (9, N'Phó tiểu đoàn trưởng')
INSERT [dbo].[ChucVu] ([MaChucvu], [TenChucVu]) VALUES (10, N'Chính trị viên tiểu đoàn')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhSach] ON 

INSERT [dbo].[DanhSach] ([MaDS], [TenDS]) VALUES (1, N'Danh Sách Gác')
INSERT [dbo].[DanhSach] ([MaDS], [TenDS]) VALUES (2, N'Danh Sách Cắt Cử Công Việc')
SET IDENTITY_INSERT [dbo].[DanhSach] OFF
GO
SET IDENTITY_INSERT [dbo].[DonVi] ON 

INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (1, N'C155')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (2, N'C156')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (3, N'C157')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (4, N'C158')
INSERT [dbo].[DonVi] ([MaDV], [TenDV]) VALUES (5, N'C159')
SET IDENTITY_INSERT [dbo].[DonVi] OFF
GO
SET IDENTITY_INSERT [dbo].[Nganh] ON 

INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (1, N'CNTT')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (2, N'BDATTT')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (3, N'ANHTTT')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (4, N'PTDL')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (5, N'KTPM')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (6, N'HTTT')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (7, N'MMT')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (8, N'Chỉ huy')
SET IDENTITY_INSERT [dbo].[Nganh] OFF
GO
SET IDENTITY_INSERT [dbo].[NoiDungCongViec] ON 

INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (1, N'Bê Đồ ', N'H3', CAST(N'2023-12-16' AS Date), 10, 1, 3, N'Cầm Vật Chất', CAST(N'14:00:00' AS Time), CAST(N'19:50:30.2466667' AS Time), 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (2, N'3', N'5', CAST(N'2023-12-18' AS Date), 5, 1, 3, N'Mặc áo', CAST(N'01:29:14' AS Time), CAST(N'09:16:19.0266667' AS Time), 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (4, N'h3', N'ad', CAST(N'2023-12-18' AS Date), 5, 1, 3, NULL, CAST(N'20:24:08' AS Time), CAST(N'13:35:22.1300000' AS Time), 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (5, N'Bê Đồ ', N'H3', CAST(N'2023-12-16' AS Date), 10, 1, 3, N'Cầm Vật Chất', CAST(N'14:00:00' AS Time), CAST(N'09:16:14.9466667' AS Time), 3, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (8, N'bê đồ', N'h9', CAST(N'2023-12-19' AS Date), 4, 1, 3, N'', CAST(N'01:00:00' AS Time), NULL, 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (9, N'lam ve sinh đơn vị', N's3', CAST(N'2023-12-18' AS Date), 100, 0, 3, N'', CAST(N'16:00:00' AS Time), CAST(N'17:00:00' AS Time), NULL, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (10, N'12312', N'1231', CAST(N'1900-01-01' AS Date), 0, 1, 2, N'', CAST(N'03:00:00' AS Time), NULL, 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (11, N'12312', N'1231', CAST(N'2023-12-25' AS Date), 11, 1, 2, N'', CAST(N'03:00:00' AS Time), NULL, 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (12, N'12312', N'1231', CAST(N'2023-12-25' AS Date), 11, 1, 2, N'', CAST(N'03:00:00' AS Time), NULL, 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (13, N'12312', N'5442', CAST(N'2023-12-25' AS Date), 11, 1, 3, N'', CAST(N'03:00:00' AS Time), CAST(N'13:35:15.6200000' AS Time), 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (14, N'Ás', N'Á', CAST(N'2023-12-25' AS Date), 3, 0, 1, N'', CAST(N'21:00:00' AS Time), CAST(N'00:00:00' AS Time), NULL, 1)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (15, N'haha', N'hihi', CAST(N'2023-12-25' AS Date), 2, 1, 3, N'', CAST(N'13:00:00' AS Time), CAST(N'20:33:01.5633333' AS Time), 3, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (16, N'haha', N'hihi', CAST(N'2023-12-25' AS Date), 2, 1, 3, N'', CAST(N'13:00:00' AS Time), CAST(N'08:06:06.0533333' AS Time), 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (17, N'dfg', N'llll', CAST(N'2023-12-25' AS Date), 7, 1, 3, NULL, CAST(N'12:00:00' AS Time), CAST(N'12:05:55.9500000' AS Time), 1, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (19, N'sdfaf', N'adafs', CAST(N'2023-12-25' AS Date), 11, 1, 2, NULL, CAST(N'19:00:00' AS Time), NULL, 3, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (20, N'qưeqe', N'qeqe', CAST(N'2023-12-25' AS Date), 4, 0, 1, NULL, CAST(N'00:00:00' AS Time), NULL, NULL, 2)
INSERT [dbo].[NoiDungCongViec] ([MaCongViec], [NoiDung], [DiaDiem], [Ngay], [SoLuong], [STTDS], [MaTT], [GhiChu], [TGBD], [TGKT], [MaTC], [MaDV]) VALUES (21, N'xem văn nghệ', N's5', CAST(N'2023-12-29' AS Date), 5, 1, 1, NULL, CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 1, 2)
SET IDENTITY_INSERT [dbo].[NoiDungCongViec] OFF
GO
SET IDENTITY_INSERT [dbo].[NoiDungGac] ON 

INSERT [dbo].[NoiDungGac] ([MaGac], [Ngay], [Hoi], [Dap], [NhacNho], [MaDV], [STTDS]) VALUES (1, CAST(N'2023-12-16' AS Date), N'Hưng Yên ', N'Hà Nội ', N'Mùa Đông Lạnh Nhớ Mặc Áo Ấm', 2, 1)
INSERT [dbo].[NoiDungGac] ([MaGac], [Ngay], [Hoi], [Dap], [NhacNho], [MaDV], [STTDS]) VALUES (5, CAST(N'2023-12-26' AS Date), N'Hà Nội', N'Cao Bằng ', N'Noel tập trung', 2, 1)
INSERT [dbo].[NoiDungGac] ([MaGac], [Ngay], [Hoi], [Dap], [NhacNho], [MaDV], [STTDS]) VALUES (6, CAST(N'2023-12-25' AS Date), N'Cao Bằng ', N'Lạng Sơn', N'', 2, 1)
INSERT [dbo].[NoiDungGac] ([MaGac], [Ngay], [Hoi], [Dap], [NhacNho], [MaDV], [STTDS]) VALUES (7, CAST(N'2023-12-27' AS Date), N'Cao Bằng ', N'Bắc Cạn', N'', 2, 1)
INSERT [dbo].[NoiDungGac] ([MaGac], [Ngay], [Hoi], [Dap], [NhacNho], [MaDV], [STTDS]) VALUES (12, CAST(N'2023-12-28' AS Date), N'a', N'b', N'', 2, 1)
INSERT [dbo].[NoiDungGac] ([MaGac], [Ngay], [Hoi], [Dap], [NhacNho], [MaDV], [STTDS]) VALUES (13, CAST(N'2023-12-29' AS Date), N'c', N'd', N'', 2, 1)
SET IDENTITY_INSERT [dbo].[NoiDungGac] OFF
GO
SET IDENTITY_INSERT [dbo].[QuanNhan] ON 

INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (2, N'Nguyễn Hữu Đức An
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (3, N'Nguyễn Đức Cường
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (4, N'Phạm Ngọc Anh Dũng
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (5, N'Bùi Minh Đức
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (6, N'Nguyễn Lê Trung Hiếu
', 1, 2, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (7, N'Trần Thị Ngọc Khánh
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (8, N'Bùi Quốc Khánh
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (9, N'Nguyễn Hoàng Nam
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (10, N'Nguyễn Khôi Nguyên
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (11, N'Nguyễn Thị Hà Phương
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (12, N'Nguyễn Tấn Quý
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (13, N'Trịnh Viết Tài
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (14, N'Nghiêm Văn Tiến
', 1, 7, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (15, N'Mai Thị Hạnh Trang
', 1, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (16, N'Phạm Thanh Tùng
', 1, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (17, N'Nguyễn Thị Hải Vân
', 1, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (18, N'Lê Thị Mỹ Duyên
', 2, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (19, N'Trần Minh Đức
', 2, 2, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (20, N'Nguyễn Thị Phượng Hằng
', 2, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (21, N'Lê Hữu Hiển
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (22, N'Nguyễn Gia Hiếu
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (23, N'Nguyễn Đức Hiếu
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (24, N'Nguyễn Ngọc Hiếu
', 2, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (25, N'Hà Huy Hoàng
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (26, N'Hà Thùy Linh
', 2, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (27, N'Dương Quang Minh 
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (28, N'Phạm Đức Minh
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (29, N'Nguyễn Anh Nam
', 2, 7, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (30, N'Dương Thành Nam
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (31, N'Nguyễn Văn Nghĩa
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (32, N'Lê Thị Nhi
', 2, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (33, N'Nguyễn Quang Phong 
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (34, N'Bùi Bích Phương 
', 2, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (35, N'Nguyễn Duy Phương
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (36, N'Đỗ Nguyên Phương
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (37, N'Quách Việt Tùng
', 2, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (38, N'Sùng Thị Út
', 2, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (39, N'Trần Quốc Bảo
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (40, N'Nguyễn Minh Dương
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (41, N'Nguyễn Phúc Đẳng
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (42, N'Nguyễn Minh Đức
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (43, N'Nguyễn Minh Hiếu
', 3, 2, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (44, N'Nguyễn Sỹ Huy Hoàng
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (45, N'Trần Quốc Huy
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (46, N'Nguyễn Văn Hưng
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (47, N'Nguyễn Thị Thu Huyền
', 3, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (48, N'Vũ Lê Huyền
', 3, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (49, N'Trang Đăng Khoa
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (50, N'Dương Đình Nhật Linh
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (51, N'Hoàng Mỹ Linh
', 3, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (52, N'Lê Đức Mạnh
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (53, N'Nguyễn Đức Minh
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (54, N'Lý Bích Ngọc
', 3, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (55, N'Hà Đức Ngọc
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (56, N'Phạm Công Nguyên
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (57, N'Nguyễn Thiện Nhân
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (58, N'Đinh Đoàn Xuân Phương
', 3, 7, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (59, N'Nguyễn Thu Phương
', 3, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (60, N'Đoàn Mạnh Tân
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (61, N'Phạm Ng. Tất Thắng
', 3, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (62, N'Đào Thị Kim Yến
', 3, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (63, N'Bùi Ngọc An
', 4, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (64, N'Đỗ Phan Nhật Anh
', 4, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (65, N'Chu Mạnh Hùng
', 4, 7, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (66, N'Nguyễn Bá Nam
', 4, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (67, N'Hoàng Trung Nguyên
', 4, 2, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (68, N'Hà Thị Ngọc Phương
', 4, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (69, N'Phan Thị Hồng Thắm
', 4, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (70, N'Vũ Duy Anh
', 5, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (71, N'Nguyễn Thảo Anh
', 5, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (72, N'Vũ Văn Biển
', 5, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (73, N'Nguyễn Quang Cường
', 5, 2, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (74, N'Trần Nhật Hiếu
', 5, 7, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (75, N'Trần Thị Thanh Thoại
', 5, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (76, N'Ngô Anh Vũ
', 5, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (77, N'Nguyễn Thế Anh
', 6, 2, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (78, N'Nguyễn Thanh Hiếu
', 6, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (79, N'Võ Quốc Huy
', 6, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (80, N'Phan Đinh Minh Ngọc
', 6, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (81, N'Tạ Văn Nhật
', 6, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (82, N'Nguyễn Hồng Quân
', 6, 7, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (83, N'Nguyễn Thúy Quỳnh
', 6, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (84, N'Nguyễn Đặng Diệp Anh
', 7, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (85, N'Trần Quốc Dũng
', 7, 7, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (86, N'Nguyễn Mạnh Dũng
', 7, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (87, N'Đàm Thị Thu Mai
', 7, 3, 2, NULL, 0)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (88, N'Nguyễn Bảo Ngọc
', 7, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (89, N'Đỗ Đức Phúc
', 7, 3, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (90, N'Đặng Hoàng Việt
', 7, 2, 2, NULL, 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (91, N'Bùi Xuân Long', 8, 1, 2, N'0984733625', 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (92, N'Lê Phi Hùng', 8, 5, 2, N'09484722633', 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (93, N'Phùng Quang Toàn', 8, 4, 2, N'098744323', 1)
INSERT [dbo].[QuanNhan] ([MaQN], [TenQN], [MaNganh], [MaChucVu], [MaDV], [SDT], [GioiTinh]) VALUES (94, N'Nguyễn Trường Giang', 8, 5, 2, N'09857336254', 1)
SET IDENTITY_INSERT [dbo].[QuanNhan] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'admin')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'daidoi')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (3, N'tieudoan')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaQN]) VALUES (1, N'Long156', N'123', 91)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaQN]) VALUES (2, N'long', N'356A192B7913B04C54574D18C28D46E6395428AB', 91)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaQN]) VALUES (3, N'admin', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', 2)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaQN]) VALUES (4, N'cuong', N'356A192B7913B04C54574D18C28D46E6395428AB', 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaQN]) VALUES (5, N'admin', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', 93)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaQN]) VALUES (6, N'mui', N'356A192B7913B04C54574D18C28D46E6395428AB', 22)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThoiGianGac] ON 

INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (1, N'18h30-20h')
INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (2, N'20h-21h')
INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (3, N'21h-22h')
INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (4, N'22h-23h')
INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (5, N'23h-0h')
INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (6, N'0h-1h')
INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (7, N'1h-2h')
INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (8, N'2h-3h')
INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (9, N'3h-4h')
INSERT [dbo].[ThoiGianGac] ([MaTG], [ThoiGian]) VALUES (10, N'4h-5h30')
SET IDENTITY_INSERT [dbo].[ThoiGianGac] OFF
GO
SET IDENTITY_INSERT [dbo].[TinhChatCongViec] ON 

INSERT [dbo].[TinhChatCongViec] ([MaTC], [DacTaTC], [GhiChu]) VALUES (1, N'Cắt Chỉ Nam', N'Công Việc Nặng Chỉ Có Quân Nhân Nam Mới Làm Được')
INSERT [dbo].[TinhChatCongViec] ([MaTC], [DacTaTC], [GhiChu]) VALUES (2, N'Cắt Cả Nam Và Nữ', N'Công Việc Bình Thường Hàng Ngày Cả Nam Và Nữ Đều Đi Làm Được')
INSERT [dbo].[TinhChatCongViec] ([MaTC], [DacTaTC], [GhiChu]) VALUES (3, N'Cắt Chỉ Nữ', N'Công Việc Đặc Biệt Chỉ Có Quân Nhân Nữ Đi Làm Được')
SET IDENTITY_INSERT [dbo].[TinhChatCongViec] OFF
GO
INSERT [dbo].[TK_Quyen] ([MaTK], [MaQuyen]) VALUES (1, 2)
INSERT [dbo].[TK_Quyen] ([MaTK], [MaQuyen]) VALUES (2, 2)
INSERT [dbo].[TK_Quyen] ([MaTK], [MaQuyen]) VALUES (3, 1)
INSERT [dbo].[TK_Quyen] ([MaTK], [MaQuyen]) VALUES (4, 3)
INSERT [dbo].[TK_Quyen] ([MaTK], [MaQuyen]) VALUES (5, 1)
INSERT [dbo].[TK_Quyen] ([MaTK], [MaQuyen]) VALUES (6, 3)
GO
SET IDENTITY_INSERT [dbo].[TrangThaiCongViec] ON 

INSERT [dbo].[TrangThaiCongViec] ([MaTT], [TrangThai]) VALUES (1, N'Chưa Thực Hiện')
INSERT [dbo].[TrangThaiCongViec] ([MaTT], [TrangThai]) VALUES (2, N'Đang Thực Hiện')
INSERT [dbo].[TrangThaiCongViec] ([MaTT], [TrangThai]) VALUES (3, N'Hoàn Thành')
SET IDENTITY_INSERT [dbo].[TrangThaiCongViec] OFF
GO
SET IDENTITY_INSERT [dbo].[UuTien] ON 

INSERT [dbo].[UuTien] ([MaUuTien], [MaQN], [NoiDungUuTien]) VALUES (1, 4, N'Mệt')
INSERT [dbo].[UuTien] ([MaUuTien], [MaQN], [NoiDungUuTien]) VALUES (2, 7, N'Đau Đầu')
INSERT [dbo].[UuTien] ([MaUuTien], [MaQN], [NoiDungUuTien]) VALUES (4, 18, N'Truc Ban')
INSERT [dbo].[UuTien] ([MaUuTien], [MaQN], [NoiDungUuTien]) VALUES (5, 23, N'Tranh Thu')
SET IDENTITY_INSERT [dbo].[UuTien] OFF
GO
ALTER TABLE [dbo].[ChiTietDanhSachCongViec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachCongViec_DanhSach] FOREIGN KEY([MaDS])
REFERENCES [dbo].[DanhSach] ([MaDS])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDanhSachCongViec] CHECK CONSTRAINT [FK_ChiTietDanhSachCongViec_DanhSach]
GO
ALTER TABLE [dbo].[ChiTietDanhSachCongViec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachCongViec_NoiDungCongViec] FOREIGN KEY([MaCongViec])
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
ALTER TABLE [dbo].[ChiTietDanhSachGac]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDanhSachGac_ThoiGianGac] FOREIGN KEY([MaTG])
REFERENCES [dbo].[ThoiGianGac] ([MaTG])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDanhSachGac] CHECK CONSTRAINT [FK_ChiTietDanhSachGac_ThoiGianGac]
GO
ALTER TABLE [dbo].[NoiDungCongViec]  WITH CHECK ADD  CONSTRAINT [FK_NoiDungCongViec_TinhChatCongViec] FOREIGN KEY([MaTC])
REFERENCES [dbo].[TinhChatCongViec] ([MaTC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NoiDungCongViec] CHECK CONSTRAINT [FK_NoiDungCongViec_TinhChatCongViec]
GO
ALTER TABLE [dbo].[NoiDungCongViec]  WITH CHECK ADD  CONSTRAINT [FK_NoiDungCongViec_TrangThaiCongViec] FOREIGN KEY([MaTT])
REFERENCES [dbo].[TrangThaiCongViec] ([MaTT])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NoiDungCongViec] CHECK CONSTRAINT [FK_NoiDungCongViec_TrangThaiCongViec]
GO
ALTER TABLE [dbo].[QuanNhan]  WITH CHECK ADD  CONSTRAINT [FK_QuanNhan_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucvu])
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
ALTER TABLE [dbo].[QuanNhan]  WITH CHECK ADD  CONSTRAINT [FK_QuanNhan_Nganh] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[Nganh] ([MaNganh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuanNhan] CHECK CONSTRAINT [FK_QuanNhan_Nganh]
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
ALTER TABLE [dbo].[UuTien]  WITH CHECK ADD  CONSTRAINT [FK_QN_UuTien_QuanNhan] FOREIGN KEY([MaQN])
REFERENCES [dbo].[QuanNhan] ([MaQN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UuTien] CHECK CONSTRAINT [FK_QN_UuTien_QuanNhan]
GO
/****** Object:  StoredProcedure [dbo].[usp_capnhatqngac]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_capnhatqngac]
    @maqncu1 INT, @maqncu2 INT, @maqncu3 INT, @maqncu4 INT, @maqncu5 INT,
    @maqnmoi1 INT, @maqnmoi2 INT, @maqnmoi3 INT, @maqnmoi4 INT, @maqnmoi5 INT,
    @magac INT, @matg INT
AS
BEGIN
	IF (@maqnmoi1 IS NOT NULL)
	BEGIN
	UPDATE dbo.ChiTietDanhSachGac SET MaQN = @maqnmoi1 WHERE MaTG = @matg AND MaGac = @magac AND MaQN = @maqncu1
	END
	IF (@maqnmoi2 IS NOT NULL)
	BEGIN
		UPDATE dbo.ChiTietDanhSachGac SET MaQN = @maqnmoi2 WHERE MaTG = @matg AND MaGac = @magac AND MaQN = @maqncu2	
	END
	IF (@maqnmoi3 IS NOT NULL)
	BEGIN
		UPDATE dbo.ChiTietDanhSachGac SET MaQN = @maqnmoi3 WHERE MaTG = @matg AND MaGac = @magac AND MaQN = @maqncu3
	END
	IF (@maqnmoi4 IS NOT NULL)
	BEGIN
		UPDATE dbo.ChiTietDanhSachGac SET MaQN = @maqnmoi4 WHERE MaTG = @matg AND MaGac = @magac AND MaQN = @maqncu4
	END
    -- Only execute the fifth update if matg is greater than 3 and maqnmoi5 is not null
    IF (@matg > 3 AND @maqnmoi5 IS NOT NULL)
    BEGIN
        UPDATE dbo.ChiTietDanhSachGac SET MaQN = @maqnmoi5 WHERE MaTG = @matg AND MaGac = @magac AND MaQN = @maqncu5
    END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_CatCongViecDaiDoi]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[usp_CatCongViecDaiDoi]
    @Noidung NVARCHAR(300),
    @DiaDiem NVARCHAR(50),
    @Ngay DATE,
    @soluong INT,
	@ghichu NVARCHAR(300),
    @ThoiGianBatDauCongViec2 TIME,
    @MaTC INT,
    @MaDV INT
AS
BEGIN
    INSERT INTO dbo.NoiDungCongViec
    (
        NoiDung,
        DiaDiem,
        Ngay,
        SoLuong,
        STTDS,
        MaTT,
        GhiChu,
        TGBD,
        TGKT,
        MaTC,
        MaDV
    )
    VALUES
    (   @Noidung, -- NoiDung - nvarchar(100)
        @DiaDiem, -- DiaDiem - nvarchar(100)
        @Ngay, -- Ngay - date
        @soluong, -- SoLuong - int
        1, -- STTDS - bit
        1, -- MaTT - int
        @ghichu, -- GhiChu - nvarchar(300)
        @ThoiGianBatDauCongViec2, -- TGBD - time(7)
        NULL, -- TGKT - time(7)
        @MaTC, -- MaTC - int
        @MaDV  -- MaDV - int
        )
    DECLARE @macv INT;
    SELECT @macv = nd.MaCongViec
    FROM dbo.NoiDungCongViec nd
    WHERE nd.NoiDung = @Noidung AND nd.DiaDiem = @DiaDiem AND nd.TGBD = @ThoiGianBatDauCongViec2 AND nd.MaTC = @MaTC AND nd.MaDV = @MaDV;

    DECLARE @SoLuongDaCat INT;
    SELECT @SoLuongDaCat = COUNT(*)
    FROM ChiTietDanhSachCongViec
    WHERE MaCongViec = @macv;

    IF @SoLuongDaCat < @soluong
    BEGIN
        INSERT INTO dbo.ChiTietDanhSachCongViec
        (
            MaDS,
            MaQN,
            MaCongViec
        )
        SELECT 2 AS MaDS,
            RandomMaQN.MaQN,
            @macv AS MaCongViec
        FROM (
            SELECT TOP (@soluong)
                MaQN
            FROM QuanNhan
            WHERE
                (@MaTC = 1 AND GioiTinh = 1)
                OR
                (@MaTC = 2)
                OR
                (@MaTC = 3 AND GioiTinh = 0)
                AND MaQN NOT IN (
                    SELECT a.MaQN
                    FROM dbo.ChiTietDanhSachCongViec a
                    WHERE a.MaCongViec IN (
                        SELECT ndcv.MaCongViec
                        FROM dbo.NoiDungCongViec ndcv
                        WHERE ndcv.TGBD < @ThoiGianBatDauCongViec2 AND @ThoiGianBatDauCongViec2 < ndcv.TGKT
                    )
                )
            ORDER BY NEWID()
        ) AS RandomMaQN;
    END
    ELSE
    BEGIN
        PRINT 'Da du so luong can cat.';
    END

    EXEC dbo.usp_HienThiDanhSachLamViec @MaCongViec = @macv -- int
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CatCongViecTuDong]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_CatCongViecTuDong]
	@MaCV INT,
    @Ghichu NVARCHAR(300),
    @MaTC INT,
	@madv INT
AS
BEGIN
	DECLARE @ngay DATE
	SELECT @ngay=Ngay FROM dbo.NoiDungCongViec WHERE MaCongViec =@MaCV
	DECLARE @soluong INT
	SELECT @soluong=SoLuong FROM dbo.NoiDungCongViec WHERE MaCongViec =@MaCV 
	DECLARE @ThoiGianBatDauCongViec2 TIME
	SELECT @ThoiGianBatDauCongViec2=TGBD FROM dbo.NoiDungCongViec WHERE MaCongViec =@MaCV 
	DECLARE @soluongcatcu INT
	SELECT @soluongcatcu=COUNT(MaQN) FROM dbo.ChiTietDanhSachCongViec WHERE MaCongViec=@MaCV
	UPDATE NoiDungCongViec
	SET
		GhiChu=@Ghichu,
		STTDS=1,
		MaTC = @MaTC
	WHERE
		MaCongViec = @MaCV 
	IF(@soluong>@soluongcatcu)
	BEGIN
	    INSERT INTO dbo.ChiTietDanhSachCongViec
        (
            MaDS,
            MaQN,
            MaCongViec
        )
		SELECT 2 AS MaDS,RandomMaQN.MaQN,@macv AS MaCongViec FROM (SELECT TOP (@soluong) MaQN 
			FROM QuanNhan
            WHERE
			((@MaTC = 1 AND GioiTinh = 1) OR
			(@MaTC = 2) OR (@MaTC = 3 AND GioiTinh = 0))
			AND MaChucVu = 3  AND MaDV=@madv AND 
			MaQN NOT IN (SELECT a.MaQN FROM dbo.ChiTietDanhSachCongViec a
            WHERE a.MaCongViec IN ( SELECT ndcv.MaCongViec FROM dbo.NoiDungCongViec ndcv
			WHERE ndcv.TGBD < @ThoiGianBatDauCongViec2 AND (ndcv.TGKT IS NULL OR @ThoiGianBatDauCongViec2 < ndcv.TGKT) AND ndcv.Ngay=@ngay
			) AND a.MaQN NOT IN (SELECT ut.MaQN FROM dbo.UuTien ut))
            ORDER BY NEWID()
        ) AS RandomMaQN;
	END
    EXEC dbo.usp_HienThiDanhSachLamViec @MaCongViec = @MaCV -- int
END

GO
/****** Object:  StoredProcedure [dbo].[usp_CatGacTuDong]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_CatGacTuDong]
    @MaGac INT
AS
BEGIN
    -- Tạo bảng tạm để lưu trạng thái của các mã đã được chọn
    CREATE TABLE #SelectedMaQN (MaQN INT);

    -- Kiểm tra xem MaGac đã tồn tại trong ChiTietDanhSachGac chưa
    IF NOT EXISTS (SELECT 1 FROM ChiTietDanhSachGac WHERE MaGac = @MaGac)
    BEGIN
        -- Tạo bảng MaTG tạm để lưu trạng thái của các MaTG
        CREATE TABLE #SelectedMaTG (MaTG INT);

        -- Thêm dữ liệu vào bảng MaTG
        INSERT INTO #SelectedMaTG (MaTG) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

        -- Thêm dữ liệu vào bảng ChiTietDanhSachGac cho MaTG = 1, 2, 3
        DECLARE @MaTG INT;
        SET @MaTG = 1;

        WHILE @MaTG <= 3
        BEGIN
            INSERT INTO ChiTietDanhSachGac (MaTG, MaDS, MaQN, MaGac)
            SELECT TOP 4
                @MaTG AS MaTG,
                1 AS MaDS,
                RandomMaQN.MaQN,
                @MaGac AS MaGac
            FROM (
                SELECT
                    MaQN,
                    ROW_NUMBER() OVER (ORDER BY NEWID()) AS RandomNumber
                FROM QuanNhan
                WHERE GioiTinh = 0 AND MaDV = (SELECT MaDV FROM NoiDungGac WHERE MaGac = @MaGac)
                    AND MaChucVu = 3 
                    AND MaQN NOT IN (SELECT MaQN FROM ChiTietDanhSachGac WHERE MaGac = @MaGac)
            ) AS RandomMaQN
            WHERE RandomMaQN.RandomNumber IS NOT NULL -- Đảm bảo không có dữ liệu NULL
            ORDER BY RandomMaQN.RandomNumber;

            SET @MaTG = @MaTG + 1;
        END

        -- Lấy 5 MaQN nam cho MaTG = 5, 6, 7, 8, 9, 10
        SET @MaTG = 5;

        WHILE @MaTG <= 10
        BEGIN
            INSERT INTO ChiTietDanhSachGac (MaTG, MaDS, MaQN, MaGac)
            SELECT TOP 5
                @MaTG AS MaTG,
                1 AS MaDS,
                RandomMaQN.MaQN,
                @MaGac AS MaGac
            FROM (
                SELECT
                    MaQN,
                    ROW_NUMBER() OVER (ORDER BY NEWID()) AS RandomNumber
                FROM QuanNhan
                WHERE GioiTinh = 1 AND MaDV = (SELECT MaDV FROM NoiDungGac WHERE MaGac = @MaGac)
                    AND MaChucVu = 3 
                    AND MaQN NOT IN (SELECT MaQN FROM ChiTietDanhSachGac WHERE MaGac = @MaGac)
            ) AS RandomMaQN
            WHERE RandomMaQN.RandomNumber IS NOT NULL
            ORDER BY RandomMaQN.RandomNumber;

            SET @MaTG = @MaTG + 1;
        END


        -- Xóa bảng tạm MaTG
        DROP TABLE IF EXISTS #SelectedMaTG;
    END
    ELSE
    BEGIN
        PRINT 'MaGac already exists in ChiTietDanhSachGac.';
    END

    -- Xóa bảng tạm MaQN
    DROP TABLE IF EXISTS #SelectedMaQN;
	UPDATE dbo.NoiDungGac SET STTDS=1 WHERE MaGac=@MaGac
	EXEC dbo.usp_HienTHiGac @magac = @MaGac -- int
END

GO
/****** Object:  StoredProcedure [dbo].[usp_CatViecTuDong]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_CatViecTuDong]
    @MaCongViec INT
AS
BEGIN
    -- Tạo bảng tạm để lưu trạng thái của các mã đã được chọn
    CREATE TABLE #SelectedMaQN (MaQN INT);

    -- Lấy thông tin MaTC từ bảng NoiDungCongViec
    DECLARE @MaTC INT;
    SELECT @MaTC = MaTC FROM NoiDungCongViec WHERE MaCongViec = @MaCongViec;

    -- Lấy thông tin SoLuong từ bảng NoiDungCongViec
    DECLARE @SoLuong INT;
    SELECT @SoLuong = SoLuong FROM NoiDungCongViec WHERE MaCongViec = @MaCongViec;

    -- Lấy số lượng đã cắt trong bảng ChiTietDanhSachCongViec
    DECLARE @SoLuongDaCat INT;
    SELECT @SoLuongDaCat = COUNT(*) FROM ChiTietDanhSachCongViec WHERE MaCongViec = @MaCongViec;

    -- Kiểm tra xem đã cắt đủ người chưa
    IF @SoLuongDaCat < @SoLuong
    BEGIN
        -- Thêm dữ liệu vào bảng ChiTietDanhSachCongViec
        INSERT INTO ChiTietDanhSachCongViec (MaDS, MaQN, MaCongViec)
        SELECT 
            2 AS MaDS,
            RandomMaQN.MaQN,
            @MaCongViec AS MaCongViec
        FROM (
            SELECT TOP (@SoLuong - @SoLuongDaCat)
                MaQN
            FROM QuanNhan
            WHERE 
                (@MaTC = 1 AND GioiTinh = 1) OR  -- Chọn Nam nếu MaTC=1
                (@MaTC = 2) OR                    -- Chọn bất kỳ nếu MaTC=2
                (@MaTC = 3 AND GioiTinh = 0)      -- Chọn Nữ nếu MaTC=3
            ORDER BY NEWID()
        ) AS RandomMaQN;

        -- Hiển thị thông tin hoặc thực hiện các thao tác khác tùy thuộc vào nhu cầu của bạn
        SELECT * FROM ChiTietDanhSachCongViec WHERE MaCongViec = @MaCongViec;
    END
    ELSE
    BEGIN
        PRINT 'Da du so luong can cat.';
    END

    -- Xóa bảng tạm
    DROP TABLE IF EXISTS #SelectedMaQN;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Dangnhap]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_Dangnhap]
@TenTk VARCHAR(50),@Matkhau VARCHAR(50)
AS
BEGIN
	DECLARE @matk INT
	SELECT @matk=tk.MaTK FROM dbo.TaiKhoan tk WHERE tk.TenTK=@TenTk AND tk.MatKhau=@Matkhau
    SELECT  dv.MaDV,qn.MaQN,tk_quyen.MaQuyen
	FROM dbo.TK_Quyen tk_quyen INNER JOIN dbo.TaiKhoan tk ON tk.MaTK = tk_quyen.MaTK
	INNER JOIN dbo.QuanNhan qn ON qn.MaQN = tk.MaQN
	INNER JOIN dbo.DonVi dv ON dv.MaDV = qn.MaDV
	WHERE tk.TenTK=@TenTk AND tk.MatKhau=@Matkhau AND tk_quyen.MaTK=@matk
END
GO
/****** Object:  StoredProcedure [dbo].[usp_danhsachcongviectieudoan]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[usp_danhsachcongviectieudoan]
AS
BEGIN
    SELECT ROW_NUMBER() OVER (ORDER BY ndcv.MaCongViec) AS STT,ndcv.DiaDiem,ndcv.SoLuong,ndcv.GhiChu,ndcv.MaCongViec,ndcv.Ngay,ndcv.TGBD,ndcv.TGKT,dv.TenDV,ndcv.NoiDung,ndcv.SoLuong,ndcv.GhiChu,ndcv.STTDS FROM dbo.DonVi dv,dbo.NoiDungCongViec ndcv WHERE dv.MaDV=ndcv.MaDV AND ndcv.MaTT=1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DanhSachNgayGac]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_DanhSachNgayGac]
AS
BEGIN
    SELECT * FROM dbo.NoiDungGac 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_hienthidanhsachcongviecdaidoi]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[usp_hienthidanhsachcongviecdaidoi]
@madv INT
AS
BEGIN
    SELECT ROW_NUMBER() OVER (ORDER BY ndcv.MaCongViec) AS STT,ndcv.MaCongViec,ndcv.NoiDung,ndcv.Ngay,ndcv.TGBD,ndcv.STTDS,ndcv.SoLuong,ndcv.GhiChu,ndcv.MaDV,ndcv.DiaDiem,ttcv.TrangThai
	FROM dbo.TrangThaiCongViec ttcv 
	INNER JOIN dbo.NoiDungCongViec ndcv ON ndcv.MaTT = ttcv.MaTT WHERE ndcv.MaDV=@madv AND ndcv.MaTT<>3
END
GO
/****** Object:  StoredProcedure [dbo].[usp_HienThiDanhSachLamViec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HienThiDanhSachLamViec]
@MaCongViec int
AS
BEGIN
    SELECT
    ROW_NUMBER() OVER (ORDER BY ng.TenNganh) AS STT,
    qn.TenQN,
    ng.TenNganh
FROM
    dbo.Nganh ng
    INNER JOIN dbo.QuanNhan qn ON qn.MaNganh = ng.MaNganh
    INNER JOIN dbo.ChiTietDanhSachCongViec ctdscv ON ctdscv.MaQN = qn.MaQN 
	WHERE ctdscv.MaCongViec=@MaCongViec
END
GO
/****** Object:  StoredProcedure [dbo].[usp_HienThiDanhSachUuTien]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_HienThiDanhSachUuTien]
    @madv INT
AS
BEGIN
    SELECT 
        ROW_NUMBER() OVER (ORDER BY qn.MaQN) AS STT,
        qn.MaQN,
        qn.TenQN,
        ut.NoiDungUuTien,
        ut.MaUuTien
    FROM 
        dbo.UuTien ut 
    INNER JOIN 
        dbo.QuanNhan qn ON qn.MaQN = ut.MaQN
    WHERE 
        qn.MaDV = @madv;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_HienTHiGac]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HienTHiGac]
@magac INT
AS
BEGIN
WITH PivotedData AS (
    SELECT
        ThoiGian,
        MAX(CASE WHEN Rownum = 1 THEN TenQN END) AS HV1,
        MAX(CASE WHEN Rownum = 2 THEN TenQN END) AS HV2,
        MAX(CASE WHEN Rownum = 3 THEN TenQN END) AS HV3,
        MAX(CASE WHEN Rownum = 4 THEN TenQN END) AS HV4,
        MAX(CASE WHEN Rownum = 5 THEN TenQN END) AS [DocGac],
		MAX(CASE WHEN Rownum = 1 THEN SourceTable.MaQN END) AS Ma1,
        MAX(CASE WHEN Rownum = 2 THEN SourceTable.MaQN END) AS Ma2,
        MAX(CASE WHEN Rownum = 3 THEN SourceTable.MaQN END) AS Ma3,
        MAX(CASE WHEN Rownum = 4 THEN SourceTable.MaQN END) AS Ma4,
        MAX(CASE WHEN Rownum = 5 THEN SourceTable.MaQN END) AS [Ma5]
    FROM (
        SELECT
            tgg.ThoiGian,
            qn.TenQN,
			qn.MaQN,
            ROW_NUMBER() OVER (PARTITION BY tgg.ThoiGian ORDER BY tgg.MaTG DESC) AS Rownum
        FROM
            dbo.QuanNhan qn
            INNER JOIN dbo.ChiTietDanhSachGac ctg ON ctg.MaQN = qn.MaQN
            INNER JOIN dbo.ThoiGianGac tgg ON tgg.MaTG = ctg.MaTG
        WHERE ctg.MaGac = @magac
    ) AS SourceTable
    GROUP BY ThoiGian
)
SELECT 
	tg.MaTG,
    pv.ThoiGian,
    ISNULL(pv.HV1, N'Trực Ban') AS HV1,
    ISNULL(pv.HV2, N'Trực Ban') AS HV2,
    ISNULL(pv.HV3, N'Trực Ban') AS HV3,
    ISNULL(pv.HV4, N'Trực Ban') AS HV4,
    ISNULL(pv.[DocGac], N'Trực Ban') AS [DocGac],
	pv.Ma1,pv.Ma2,pv.Ma3,pv.Ma4,pv.Ma5
FROM PivotedData pv
INNER JOIN dbo.ThoiGianGac tg ON pv.ThoiGian = tg.ThoiGian
ORDER BY tg.MaTG
END

GO
/****** Object:  StoredProcedure [dbo].[usp_hienthingaygac]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_hienthingaygac]
@madv int
AS
BEGIN
    DECLARE @currentDate DATE = GETDATE()
    SELECT ROW_NUMBER() OVER (ORDER BY MaGac) AS 'STT',* FROM dbo.NoiDungGac WHERE Ngay >= @currentDate AND MaDV=@madv
END
GO
/****** Object:  StoredProcedure [dbo].[usp_hienthiquannhan]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_hienthiquannhan]
    @magac INT,
    @matg INT
AS
BEGIN
    IF @matg IN (1, 2, 3)
    BEGIN
        SELECT qn.MaQN, qn.TenQN
        FROM dbo.QuanNhan qn
        WHERE qn.MaQN NOT IN (SELECT ctg.MaQN FROM dbo.ChiTietDanhSachGac ctg WHERE ctg.MaGac = @magac)
            AND qn.GioiTinh = 0;
    END
    ELSE
    BEGIN
        SELECT qn.MaQN, qn.TenQN
        FROM dbo.QuanNhan qn
        WHERE qn.MaQN NOT IN (SELECT ctg.MaQN FROM dbo.ChiTietDanhSachGac ctg WHERE ctg.MaGac = @magac)
            AND qn.GioiTinh = 1;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_HienThoiGian]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_HienThoiGian]
AS
BEGIN
    SELECT tg.ThoiGian FROM dbo.ThoiGianGac tg
END
GO
/****** Object:  StoredProcedure [dbo].[usp_hoanthanhcongviec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_hoanthanhcongviec]
@macv INT
AS
BEGIN
    UPDATE dbo.NoiDungCongViec SET MaTT=3,TGKT=CONVERT(TIME, GETDATE()) WHERE MaCongViec=@macv
END
GO
/****** Object:  StoredProcedure [dbo].[usp_soluongconlai]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_soluongconlai]
    @madv INT,
    @ngay DATE,
    @TGBD TIME
AS
BEGIN
	DECLARE @soluongdv INT
	SELECT @soluongdv=COUNT(MaQN) FROM dbo.QuanNhan WHERE MaDV=@madv AND MaChucVu=3
	DECLARE @soluongdilam INT
	SELECT @soluongdilam=SUM(SoLuong) FROM dbo.NoiDungCongViec WHERE Ngay=@ngay AND MaDV=@madv
	IF(@soluongdv>@soluongdilam)
	BEGIN
	    SELECT COUNT(qn.MaQN) AS 'soluong'
    FROM dbo.QuanNhan qn
    WHERE qn.MaChucVu=3 AND qn.MaDV=@madv AND qn.MaQN NOT IN (SELECT MaQN FROM dbo.UuTien)
        AND qn.MaQN NOT IN (
            SELECT MaQN
            FROM dbo.ChiTietDanhSachCongViec
            WHERE MaCongViec IN (
                SELECT MaCongViec
                FROM dbo.NoiDungCongViec
                WHERE Ngay = @ngay
                    AND TGBD < @TGBD
                    AND (TGKT IS NULL OR @TGBD < TGKT)
            )
        )
	END
    ELSE
    BEGIN
		SELECT 0 AS 'soluong';
    END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SuaDanhSachCongViec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SuaDanhSachCongViec]
@macv INT,@noidung NVARCHAR(300),@diadiem NVARCHAR(50),@ngay DATE,@soluong INT,@GhiChu NVARCHAR(300),@TGBD TIME,@TGKT TIME,@MaDV INT
AS
BEGIN
    UPDATE dbo.NoiDungCongViec SET NoiDung=@noidung,DiaDiem=@diadiem,Ngay=@ngay,SoLuong=@soluong,GhiChu=@GhiChu,TGBD=@TGKT,TGKT=@TGKT,MaDV=@MaDV WHERE MaCongViec=@macv
END
GO
/****** Object:  StoredProcedure [dbo].[usp_suanoidunggac]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_suanoidunggac]
@magac INT,@hoi NVARCHAR(50),@dap NVARCHAR(50)
AS
BEGIN
    UPDATE dbo.NoiDungGac SET  Hoi=@hoi,Dap=@dap WHERE MaGac=@magac
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SuaUutien]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SuaUutien]
@MaUuTien INT,@MaQN INT,@noidunguutien NVARCHAR(50)
AS
BEGIN
    UPDATE dbo.UuTien SET MaQN=@MaQN,NoiDungUuTien=@noidunguutien WHERE MaUuTien=@MaUuTien
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ThemDanhSachCongViec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ThemDanhSachCongViec]
@noidung NVARCHAR(300),@diadiem NVARCHAR(50),@ngay DATE,@soluong INT,@GhiChu NVARCHAR(300),@TGBD TIME,@TGKT VARCHAR(50),@MaDV INT
AS
BEGIN
	DECLARE @soluongdilam INT
	SELECT @soluongdilam=COUNT(MaQN) FROM dbo.ChiTietDanhSachCongViec WHERE MaCongViec IN(SELECT MaCongViec FROM dbo.NoiDungCongViec WHERE Ngay=@ngay)
	DECLARE @soluongqsdaidoi INT
	SELECT @soluongqsdaidoi=COUNT(MaQN) FROM dbo.QuanNhan WHERE MaChucVu = 3  AND MaDV = @MaDV
	IF((@soluongqsdaidoi-(@soluongdilam+@soluong))>0)
	BEGIN
	    INSERT INTO dbo.NoiDungCongViec
    (
        NoiDung,
        DiaDiem,
        Ngay,
        SoLuong,
        STTDS,
        MaTT,
        GhiChu,
        TGBD,
        TGKT,
        MaTC,
        MaDV
    )
    VALUES
    (   @noidung, -- NoiDung - nvarchar(100)
        @diadiem, -- DiaDiem - nvarchar(100)
        @ngay, -- Ngay - date
        @soluong, -- SoLuong - int
        0, -- STTDS - bit
        1, -- MaTT - int
        @GhiChu, -- GhiChu - nvarchar(300)
        @TGBD, -- TGBD - time(7)
        @TGKT, -- TGKT - time(7)
        NULL, -- MaTC - int
        @MaDV  -- MaDV - int
        )
	END
    ELSE
	BEGIN
	    PRINT 'khong du quan so de cat'
	END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ThemDanhSachCongViec1]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ThemDanhSachCongViec1]
@noidung NVARCHAR(300),@diadiem NVARCHAR(50),@ngay DATE,@soluong INT,@GhiChu NVARCHAR(300),@TGBD TIME,@MaDV INT
AS
BEGIN
	DECLARE @soluongdilam INT
	SELECT @soluongdilam=COUNT(MaQN) FROM dbo.ChiTietDanhSachCongViec WHERE MaCongViec IN(SELECT MaCongViec FROM dbo.NoiDungCongViec WHERE Ngay=@ngay)
	DECLARE @soluongqsdaidoi INT
	SELECT @soluongqsdaidoi=COUNT(MaQN) FROM dbo.QuanNhan WHERE MaChucVu = 3  AND MaDV = @MaDV
	IF((@soluongqsdaidoi-(@soluongdilam+@soluong))>0)
	BEGIN
	    INSERT INTO dbo.NoiDungCongViec
    (
        NoiDung,
        DiaDiem,
        Ngay,
        SoLuong,
        STTDS,
        MaTT,
        GhiChu,
        TGBD,
        MaTC,
        MaDV
    )
    VALUES
    (   @noidung, -- NoiDung - nvarchar(100)
        @diadiem, -- DiaDiem - nvarchar(100)
        @ngay, -- Ngay - date
        @soluong, -- SoLuong - int
        0, -- STTDS - bit
        1, -- MaTT - int
        @GhiChu, -- GhiChu - nvarchar(300)
        @TGBD, -- TGBD - time(7)
        NULL, -- MaTC - int
        @MaDV  -- MaDV - int
        )
	END
    ELSE
	BEGIN
	    PRINT 'khong du quan so de cat'
	END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_ThemLichGac]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_ThemLichGac]
    @ngay DATE,
    @hoi NVARCHAR(50),
    @dap NVARCHAR(50),
    @MaDV INT,
    @NhacNho VARCHAR(200)
AS 
BEGIN
    -- Kiểm tra xem ngày đã tồn tại chưa
    IF NOT EXISTS (SELECT 1 FROM dbo.NoiDungGac WHERE Ngay = @ngay)
    BEGIN
        INSERT INTO NoiDungGac (Ngay, Hoi, Dap, MaDV, NhacNho)
        VALUES (@ngay, @hoi, @dap, @MaDV, @NhacNho);
        PRINT 'Đã thêm dữ liệu thành công';
    END
    ELSE
    BEGIN
        PRINT 'Ngay đa ton tai, khong the them đuoc';
    END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_themtaikhoan]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_themtaikhoan]
@TenTK VARCHAR(50),@Matkhau VARCHAR(50),@MaQN INT,@Maquyen int
AS
BEGIN
    INSERT INTO dbo.TaiKhoan
    (
        TenTK,
        MatKhau,
        MaQN
    )
    VALUES
    (   @TenTK, -- TenTK - nvarchar(50)
        @Matkhau, -- MatKhau - nvarchar(50)
        @MaQN  -- MaQN - int
        )
	DECLARE @matk INT
	SELECT @matk=tk.MaTK FROM dbo.TaiKhoan tk WHERE tk.TenTK=@TenTK AND tk.MatKhau=@Matkhau AND tk.MaQN=@MaQN 
	INSERT INTO dbo.TK_Quyen
	(
	    MaTK,
	    MaQuyen
	)
	VALUES
	(   @matk, -- MaTK - int
	    @Maquyen  -- MaQuyen - int
	    )
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Themuutien]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_Themuutien]
@MaQN INT,@noidunguutien NVARCHAR(50)
AS
BEGIN
    INSERT INTO dbo.UuTien
    (
        MaQN,
        NoiDungUuTien
    )
    VALUES
    (   @MaQN, -- MaQN - int
        @noidunguutien  -- NoiDungUuTien - nvarchar(50)
        )
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tienhanhcongviec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_tienhanhcongviec]
@macv int
AS
BEGIN
    UPDATE dbo.NoiDungCongViec SET MaTT=2 WHERE MaCongViec=@macv
END
GO
/****** Object:  StoredProcedure [dbo].[usp_XoaDanhSachCongViec]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_XoaDanhSachCongViec]
@macv INT
AS
BEGIN
    DELETE dbo.NoiDungCongViec WHERE MaCongViec=@macv
END
GO
/****** Object:  StoredProcedure [dbo].[usp_xoalichgac]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_xoalichgac]
@magac int
AS
BEGIN
    DELETE FROM dbo.ChiTietDanhSachGac WHERE MaGac=@magac
	DELETE FROM dbo.NoiDungGac WHERE MaGac=@magac
END
GO
/****** Object:  StoredProcedure [dbo].[usp_XoaPhanCongCV]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_XoaPhanCongCV]
@MaDV int
AS
BEGIN
	DELETE dbo.NoiDungCongViec WHERE MaDV=@MaDV
END
GO
/****** Object:  StoredProcedure [dbo].[usp_XoaUuTien]    Script Date: 27/12/2023 14:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_XoaUuTien]
@maut int
AS
BEGIN
    DELETE FROM dbo.UuTien WHERE MaUuTien=@maut
END
GO
