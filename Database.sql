﻿CREATE DATABASE QLTuyenSinh
USE QLTuyenSinh

CREATE TABLE TRUONG
(
	ma_truong varchar(4) primary key,
	ten_truong nvarchar(50)
)
CREATE TABLE NGANH
(
	ma_nganh varchar(20) primary key,
	ten_nganh nvarchar(50)
)
CREATE TABLE PHIEU_DKDT
(
	so_phieu varchar(50) primary key,
	khoi_thi varchar(4),
	ho_va_ten nvarchar(50),
	khu_vuc nvarchar(50),
	nam_tot_nghiep int,
	he_dao_tao nvarchar(3),
	ma_doi_tuong varchar(3),
	dang_ky_thi nvarchar(3),
	ma_truong varchar(4),
	ma_nganh varchar(20),
	ngay_sinh smalldatetime,
	noi_sinh nvarchar(50),
	dia_chi_bao_tin nvarchar(50)
	
)
CREATE TABLE DIEM_CHUAN
(
	ma_nganh varchar(20) Primary Key,
	diem_chuan float
)

CREATE TABLE THI_SINH
(
	so_bao_danh varchar(10) Primary Key,
	ho_ten nvarchar(50),
	ngay_sinh smalldatetime,
	noi_sinh nvarchar(50),
	dia_chi_bao_tin nvarchar(50)
)
CREATE TABLE GIAY_BAO_THI
(
	so_bao_danh varchar(10) Primary Key,
	ngay_thi smalldatetime,
	dia_diem_thi nvarchar(50),
	so_phong_thi varchar(4),
	le_phi_thi money
)
CREATE TABLE KET_QUA_THI
(
	ma_ket_qua varchar(4) Primary Key,
	diem_thi int,
	mon nvarchar(20),
	so_bao_danh varchar(10)
)

CREATE TABLE TUI_CHAM_THI
(
	ma_tui varchar(8) Primary Key,
	ma_mon int
)
CREATE TABLE BAI_THI
(
	so_phach int Primary Key,
	so_bao_danh varchar(10),
	ma_tui varchar(8)
)
CREATE TABLE MON_THI
(
	ma_mon int Primary Key,
	ten_mon nvarchar(10)
)

CREATE TABLE KET_QUA_CHAM_THI
(
	so_phach int Primary Key,
	diem_thi float,
	so_bao_danh varchar (10),
	ma_mon int
)
CREATE TABLE KET_QUA_TUYEN_SINH
(
	so_bao_danh varchar(10) Primary Key,
	ma_nganh varchar(20), 
	tong_diem float,
	trung_tuyen nvarchar(20)
)



--TAO KHOA NGOAI
ALTER TABLE PHIEU_DKDT
ADD CONSTRAINT FK_TRUONG_PDKDT
FOREIGN KEY (ma_truong)
REFERENCES TRUONG(ma_truong)
--
ALTER TABLE PHIEU_DKDT
ADD CONSTRAINT FK_NGANH_PDKDT
FOREIGN KEY (ma_nganh)
REFERENCES NGANH(ma_nganh)
--
ALTER TABLE DIEM_CHUAN
ADD CONSTRAINT FK_NGANH_DIEMCHUAN
FOREIGN KEY (ma_nganh)
REFERENCES NGANH(ma_nganh)
--
ALTER TABLE KET_QUA_TUYEN_SINH
ADD CONSTRAINT FK_NGANH_KQTS
FOREIGN KEY (ma_nganh)
REFERENCES NGANH(ma_nganh)
--
ALTER TABLE KET_QUA_TUYEN_SINH
ADD CONSTRAINT FK_THISINH_KQTS
FOREIGN KEY (so_bao_danh)
REFERENCES THI_SINH(so_bao_danh)
--
ALTER TABLE GIAY_BAO_THI
ADD CONSTRAINT FK_THISINH_GBT
FOREIGN KEY (so_bao_danh)
REFERENCES THI_SINH(so_bao_danh)
--
ALTER TABLE BAI_THI
ADD CONSTRAINT FK_THISINH_BAITHI
FOREIGN KEY (so_bao_danh)
REFERENCES THI_SINH(so_bao_danh)
--
ALTER TABLE BAI_THI
ADD CONSTRAINT FK_TUICHAMTHI_BAITHI
FOREIGN KEY (ma_tui)
REFERENCES TUI_CHAM_THI(ma_tui)
--
ALTER TABLE KET_QUA_THI
ADD CONSTRAINT FK_THISINH_KQT
FOREIGN KEY (so_bao_danh)
REFERENCES THI_SINH(so_bao_danh)
--
ALTER TABLE TUI_CHAM_THI
ADD CONSTRAINT FK_MONTHI_TUICHAMTHI
FOREIGN KEY (ma_mon)
REFERENCES MON_THI(ma_mon)
--
ALTER TABLE KET_QUA_CHAM_THI
ADD CONSTRAINT FK_THISINH_KQCT
FOREIGN KEY (so_bao_danh)
REFERENCES THI_SINH(so_bao_danh)
----
--
ALTER TABLE KET_QUA_CHAM_THI
ADD CONSTRAINT FK_BAITHI_KQCT
FOREIGN KEY (so_phach)
REFERENCES BAI_THI(so_phach)
--
ALTER TABLE KET_QUA_CHAM_THI
ADD CONSTRAINT FK_MONTHI_KQCT
FOREIGN KEY (ma_mon)
REFERENCES MON_THI(ma_mon)



