CREATE DATABASE qly_tai_khoan;
USE qly_tai_khoan;

CREATE TABLE users (
    username VARCHAR(50) PRIMARY KEY UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    status VARCHAR(20) DEFAULT 'ACTIVE'
);
ALTER TABLE users
ADD CONSTRAINT chk_status
CHECK (status IN ('ACTIVE', 'INACTIVE'));
DROP TABLE users;