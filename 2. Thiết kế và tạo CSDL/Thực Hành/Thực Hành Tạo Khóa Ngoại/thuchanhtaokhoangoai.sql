/*Thực hành tạo khóa ngoại */
create database thuchanhtaokhoangoai;
use thuchanhtaokhoangoai;
CREATE TABLE customers(
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(40),
   address VARCHAR(255),
   email VARCHAR(255)
);

CREATE TABLE orders(
   id INT AUTO_INCREMENT,
   staff VARCHAR(50),
   PRIMARY KEY(id),
   customer_id INT,
   FOREIGN KEY (customer_id) REFERENCES customers(id)
);
insert into customers( name,address,email) values ('quoc','da nang','quocnguyen');
insert into orders(staff,customer_id) value ('quang',22);
