CREATE DATABASE shop CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';
GRANT ALL PRIVILEGES ON shop.* TO 'user'@'localhost';

USE shop;

CREATE TABLE goods (id INT AUTO_INCREMENT PRIMARY KEY, title CHAR(128) CHARSET utf8) ENGINE=InnoDB DEFAULT CHARSET utf8;
INSERT INTO goods (title) VALUES ('Крем'), ('Шампунь'), ('Носки');

CREATE TABLE clients (id INT AUTO_INCREMENT PRIMARY KEY, name CHAR(128) CHARSET utf8) ENGINE=InnoDB DEFAULT CHARSET utf8;
INSERT INTO clients (name) VALUES ('Иванов'), ('Петров'), ('Сидоров');

CREATE TABLE orders (id INT AUTO_INCREMENT PRIMARY KEY, client_id INT, goods_id INT) ENGINE=InnoDB DEFAULT CHARSET utf8;
INSERT INTO orders (client_id, goods_id) VALUES ('1', '2'), ('2', '1'), ('3', '3');