CREATE DATABASE qly_thu_vien;
USE qly_thu_vien;

CREATE TABLE books(
ma_sach INT PRIMARY KEY,
ten_sach VARCHAR(100) NOT NULL);
CREATE TABLE readers(
ma_doc_gia INT PRIMARY KEY,
ten_doc_gia VARCHAR(100) NOT NULL,
ngay_sinh DATE NOT NULL);
CREATE TABLE borrowing(
ma_doc_gia INT PRIMARY KEY,
ma_sach INT NOT NULL,
ngay_muon DATE NOT NULL,
ngay_tra DATE NOT NULL);