use master;
go
if db_id('QLNhaHang') is not null
begin
    alter database QLNhaHang set single_user with rollback immediate;
    drop database QLNhaHang;
end
CREATE DATABASE QLNhaHang;
go
use QLNhaHang;
go
-- Tạo bảng MonAn
create table MonAn (
    MaMonAn int primary key,
    TenMon nvarchar(100) not null,
    LoaiMon nvarchar(50) not null,
    DonViTinh nvarchar(20) not null,
    DonGia int not null check (DonGia > 0),
    TinhTrang nvarchar(20) not null
);
go
-- Tạo bảng BanAn
create table BanAn (
    MaBan int primary key,
    ViTri nvarchar(50) not null,
    SoLuongGhe int not null,
    TrangThai nvarchar(20) not null
);
go
-- Tạo bảng KhachHang
create table KhachHang (
    MaKH int primary key,
    HoTen nvarchar(100) not null,
    SoDienThoai varchar(15) not null,
    DiaChi nvarchar(200) null,
    NgayDangKy date not null,
    DiemTichLuy int check (DiemTichLuy >= 0)
);
go
-- Tạo bảng NhanVien
create table NhanVien (
    MaNV int primary key,
    HoTen nvarchar(100) not null,
    GioiTinh nvarchar(10) check (GioiTinh in (N'Nam', N'Nữ')),
    NgaySinh date not null,
    SoDienThoai varchar(15) not null
);
go
-- Tạo bảng DonHang
create table DonHang (
    MaDonHang int primary key,
    NgayGioLap datetime not null,
    TongTien int not null check (TongTien >= 0),
    KieuPhucVu nvarchar(20) not null,
    MaKH int foreign key references KhachHang(MaKH),
    MaNV int foreign key references NhanVien(MaNV)
);
go
-- Tạo bảng ChiTietDonHang
create table ChiTietDonHang (
    MaDonHang int,
    MaMonAn int,
    SoLuong int not null check (SoLuong > 0),
    DonGia int not null,
    ThanhTien int not null,
    GhiChu nvarchar(100) null,
    primary key (MaDonHang, MaMonAn),
    foreign key (MaDonHang) references DonHang(MaDonHang),
    foreign key (MaMonAn) references MonAn(MaMonAn)
);
go
-- Tạo bảng DatBan
create table DatBan (
    MaDatBan int primary key,
    MaKH int foreign key references KhachHang(MaKH),
    MaBan int foreign key references BanAn(MaBan),
    NgayGioDat datetime not null,
    GhiChu nvarchar(100) null
);
go
-- Tạo bảng BanDonHang
create table BanDonHang (
    MaBan int,
    MaDonHang int,
    primary key (MaBan, MaDonHang),
    foreign key (MaBan) references BanAn(MaBan),
    foreign key (MaDonHang) references DonHang(MaDonHang)
);
go
-- Tạo bảng BaoCaoDoanhThu
create table BaoCaoDoanhThu (
    MaBaoCao int primary key,
    MaMonAn int foreign key references MonAn(MaMonAn),
    ThoiGianBaoCao date not null,
    SoLuongBan int not null check (SoLuongBan >= 0),
    TongDoanhThu int not null check (TongDoanhThu >= 0)
);
go
