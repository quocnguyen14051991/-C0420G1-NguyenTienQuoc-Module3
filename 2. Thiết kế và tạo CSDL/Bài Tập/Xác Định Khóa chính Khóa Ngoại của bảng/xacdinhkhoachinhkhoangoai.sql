create database bank_management;
use bank_management;

create table Customer(
customer_number int primary key not null unique,
full_name varchar(40),
address varchar(40),
email varchar(40),
phone  int(10)
);
create table TypeAcount(
idAccount int not null unique primary key,
`name` varchar(40)
);
create table Accounts(
account_number int primary key not null unique,
account_type  varchar(40),
`date` datetime,
balance double,
id_customer int,
id_typeOfAccount int,
foreign key(id_customer) references Customer(customer_number),
foreign key(id_typeOfAccount) references TypeAcount(idAccount)
);

create table Transactions (
tran_number int primary key not null unique,
account_number int,
`date` datetime,
number_account int,
amounts double,
descriptions varchar(100) ,
foreign key(number_account) references Accounts(account_number)
);