-- BẢNG XÉT XEM CÁC TÚI CHẤM CHI ĐÃ CHẤM HẾT CHƯA
-- MỖI LẦN ADMIN NHẤN NÚT CONFIRM THÌ SẼ CHUYỂN THÀNH TRUE NẾU TRUE HẾT THÌ SẼ CHO HIỂN THỊ BẢNG STATISTIC
create table confirmTui_Cham_Thi(
ma_mon int,
confirm varchar(7)
)

insert into confirmTui_Cham_Thi values(1,'false')
insert into confirmTui_Cham_Thi values(2,'false')
insert into confirmTui_Cham_Thi values(3,'false')
insert into confirmTui_Cham_Thi values(4,'false')
insert into confirmTui_Cham_Thi values(5,'false')
insert into confirmTui_Cham_Thi values(6,'false')
insert into confirmTui_Cham_Thi values(7,'false')
insert into confirmTui_Cham_Thi values(8,'false')
insert into confirmTui_Cham_Thi values(9,'false')


-- BẢNG XÉT XEM AI ĐANG ĐĂNG NHẬP HỆ THỐNG
create table System_Login(
permission varchar(10)
)

-- NẾU CHƯA CÓ DATA THÌ CHỈ INSERT 1 TRONG 3 DÒNG
insert into System_Login values('ADMIN')
insert into System_Login values('USER')
insert into System_Login values('NONE')


-- BẢNG XÉT XEM ĐÃ CONFIRM CÁI ĐĂNG KÍ CHƯA NẾU RỒI THÌ KHI ĐĂNG NHẬP SẼ CHO LUN VÀO GIAO DIỆN MAIN LUN
create table CONFIRM_REGISTER(
confirm varchar(20)
)
insert into CONFIRM_REGISTER values('false')

update CONFIRM_REGISTER
set confirm='false'




	--------*----------
insert into DIEM_CHUAN values('7340122', 22.75)
insert into DIEM_CHUAN values('7480101', 21.75)
insert into DIEM_CHUAN values('7480102', 23.75)
insert into DIEM_CHUAN values('7480103', 19.75)
insert into DIEM_CHUAN values('7480104', 23.75)
insert into DIEM_CHUAN values('7480106', 20.75)
insert into DIEM_CHUAN values('7480109', 23.75)
insert into DIEM_CHUAN values('7480201', 23.75)
insert into DIEM_CHUAN values('7480202', 23.75)
--------*----------
-- khi sửa bất kì giá trị nào trên PHIEU_DKDT thì các bảng THI_SINH, GIAY_BAO_THI,BAI_THI, KET_QUA_CHAM_THI sẽ thay đổi theo
CREATE TRIGGER TRIGGER_UPDATE_PHIEU_DKDT
ON PHIEU_DKDT FOR UPDATE
AS
	DECLARE  @before_HO_VA_TEN nvarchar(50), @before_NGAY_SINH smalldatetime
	DECLARE @HO_VA_TEN NVARCHAR(50),@HE_DAO_TAO NVARCHAR(3),@NAM_TOT_NGHIEP INT,@NGAY_SINH SMALLDATETIME,@NOI_SINH NVARCHAR(50),@DIA_CHI_BAO_TIN NVARCHAR(50)
	
	SELECT @HO_VA_TEN = ho_va_ten from inserted
	select @before_HO_VA_TEN = ho_va_ten from deleted

	select @NGAY_SINH = ngay_sinh from inserted
	select @before_NGAY_SINH = ngay_sinh from deleted

	select @NOI_SINH = noi_sinh from inserted
	select @HE_DAO_TAO = he_dao_tao from inserted
	select @NAM_TOT_NGHIEP = nam_tot_nghiep from inserted
	select @DIA_CHI_BAO_TIN = dia_chi_bao_tin from inserted

	update THI_SINH
	set ho_ten = @HO_VA_TEN , ngay_sinh= @NGAY_SINH, noi_sinh= @NOI_SINH, dia_chi_bao_tin= @DIA_CHI_BAO_TIN
	where ho_ten= @before_HO_VA_TEN and ngay_sinh= @before_NGAY_SINH
	print('change  THI_SINH')

