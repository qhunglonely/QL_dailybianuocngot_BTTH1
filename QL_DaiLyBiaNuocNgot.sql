CREATE DATABASE QL_DaiLyBiaNuocNgot

GO
USE QL_DaiLyBiaNuocNgot
GO

CREATE TABLE [dbo].[tb_Calam](
	[maca] [nchar](10) NULL,
	[tenca] [nvarchar](50) NULL
) ON [PRIMARY]


CREATE TABLE [dbo].[tb_Congviec](
	[macv] [nvarchar](10) NOT NULL,
	[tencv] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Congviec] PRIMARY KEY CLUSTERED 
(
	[macv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tb_CTHDB](
	[sohdb] [nvarchar](10) NOT NULL,
	[masp] [nvarchar](10) NOT NULL,
	[soluong] [float] NULL,
	[giamgia] [float] NULL,
	[thanhtien] [float] NULL,
 CONSTRAINT [PK_tb_CTHDB] PRIMARY KEY CLUSTERED 
(
	[sohdb] ASC,
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[tb_CTHDN](
	[sohdn] [nvarchar](50) NOT NULL,
	[masp] [nvarchar](10) NOT NULL,
	[soluong] [float] NULL,
	[dongia] [float] NULL,
	[giamgia] [float] NULL,
	[thanhtien] [float] NULL,
 CONSTRAINT [PK_tb_CTHDN] PRIMARY KEY CLUSTERED 
(
	[sohdn] ASC,
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[tb_Hangsx](
	[mahang] [nvarchar](10) NOT NULL,
	[tenhang] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Hangsx] PRIMARY KEY CLUSTERED 
(
	[mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[tb_HDB](
	[sohdb] [nvarchar](10) NOT NULL,
	[manv] [nvarchar](10) NULL,
	[ngayban] [datetime] NULL,
	[thue] [float] NULL,
	[makhach] [nvarchar](10) NULL,
 CONSTRAINT [PK_tb_HDB] PRIMARY KEY CLUSTERED 
(
	[sohdb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



CREATE TABLE [dbo].[tb_HDN](
	[sohdn] [nvarchar](50) NOT NULL,
	[manv] [nvarchar](10) NULL,
	[ngaynhap] [datetime] NULL,
	[mancc] [nvarchar](10) NULL,
 CONSTRAINT [PK_tb_HDN] PRIMARY KEY CLUSTERED 
(
	[sohdn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tb_Khachhang](
	[makhach] [nvarchar](10) NOT NULL,
	[tenkhach] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[dienthoai] [nvarchar](10) NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[makhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tb_NCC](
	[mancc] [nvarchar](10) NOT NULL,
	[tenncc] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[dienthoai] [nvarchar](20) NULL,
 CONSTRAINT [PK_tb_NCC] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[tb_Nhanvien](
	[manv] [nvarchar](10) NOT NULL,
	[tennv] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](10) NULL,
	[ngaysinh] [datetime] NULL,
	[dienthoai] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[maca] [nvarchar](10) NULL,
	[macv] [nvarchar](10) NULL,
 CONSTRAINT [PK_tb_Nhanvien1] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[tb_NoiSX](
	[manoisx] [nvarchar](10) NOT NULL,
	[tennoisx] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_NoiSX] PRIMARY KEY CLUSTERED 
(
	[manoisx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tb_Sanpham](
	[masp] [nvarchar](10) NOT NULL,
	[tensp] [nvarchar](50) NULL,
	[mahang] [nvarchar](10) NULL,
	[manoisx] [nvarchar](50) NULL,
	[dongianhap] [float] NULL,
	[dongiaban] [float] NULL,
	[ghichu] [nvarchar](50) NULL,
	[soluong] [float] NULL,
	[hansd] [datetime] NULL,
 CONSTRAINT [PK_tb_Sanpham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[tb_User](
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Quyen] [int] NULL
) ON [PRIMARY]





GO
ALTER TABLE [dbo].[tb_CTHDB]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHDB_tb_HDB] FOREIGN KEY([sohdb])
REFERENCES [dbo].[tb_HDB] ([sohdb])
GO
ALTER TABLE [dbo].[tb_CTHDB] CHECK CONSTRAINT [FK_tb_CTHDB_tb_HDB]
GO
ALTER TABLE [dbo].[tb_CTHDB]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHDB_tb_Sanpham] FOREIGN KEY([masp])
REFERENCES [dbo].[tb_Sanpham] ([masp])
GO
ALTER TABLE [dbo].[tb_CTHDB] CHECK CONSTRAINT [FK_tb_CTHDB_tb_Sanpham]
GO
ALTER TABLE [dbo].[tb_CTHDN]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHDN_tb_HDN] FOREIGN KEY([sohdn])
REFERENCES [dbo].[tb_HDN] ([sohdn])
GO
ALTER TABLE [dbo].[tb_CTHDN] CHECK CONSTRAINT [FK_tb_CTHDN_tb_HDN]
GO
ALTER TABLE [dbo].[tb_CTHDN]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHDN_tb_Sanpham] FOREIGN KEY([masp])
REFERENCES [dbo].[tb_Sanpham] ([masp])
GO
ALTER TABLE [dbo].[tb_CTHDN] CHECK CONSTRAINT [FK_tb_CTHDN_tb_Sanpham]
GO
ALTER TABLE [dbo].[tb_HDB]  WITH CHECK ADD  CONSTRAINT [FK_tb_HDB_tb_Khachhang] FOREIGN KEY([makhach])
REFERENCES [dbo].[tb_Khachhang] ([makhach])
GO
ALTER TABLE [dbo].[tb_HDB] CHECK CONSTRAINT [FK_tb_HDB_tb_Khachhang]
GO
ALTER TABLE [dbo].[tb_HDN]  WITH CHECK ADD  CONSTRAINT [FK_tb_HDN_tb_NCC] FOREIGN KEY([mancc])
REFERENCES [dbo].[tb_NCC] ([mancc])
GO
ALTER TABLE [dbo].[tb_HDN] CHECK CONSTRAINT [FK_tb_HDN_tb_NCC]
GO
ALTER TABLE [dbo].[tb_Nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tb_Nhanvien_tb_Congviec] FOREIGN KEY([macv])
REFERENCES [dbo].[tb_Congviec] ([macv])
GO
ALTER TABLE [dbo].[tb_Nhanvien] CHECK CONSTRAINT [FK_tb_Nhanvien_tb_Congviec]
GO
USE [master]
GO
ALTER DATABASE [QL_DaiLyBiaNuocNgot] SET  READ_WRITE 
GO


CREATE PROCEDURE [dbo].[bao_cao]
@tu datetime, @den datetime
AS
SELECT b.sohdb, hdb.manv, hdb.makhach,hdb.ngayban, b.masp, b.soluong, b.thanhtien 
FROM tb_CTHDB b, tb_HDB hdb 
WHERE b.sohdb = hdb.sohdb and hdb.ngayban between @tu and @den
GO

CREATE PROC [dbo].[BCKHANG]
@tu datetime, 
@den datetime
AS
SELECT TOP 50 kh.makhach, kh.tenkhach, kh.diachi, kh.dienthoai, sum(hdb.thanhtien) as Tongchi
FROM tb_Khachhang kh, tb_CTHDB hdb, tb_HDB b 
WHERE kh.makhach = b.makhach and b.sohdb = hdb.sohdb and b.ngayban between @tu and @den
GROUP BY kh.makhach, kh.tenkhach, kh.diachi, kh.dienthoai
ORDER BY sum(hdb.thanhtien) DESC
GO

CREATE PROC [dbo].[BCNCCAP]
@mancc nvarchar(10),
@tu nvarchar(20), 
@den nvarchar(20)
AS
SELECT TOP 50 n.mancc as N'Mã NCC', n.tenncc as N'Tên NCC', n.dienthoai as N'SĐT', n.diachi as'Địa chỉ',hdn.masp as N'Mã SP', hdn.soluong as N'Số lượng', sum(hdn.thanhtien) as N'Tổng tiền'
FROM tb_NCC n, tb_CTHDN hdn, tb_HDN hn
WHERE n.mancc = hn.mancc and hn.sohdn = hdn.sohdn and n.mancc = @mancc and hn.ngaynhap between @tu and @den
GROUP BY n.mancc, n.tenncc, n.diachi, n.dienthoai, hdn.masp, hdn.soluong

GO


CREATE PROC [dbo].[QUYENTC]
@user nvarchar(50)
AS
SELECT Quyen
FROM tb_User
WHERE Username = @user

GO


CREATE PROCEDURE [dbo].[ReportTheoNgay] @ngay1 datetime, @ngay2 datetime
AS
BEGIN
	SELECT cthd.sohdn, cthd.masp, hd.manv, hd.mancc, cthd.soluong, cthd.giamgia, cthd.thanhtien
          from (tb_HDN hd inner join tb_CTHDN cthd on hd.sohdn = cthd.sohdn)
		  where hd.ngaynhap between @ngay1 and @ngay2
END

GO

Create function [dbo].[func_NextID](@lastUserID varchar(6),@prefix varchar(3),@size int)
  returns varchar(6)
as
    BEGIN
        IF(@lastUserID = '')
            set @lastUserID = @prefix + REPLICATE (0,@size - LEN(@prefix))
        declare @num_nextUserID int, @nextUserID varchar(6)
        set @lastUserID = LTRIM(RTRIM(@lastUserID))
        set @num_nextUserID = replace(@lastUserID,@prefix,'') + 1
        set @size = @size - len(@prefix)
        set @nextUserID = @prefix + REPLICATE (0,@size - LEN(@prefix))
        set @nextUserID = @prefix + RIGHT(REPLICATE(0, @size) + CONVERT (VARCHAR(MAX), @num_nextUserID), @size)
        return @nextUserID
    END

GO