CREATE DATABASE IF NOT EXISTS lostandfound;
USE lostandfound;

-- 1. (Account & Security)
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('STUDENT', 'ADMIN') DEFAULT 'STUDENT',
    is_verified BOOLEAN DEFAULT FALSE,
    verification_token VARCHAR(255) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. (Declaring, Validation, Closure, Auto-rules)
CREATE TABLE IF NOT EXISTS items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    description TEXT NULL,
    type ENUM('LOST', 'FOUND') NOT NULL,
    location VARCHAR(255) NULL,
    item_date DATE NOT NULL,
    private_note TEXT NULL, -- Chỉ Admin xem được (dành cho đồ FOUND)
    status ENUM('PENDING', 'VALIDATED', 'TO_CORRECT', 'CLAIMED', 'RECOVERED', 'ARCHIVED', 'DELETED') DEFAULT 'PENDING',
    admin_feedback TEXT NULL, -- Lý do Admin yêu cầu chỉnh sửa (TO_CORRECT)
    delete_reason TEXT NULL, -- Lý do sinh viên xóa bài
    reminder_sent BOOLEAN DEFAULT FALSE, -- Đánh dấu đã gửi mail nhắc sau 10 ngày
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 3. Bảng Item Photos (Lost: 1 ảnh, Found: >= 2 ảnh mặt trước/sau)
CREATE TABLE IF NOT EXISTS item_photos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT NOT NULL,
    photo_url VARCHAR(500) NOT NULL,
    label VARCHAR(50) NULL, -- VD: 'front', 'back', 'main'
    FOREIGN KEY (item_id) REFERENCES items(id) ON DELETE CASCADE
);

-- 4. Bảng Claims (Hỗ trợ nhiều người cùng claim 1 item, Admin hỏi thêm chi tiết, duyệt/từ chối)
CREATE TABLE IF NOT EXISTS claims (
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT NOT NULL,
    claimant_id INT NOT NULL,
    proof_description TEXT NOT NULL,
    admin_question TEXT NULL, -- Admin hỏi thêm khi có nhiều người claim
    claimant_reply TEXT NULL, -- Sinh viên bổ sung mô tả
    rejection_reason TEXT NULL, -- Lý do Admin từ chối claim
    status ENUM('PENDING', 'INFO_REQUESTED', 'APPROVED', 'REJECTED') DEFAULT 'PENDING',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (item_id) REFERENCES items(id) ON DELETE CASCADE,
    FOREIGN KEY (claimant_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Seed tài khoản Admin mặc định (email: admin@univ-pau.fr / mật khẩu: admin_password)
INSERT IGNORE INTO users (id, email, password_hash, role, is_verified)
VALUES (1, 'admin@univ-pau.fr', '$2b$10$f4N643rX8k0L192P591V0e93P3X5N295w2G5.736/e7P4p7/V4Y82', 'ADMIN', TRUE);