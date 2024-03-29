USE [ShopBeautytrend]
GO
/****** Object:  Table [dbo].[HoaDonDat]    Script Date: 23/01/2018 10:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonDat](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NULL,
	[MaKH] [int] NULL,
	[NguoiGui] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
	[Gia] [int] NULL,
	[ChuY] [nvarchar](500) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_HoaDonDat] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuMua]    Script Date: 23/01/2018 10:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMua](
	[MaPM] [int] IDENTITY(1,1) NOT NULL,
	[MaHDD] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_PhieuMua] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 23/01/2018 10:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MaLoai] [int] NULL,
	[MoTa] [nvarchar](500) NULL,
	[Gia] [int] NULL,
	[AnhSP] [nvarchar](100) NULL,
	[TenNguoiDung] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 23/01/2018 10:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheloai] [nvarchar](100) NULL,
	[MaCha] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 23/01/2018 10:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](100) NULL,
	[Anh] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](4000) NULL,
	[NgayDang] [datetime] NULL,
	[status] [int] NULL,
	[MaUser] [int] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 23/01/2018 10:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NULL,
	[passwd] [nvarchar](100) NULL,
	[name] [nvarchar](100) NULL,
	[phone] [int] NULL,
	[address] [nvarchar](200) NULL,
	[create_date] [datetime] NULL,
	[status] [bit] NULL,
	[lv] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAdmin]    Script Date: 23/01/2018 10:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAdmin](
	[MaUser] [int] IDENTITY(1,1) NOT NULL,
	[status] [bit] NULL,
	[email] [nvarchar](100) NULL,
	[passwd] [nvarchar](100) NULL,
	[name] [nvarchar](100) NULL,
	[phone] [int] NULL,
	[address] [nvarchar](200) NULL,
	[lv] [int] NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK_UserAdmin] PRIMARY KEY CLUSTERED 
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[HoaDonDat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDat_user] FOREIGN KEY([MaKH])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[HoaDonDat] CHECK CONSTRAINT [FK_HoaDonDat_user]
GO
ALTER TABLE [dbo].[HoaDonDat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDat_UserAdmin] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[UserAdmin] ([MaUser])
GO
ALTER TABLE [dbo].[HoaDonDat] CHECK CONSTRAINT [FK_HoaDonDat_UserAdmin]
GO
ALTER TABLE [dbo].[PhieuMua]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMua_HoaDonDat] FOREIGN KEY([MaHDD])
REFERENCES [dbo].[HoaDonDat] ([MaHoaDon])
GO
ALTER TABLE [dbo].[PhieuMua] CHECK CONSTRAINT [FK_PhieuMua_HoaDonDat]
GO
ALTER TABLE [dbo].[PhieuMua]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMua_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhieuMua] CHECK CONSTRAINT [FK_PhieuMua_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_TheLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_TheLoai]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_UserAdmin] FOREIGN KEY([MaUser])
REFERENCES [dbo].[UserAdmin] ([MaUser])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_UserAdmin]
GO
