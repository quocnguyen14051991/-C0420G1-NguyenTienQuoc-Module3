/* tạo database với tên thuchanhtaokhaochinh*/
create database thuchanhtaokhoachinh;
/* tạo table với tên là users */
use thuchanhtaokhoachinh;
create table users(
user_id int auto_increment primary key,
user_name varchar(20),
passwords varchar(255),
email varchar(40)
);
/* tạo table với tên roles */
use thuchanhtaokhoachinh;
create table roles (
roles_id int auto_increment,
role_name varchar(50),
primary key(roles_id)
);
/*tạo khóa chính tổ hợp dựa trên nhiều cột của bảng */
use thuchanhtaokhoachinh;
create table userroles(
user_id int  not null,
roles_id int  not null,
primary key(user_id,roles_id) ,
foreign key(user_id) references users(user_id),
foreign key(roles_id) references roles(roles_id)
);
drop database thuchanhtaokhoachinh
/*tạo khóa chính sau khi thay đổi cấu trúc bảng với cú pháp
ALTER TABLE table_name
    ADD PRIMARY KEY(primary_key_column)
*/
