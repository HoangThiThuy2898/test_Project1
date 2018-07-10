drop database if exists ProjectDB;
create database ProjectDB;
use projectDB;

create table users(
userId int auto_increment not null primary key,
userName varchar(255) not null,
pass varchar(255) not null,
phone varchar(20) not null,
address varchar(255), 
dateOfBirth date
);

create table categorys(
categoryId int primary key not null auto_increment,
categoryName varchar(255) not null
);



create table items(
itemId varchar(20) primary key not null,
itemName varchar(255) not null,
quantity int not null,
price decimal(20,2) not null,
categoryId int not null,
description varchar(500),
constraint fk_Items_category foreign key(categoryId) references categorys(categoryId)
);

create table orders(
orderId varchar(20) primary key not null,
itemId varchar(20) not null,
quantity_order int not null,
unit_price decimal not null,
constraint fk_orders_Items foreign key(itemId) references items(itemId)
);

create table bills(
orderId varchar(20) not null,
itemId varchar(20) not null,
userId int not null,
create_date datetime not null default current_timestamp(),
constraint pk_bill primary key(orderId, itemId, userId),
constraint fk_bill_orders foreign key (orderId) references orders(orderId),
constraint fk_bill_items foreign key (itemId) references items(itemId),
constraint fk_bill_users foreign key (userId) references users(userId)
);




