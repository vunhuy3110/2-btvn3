CREATE DATABASE qly_don_hang;
USE qly_don_hang;

CREATE TABLE orders (
    ma_dat_hang INT PRIMARY KEY,
    ngay_dat_hang DATE NOT NULL
);

CREATE TABLE products (
    ma_san_pham INT PRIMARY KEY,
    ten_san_pham VARCHAR(100) NOT NULL,
    gia_san_pham DECIMAL(10,2) NOT NULL
);

CREATE TABLE order_items (
    ma_dat_hang INT PRIMARY KEY,
    ma_san_pham INT PRIMARY KEY,
    so_luong INT NOT NULL,
    FOREIGN KEY (ma_dat_hang)
        REFERENCES orders(ma_dat_hang),

    FOREIGN KEY (ma_san_pham)
        REFERENCES products(ma_san_pham)
);