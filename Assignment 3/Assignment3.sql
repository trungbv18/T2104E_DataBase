create table KetQuaThi(
	DiemThi float,
	KetQua char(20),
	ID int primary key
);
create table LopHoc(
	TenLopHoc varchar(255),
	MaLop varchar(255) primary key,
	PhongHoc char(20)
);
create table MonHoc(
	TenMon varchar(255),
	MaMon varchar(255) primary key,
	MonHocKQ int foreign key references KetQuaThi(ID)
);
create table SinhVien(
	TenSinhVien varchar(255),
	MaSinhVien varchar(255) primary key,
	NgaySinh date,
	SinhVienLH varchar(255) foreign key references LopHoc(MaLop),
	SinhVienKQ int foreign key references KetQuaThi(ID)
);
create table SinhVienMonHoc(
	MaSinhVien varchar(255) foreign key references SinhVien(MaSinhVien),
	MaMon varchar(255) foreign key references MonHoc(MaMon)
);
