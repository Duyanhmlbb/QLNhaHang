use QLNhaHang;
go
--cau1: Hiển thị tất cả thông tin các món ăn có giá trên 40.000 VNĐ:
SELECT *
FROM MonAn
WHERE DonGia > 40000;
--cau2: Lấy danh sách tất cả khách hàng đã đăng ký sau ngày 01/01/2025:
SELECT *
FROM KhachHang
WHERE NgayDangKy > '2025-01-01';
--cau3:Hiển thị tên bàn và trạng thái của các bàn hiện đang “trống”:
SELECT ViTri, TrangThai
FROM BanAn
WHERE TrangThai = N'trống';
--cau4:Tìm tất cả đơn hàng có tổng tiền lớn hơn hoặc bằng 100.000:
SELECT *
FROM DonHang
WHERE TongTien >= 100000;
--cau5:Đếm số lượng món ăn theo từng loại món:
SELECT LoaiMon, COUNT(*) AS SoLuongMon
FROM MonAn
GROUP BY LoaiMon;
--cau6:Tính tổng điểm tích lũy của tất cả khách hàng:
SELECT SUM(DiemTichLuy) AS TongDiemTichLuy
FROM KhachHang;
--cau7Tìm đơn giá cao nhất và thấp nhất của các món ăn:
SELECT MAX(DonGia) AS GiaCaoNhat, MIN(DonGia) AS GiaThapNhat
FROM MonAn;
--cau8Hiển thị danh sách khách hàng và sắp xếp theo số điểm tích lũy giảm dần:
SELECT HoTen, DiemTichLuy
FROM KhachHang
ORDER BY DiemTichLuy DESC;
--cau9Tìm tên khách hàng và tổng số tiền họ đã mua , chỉ lấy những khách tổng tiền > 100.000:
SELECT KH.HoTen, SUM(DH.TongTien) AS TongChiTieu
FROM DonHang DH
JOIN KhachHang KH ON DH.MaKH = KH.MaKH
GROUP BY KH.HoTen
HAVING SUM(DH.TongTien) > 100000;
--cau10Hiển thị danh sách món ăn và tổng số lượng đã bán của từng món, sắp xếp theo số lượng bán giảm dần:
SELECT MA.TenMon, SUM(CT.SoLuong) AS TongSoLuongBan
FROM ChiTietDonHang CT
JOIN MonAn MA ON CT.MaMonAn = MA.MaMonAn
GROUP BY MA.TenMon
ORDER BY TongSoLuongBan DESC;
--cau11: Liệt kê tất cả món ăn với loại món và đơn giá, sắp xếp theo giá giảm dần
SELECT TenMon, LoaiMon, DonGia
FROM MONAN
ORDER BY DonGia DESC;
--câu12)Tìm tổng số đơn hàng mỗi nhân viên đã phục vụ:
SELECT N.HoTen, COUNT(D.MaDonHang) AS SoLuongDonHang
FROM NHANVIEN N
LEFT JOIN DONHANG D ON N.MaNV = D.MaNV
GROUP BY N.HoTen; 
--13)Liệt kê các bàn được đặt vào một ngày cụ thể (ví dụ: 03/07/2025):
SELECT B.MaBan, B.ViTri, D.NgayGioDat
FROM BANAN B
JOIN DATBAN D ON B.MaBan = D.MaBan
WHERE CAST(D.NgayGioDat AS DATE) = '2025-07-03';
--14)Tìm tổng doanh thu theo từng loại hình phục vụ (tại chỗ, mang về, giao hàng):
SELECT KieuPhucVu, SUM(TongTien) AS TongDoanhThu
FROM DONHANG
GROUP BY KieuPhucVu;
15)Liệt kê khách hàng có ghi chú đặc biệt (như topping hoặc yêu cầu riêng):
SELECT DISTINCT K.HoTen, C.GhiChu
FROM KHACHHANG K
JOIN DONHANG D ON K.MaKH = D.MaKH
JOIN CHITIETDONHANG C ON D.MaDonHang = C.MaDonHang
WHERE C.GhiChu IS NOT NULL;
--16)Liệt kê nhân viên phục vụ các đơn hàng có tổng tiền trên 500.000 VNĐ:
SELECT N.HoTen, SUM(D.TongTien) AS TongTienPhucVu
FROM NHANVIEN N
JOIN DONHANG D ON N.MaNV = D.MaNV
GROUP BY N.HoTen
HAVING SUM(D.TongTien) > 500000;
--17Tìm các món ăn chưa từng được gọi:
SELECT M.TenMon
FROM MONAN M
LEFT JOIN CHITIETDONHANG C ON M.MaMonAn = C.MaMonAn
WHERE C.MaMonAn IS NULL;
