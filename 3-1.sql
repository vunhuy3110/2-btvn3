CREATE DATABASE qly_sinh_vien;
USE qly_sinh_vien;

CREATE TABLE classes(
ma_lop INT PRIMARY KEY,
ten_lop VARCHAR(100) NOT NULL);
CREATE TABLE students(
ma_hoc_sinh INT PRIMARY KEY,
ten_hoc_sinh VARCHAR(100) NOT NULL,
ngay_sinh DATE NOT NULL,
ma_lop INT NOT NULL,
FOREIGN KEY (ma_lop) REFERENCES classes(ma_lop));