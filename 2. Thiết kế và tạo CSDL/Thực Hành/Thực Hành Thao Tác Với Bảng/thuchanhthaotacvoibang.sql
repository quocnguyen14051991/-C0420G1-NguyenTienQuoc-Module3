create database thuchanhthaotacvoibang;

/* use trỏ đến database để thao tác */
use thuchanhthaotacvoibang;
/* tạo bảng với lênh create table Ten_table */
create table contacts(
contact_id int(11) not null auto_increment,
last_name varchar(30) not null,
first_name varchar(30),
birthday date,
constraint contacts_pk primary key (contact_id)
);
/* tạo bảng với lênh create table Ten_table */
create table suppliers(
supplier_id int(11) not null auto_increment,
supplier_name varchar(50) ,
account_rep varchar(30) not null default 'TDP',
constraint suppiler_pk primary key (supplier_id)
);
insert into suppliers(supplier_name,account_rep) values (NULL,'rep');

/* xóa bảng với lệnh drop table
*/
drop table contacts;
/* chỉnh sửa bảng với lệnh alter table 
*/
alter table contacts
add last_name1 varchar(40) not null
after contact_id;
/* có thể thêm nhiều cột cùng 1 lúc bằng cách sử dụng  như sau*/
alter table contacts
add last_name2 varchar(50) not null
after last_name1,
add firt_name2 varchar(40) not null
after last_name2;
/* cú pháp chỉnh sửa mô tả của 1 cột
ALTER TABLE table_name
  MODIFY column_name column_definition;
*/
alter table contacts
modify last_name varchar(400);
/* cú pháp chỉnh sửa nhiều cột cùng 1 lúc */
alter table contacts
modify last_name varchar(100),
modify firt_name2 varchar(105) ;

/* xóa 1 cột trong bảng  ALTER TABLE table_name
  DROP COLUMN column_name;
  */
alter table contacts 
drop column last_name;
/* thay đổi tên 1 cột 
ALTER TABLE table_name
  CHANGE COLUMN old_name new_name 
    column_definition
    */
alter table contacts 
change column birthday ngaysinh 
varchar(80) not null;
/* thay đổi tên 1 bảng */
alter table contacts
rename to people;











