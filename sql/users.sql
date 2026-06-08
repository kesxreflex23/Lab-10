USE books_api;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(150) NOT NULL,
 email VARCHAR(190) NOT NULL UNIQUE,
 password_hash VARCHAR(255) NOT NULL,
 role ENUM('member','admin') NOT NULL DEFAULT 'member',
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
 ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO users (name, email, password_hash, role) VALUES
 ('Demo Admin', 'admin@books.test', '$2y$10$Wg3jJdY00ZJ6ePWa2GLPOe1.DSZ9wzaUhY5PaJN804mqlNXZ1dTA', 'admin'),
 ('Demo Member', 'member@books.test', '$2y$10$Wg3jJdY00ZJ6ePWa2GLPOe1.DSZ9wzaUhY5PaJN804mqlNXZ1dTA', 'member');