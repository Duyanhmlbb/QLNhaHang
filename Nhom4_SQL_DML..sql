--Chèn
USE QLNhaHang;
GO
-- 1️ MonAn
INSERT INTO MonAn VALUES (1, N'Phở Bò', N'Món chính', N'Tô', 50000, N'còn bán');
INSERT INTO MonAn VALUES (2, N'Cơm Gà', N'Món chính', N'Đĩa', 45000, N'còn bán');
INSERT INTO MonAn VALUES (3, N'Nước Cam', N'Đồ uống', N'Ly', 25000, N'còn bán');
INSERT INTO MonAn VALUES (4, N'Bún Chả', N'Món chính', N'Tô', 55000, N'còn bán');
INSERT INTO MonAn VALUES (5, N'CocaCola', N'Đồ uống', N'Lon', 15000, N'còn bán');
GO
-- 2️BanAn
INSERT INTO BanAn VALUES (1, N'Tầng 1 - Cửa sổ', 4, N'trống');
INSERT INTO BanAn VALUES (2, N'Tầng 1 - Trung tâm', 6, N'đã đặt');
INSERT INTO BanAn VALUES (3, N'Tầng 2 - Góc', 2, N'trống');
INSERT INTO BanAn VALUES (4, N'Tầng 2 - Trung tâm', 4, N'đang phục vụ');
INSERT INTO BanAn VALUES (5, N'Sân vườn', 8, N'trống');
GO
-- 3️ KhachHang
INSERT INTO KhachHang VALUES (1, N'Phạm Duy Anh', '0977032874', N'Thái Bình', '2006-11-21', 2000);
INSERT INTO KhachHang VALUES (2, N'Lê Văn Hùng', '0912345678', N'Hà Nội', '2024-02-15', 1500);
INSERT INTO KhachHang VALUES (3, N'Trần Thị Mai', '0912456789', N'Hải Phòng', '2024-03-10', 800);
INSERT INTO KhachHang VALUES (4, N'Nguyễn Văn Minh', '0987654321', N'Đà Nẵng', '2025-05-01', 1000);
INSERT INTO KhachHang VALUES (5, N'Hoàng Anh Tuấn', '0909090909', N'HCM', '2025-06-01', 500);
GO
-- 4️NhanVien
INSERT INTO NhanVien VALUES (1, N'Nguyễn Văn A', N'Nam', '1995-05-10', '0911111111');
INSERT INTO NhanVien VALUES (2, N'Trần Thị B', N'Nữ', '1993-08-22', '0922222222');
INSERT INTO NhanVien VALUES (3, N'Lê Minh C', N'Nam', '1990-02-15', '0933333333');
INSERT INTO NhanVien VALUES (4, N'Phạm Thị D', N'Nữ', '1998-10-30', '0944444444');
INSERT INTO NhanVien VALUES (5, N'Hồ Quang E', N'Nam', '1992-06-12', '0955555555');
GO
-- 5️DonHang
INSERT INTO DonHang VALUES (1, '2025-06-25 12:00', 100000, N'tại chỗ', 1, 1);
INSERT INTO DonHang VALUES (2, '2025-06-26 18:30', 85000, N'mang về', 2, 2);
INSERT INTO DonHang VALUES (3, '2025-06-27 11:00', 130000, N'giao hàng', 3, 3);
INSERT INTO DonHang VALUES (4, '2025-06-28 19:00', 75000, N'tại chỗ', 4, 4);
INSERT INTO DonHang VALUES (5, '2025-06-29 13:00', 155000, N'mang về', 5, 5);
GO
-- 6️ChiTietDonHang
INSERT INTO ChiTietDonHang VALUES (1, 1, 2, 50000, 100000, N'không hành');
INSERT INTO ChiTietDonHang VALUES (2, 2, 1, 45000, 45000, N'không cay');
INSERT INTO ChiTietDonHang VALUES (3, 3, 3, 25000, 75000, N'thêm đá');
INSERT INTO ChiTietDonHang VALUES (4, 4, 2, 55000, 110000, N'thêm rau');
INSERT INTO ChiTietDonHang VALUES (5, 5, 1, 15000, 15000, N'không đá');
GO
-- 7️DatBan
INSERT INTO DatBan VALUES (1, 1, 1, '2025-06-25 17:00', N'gần cửa sổ');
INSERT INTO DatBan VALUES (2, 2, 2, '2025-06-26 18:00', N'ghế trẻ em');
INSERT INTO DatBan VALUES (3, 3, 3, '2025-06-27 12:00', N'góc riêng tư');
INSERT INTO DatBan VALUES (4, 4, 4, '2025-06-28 19:00', N'cạnh sân vườn');
INSERT INTO DatBan VALUES (5, 5, 5, '2025-06-29 20:00', N'tầng 2');
GO
-- 8️BanDonHang
INSERT INTO BanDonHang VALUES (1,1);
INSERT INTO BanDonHang VALUES (2,2);
INSERT INTO BanDonHang VALUES (3,3);
INSERT INTO BanDonHang VALUES (4,4);
INSERT INTO BanDonHang VALUES (5,5);
GO
-- 9️ BaoCaoDoanhThu
INSERT INTO BaoCaoDoanhThu VALUES (1,1,'2025-06-25',10,500000);
INSERT INTO BaoCaoDoanhThu VALUES (2,2,'2025-06-26',5,225000);
INSERT INTO BaoCaoDoanhThu VALUES (3,3,'2025-06-27',7,175000);
INSERT INTO BaoCaoDoanhThu VALUES (4,4,'2025-06-28',6,330000);
INSERT INTO BaoCaoDoanhThu VALUES (5,5,'2025-06-29',8,120000);
GO
--Sửa(update)
USE QLNhaHang;
GO
-- 1️ Cập nhật bảng MonAn
UPDATE MonAn
SET DonGia = 60000
WHERE MaMonAn = 1;
UPDATE MonAn
SET TinhTrang = N'ngừng phục vụ'
WHERE MaMonAn = 3;
UPDATE MonAn
SET TenMon = N'Cơm Gà Xối Mỡ'
WHERE MaMonAn = 2;
GO
-- 2️ Cập nhật bảng BanAn
UPDATE BanAn
SET TrangThai = N'đang phục vụ'
WHERE MaBan = 1;
UPDATE BanAn
SET SoLuongGhe = 5
WHERE MaBan = 2;
UPDATE BanAn
SET ViTri = N'Sân thượng'
WHERE MaBan = 5;
Go
-- 3️ Cập nhật bảng KhachHang
UPDATE KhachHang
SET DiemTichLuy = 3000
WHERE MaKH = 1;
UPDATE KhachHang
SET DiaChi = N'Hà Nam'
WHERE MaKH = 3;
UPDATE KhachHang
SET HoTen = N'Lê Hoài An'
WHERE MaKH = 5;
GO
-- 4️ Cập nhật bảng NhanVien
UPDATE NhanVien
SET SoDienThoai = '0999999999'
WHERE MaNV = 1;
UPDATE NhanVien
SET GioiTinh = N'Nam'
WHERE MaNV = 2;
UPDATE NhanVien
SET HoTen = N'Lê Minh Quang'
WHERE MaNV = 3;
GO
-- 5️ Cập nhật bảng DonHang
UPDATE DonHang
SET KieuPhucVu = N'giao hàng'
WHERE MaDonHang = 3;
UPDATE DonHang
SET TongTien = 120000
WHERE MaDonHang = 2;
UPDATE DonHang
SET MaNV = 5
WHERE MaDonHang = 1;
GO
-- 6️ Cập nhật bảng ChiTietDonHang
UPDATE ChiTietDonHang
SET SoLuong = 3
WHERE MaDonHang = 1 AND MaMonAn = 1;
UPDATE ChiTietDonHang
SET GhiChu = N'không hành, ít nước'
WHERE MaDonHang = 2 AND MaMonAn = 2;
UPDATE ChiTietDonHang
SET DonGia = 30000
WHERE MaDonHang = 3 AND MaMonAn = 3;
GO
-- 7️ Cập nhật bảng DatBan
UPDATE DatBan
SET GhiChu = N'không gian yên tĩnh'
WHERE MaDatBan = 1;
UPDATE DatBan
SET MaBan = 5
WHERE MaDatBan = 2;
UPDATE DatBan
SET NgayGioDat = '2025-06-30 19:00'
WHERE MaDatBan = 4;
GO
-- 8️Cập nhật bảng BanDonHang
UPDATE BanDonHang
SET MaBan = 3
WHERE MaBan = 2 AND MaDonHang = 2;
UPDATE BanDonHang
SET MaDonHang = 4
WHERE MaBan = 4 AND MaDonHang = 4;
UPDATE BanDonHang
SET MaBan = 1
WHERE MaBan = 5 AND MaDonHang = 5;
GO
-- 9️Cập nhật bảng BaoCaoDoanhThu
UPDATE BaoCaoDoanhThu
SET SoLuongBan = 25
WHERE MaBaoCao = 1;
UPDATE BaoCaoDoanhThu
SET TongDoanhThu = 600000
WHERE MaBaoCao = 2;
UPDATE BaoCaoDoanhThu
SET ThoiGianBaoCao = '2025-06-30'
WHERE MaBaoCao = 3;
GO
--Xoá(delete)
USE QLNhaHang;
GO
-- 1️ XÓA ChiTietDonHang 
DELETE FROM ChiTietDonHang WHERE MaDonHang = 5 AND MaMonAn = 5;
DELETE FROM ChiTietDonHang WHERE MaDonHang = 4 AND MaMonAn = 4;
DELETE FROM ChiTietDonHang WHERE MaDonHang = 3 AND MaMonAn = 3;
GO
-- 2️ XÓA BanDonHang 
DELETE FROM BanDonHang WHERE MaDonHang = 5 AND MaBan = 5;
DELETE FROM BanDonHang WHERE MaDonHang = 4 AND MaBan = 4;
DELETE FROM BanDonHang WHERE MaDonHang = 3 AND MaBan = 3;
GO
-- 3️ XÓA DonHang 
DELETE FROM DonHang WHERE MaDonHang = 5;
DELETE FROM DonHang WHERE MaDonHang = 4;
DELETE FROM DonHang WHERE MaDonHang = 3;
GO
-- 4️ XÓA DatBan 
DELETE FROM DatBan WHERE MaDatBan = 5;
DELETE FROM DatBan WHERE MaDatBan = 4;
DELETE FROM DatBan WHERE MaDatBan = 3;
GO
-- 5️ XÓA BaoCaoDoanhThu 
DELETE FROM BaoCaoDoanhThu WHERE MaBaoCao = 5;
DELETE FROM BaoCaoDoanhThu WHERE MaBaoCao = 4;
DELETE FROM BaoCaoDoanhThu WHERE MaBaoCao = 3;
GO
-- 6️XÓA KhachHang
DELETE FROM KhachHang WHERE MaKH = 5;
DELETE FROM KhachHang WHERE MaKH = 4;
DELETE FROM KhachHang WHERE MaKH = 3;
GO
-- 7️XÓA NhanVien 
DELETE FROM NhanVien WHERE MaNV = 5;
DELETE FROM NhanVien WHERE MaNV = 4;
DELETE FROM NhanVien WHERE MaNV = 3;
GO
-- 8️ XÓA BanAn 
DELETE FROM BanAn WHERE MaBan = 5;
DELETE FROM BanAn WHERE MaBan = 4;
DELETE FROM BanAn WHERE MaBan = 3;
GO
-- 9 XÓA MonAn 
DELETE FROM MonAn WHERE MaMonAn = 5;
DELETE FROM MonAn WHERE MaMonAn = 4;
DELETE FROM MonAn WHERE MaMonAn = 3;
GO