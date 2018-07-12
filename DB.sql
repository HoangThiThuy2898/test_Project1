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

insert into categorys(categoryName) value ('thời trang');
insert into categorys(categoryName) value ('sức khỏe - mỹ phẩm');
insert into categorys(categoryName) value ('văn phòng phẩm');
insert into categorys(categoryName) value ('phụ kiện - đồ chơi');
insert into categorys(categoryName) value ('máy tính - điện toại - phụ kiện số');
insert into categorys(categoryName) value ('đồ nội thất - điện gia dụng');
insert into categorys(categoryName) value ('phương tiện - thể thao');

select * from categorys;



create table items(
itemId varchar(20) primary key not null,
itemName varchar(255) not null,
quantity int not null,
price decimal(20,3) not null,
categoryId int not null,
constraint fk_Items_category foreign key(categoryId) references categorys(categoryId)
);

insert into items(itemId, itemName, quantity, price, categoryId)
value ('001g1', 'áo ống ren', 7, 40.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('002g1', 'áo ba lỗ kèm lót - B70', 14, 52.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('003g1', 'áo hai dây nữ đủ màu', 286, 19.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('004g1', 'áo sơ mi nam trơn', 32, 170.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('005g1', 'đầm maxi chấm bi', 380, 265.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('006g1', 'áo khoác dù loca people', 9, 88.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('007g1', 'áo khoác jean nữ', 249, 289.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('008g1', 'Quần short kaki', 97, 209.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('009g1', 'Quần kaki trung niên', 19, 150.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('010g1', 'Túi xách du lịch loại lớn', 137, 89.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('011g1', 'Ba lô KiTy Bags - 1008', 60, 89.000, 1);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('012g1', 'chân váy xòe dài phối túi', 32, 260.000, 1);

insert into items(itemId, itemName, quantity, price, categoryId)
value ('001g2', 'Vòng Đeo tay Theo Dõi Sức Khỏe QS8', 14, 650.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('002g2', 'ĐAI NỊT BỤNG GIẢM MỠ LÀM THON EO', 36, 79.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('003g2', 'Găng tay y tế', 76, 80.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('004g2', 'Cân sức khỏe', 995, 270.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('005g2', 'detoxic trị kí sinh trùng', 568, 86.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('006g2', 'Bộ giác hơi không lửa Hàn quốc ', 132, 360.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('007g2', 'kem trị giãn tĩnh mạch chân varikosette', 1739, 82.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('008g2', 'kem nâng ngực upsize', 1804, 84.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('009g2', 'Nhiệt kế kiển thị màn LCD đầu dò 1m', 865, 35.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('010g2', 'Bộ Giác Hơi Không Dùng Lửa', 25, 54.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('011g2', 'Viên Thực Phẩm Chức Năng', 60, 150.000, 2);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('012g2', 'Tế bào gốc Vi tảo lục đặc trị mụn Mwhite', 50, 225.000, 2);

insert into items(itemId, itemName, quantity, price, categoryId)
value ('001g3', 'Giấy Double A4 ĐL 70/90', 32, 62.000, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('002g3', 'Bút bi Thiên Long 023', 14, 2.800, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('003g3', 'Bút bi nước TL Gel 08 Sunbeam ', 286, 4.500, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('004g3', 'Bút dấu dòng HaloBig HL02', 32, 7.000, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('005g3', 'File còng nhẫn 2.5F TL3302A', 380, 13.000, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('006g3', 'Cặp hộp vuông Trà My 7FL1', 9, 18.000, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('007g3', 'Sổ A5 đầu bằng 200T ', 249, 12.500, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('008g3', 'Sổ lò xo A5 200T Hải Tiến ', 97, 13.500, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('009g3', 'Dập ghim 10 Plus PS10E', 19, 27.000, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('010g3', 'Ghim KW - TriO 23/13', 137, 16.000, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('011g3', 'Phiếu thu A5 2 liên 80T', 60, 10.000, 3);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('012g3', 'Giấy giới thiệu', 32, 4.000, 3);

insert into items(itemId, itemName, quantity, price, categoryId)
value ('001g4', 'Máy bay chiến đấu điều khiển từ xa Model King', 7, 339.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('002g4', 'Rubik Gương tặng kèm rubik mini', 14, 90.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('003g4', 'lắc tay bạc nữ đơn giản', 286, 240.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('004g4', 'Đồng hồ Led unisex Royal Crown màu xanh dương', 32, 150.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('005g4', 'Nón Kết Nam Nữ', 380, 170.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('006g4', 'NÓN DÙ TIỆN LỢI', 9, 43.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('007g4', 'Bài vàng loại 1 bằng nhựa', 249, 45.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('008g4', 'Ma sói Werewolf', 97, 99.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('009g4', 'VÒNG CỔ CHOCKER 12 DÂY', 19, 49.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('010g4', 'Madam Dzi - Cài Áo Bướm Hạt Màu', 137, 96.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('011g4', 'Quần vớ - quần tất sexy', 96, 69.000, 4);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('012g4', 'găng tay chống nắng', 32, 25.000, 4);

insert into items(itemId, itemName, quantity, price, categoryId)
value ('001g5', 'LG G4 CHÍNH HÃNG_MÁY MỚI FULL PK', 150, 1745.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('002g5', 'ĐIỆN THOẠI SONY XPERIA XZ', 320, 4350.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('003g5', 'Asus X541UV-XX244D', 286, 10290.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('004g5', 'Lenovo Thinkpad', 45, 5520.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('005g5', 'Dell Ins N7566A ', 30, 25490.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('006g5', 'Laptop Dell Vostro 3568 XF6C62', 9, 16500.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('007g5', 'Kính cường lực Galaxy', 249, 110.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('008g5', 'Jack chia audio và mic - Jack chia tai nghe', 97, 25.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('009g5', 'Tai nghe Bluetooth Earpods i7S', 19, 229.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('010g5', 'Loa Bluetooth Keling F4 Sang Trọng', 137, 274.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('011g5', 'Loa di động', 60, 54.000, 5);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('012g5', 'Laptop E6430 i5 3320M Ram 4GB vỏ nhôm', 32, 4400.000, 5);

insert into items(itemId, itemName, quantity, price, categoryId)
value ('001g6', 'Bút thử điện Xuyên vỏ dây', 7, 85.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('002g6', 'BỘ CỜ LÊ - MỎ LẾT ĐA NĂNG ', 14, 79.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('003g6', 'Bộ 3 Mũi Khoan Tháp - A040025', 286, 235.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('004g6', 'BỘ LỤC GIÁC BOSI - LG05', 32, 76.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('005g6', 'Nồi kho cá nấu cháo điện đa năng 1.5L', 97, 152.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('006g6', 'NỒI CƠM ĐIỆN KIM CƯƠNG 0.6L', 9, 188.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('007g6', 'Quạt sạc điện kiêm đèn pin Mini Fan', 249, 155.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('008g6', 'Máy Hút Bụi Mini 2 chiều Cầm Tay', 97, 350.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('009g6', 'Bếp điện đôi mâm nhiệt', 19, 440.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('010g6', 'Ấm siêu tốc Panafresh 1,8L Malaysia', 137, 245.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('011g6', 'BÌNH THUỶ ĐIỆN KATOMO - KA978', 14, 750.000, 6);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('012g6', 'Đèn ngủ bàn 2 chế độ sáng - SKU86', 67, 320.000, 6);

insert into items(itemId, itemName, quantity, price, categoryId)
value ('001g7', 'Xe đạp Giant 2017 ESCAPE 2 CITY', 7, 9000.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('002g7', 'Nón bảo hiểm thể thao', 14, 117.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('003g7', 'Máy tập cơ bụng,cơ bắp nam nữ ', 142, 125.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('004g7', 'Đai Massage Giảm Mỡ ', 32, 243.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('005g7', 'Xe Số Honda Blade 110cc Căm Đùm', 380, 18090.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('006g7', 'Xe máy tay ga Yamaha Grande', 9, 41770.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('007g7', 'Xe đạp trẻ em Beifujia', 8, 1549.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('008g7', 'Dụng cụ tập thể thao Tummy Trimmer', 97, 65.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('009g7', 'Con lăn tập cơ bụng 4 bánh', 536, 88.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('010g7', 'Vòng Lắc Eo Giảm Mỡ Massage Hoop', 137, 122.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('011g7', 'BÓNG ĐÁ MAY SỐ 4 CHÍNH HÃNG ', 9999, 99.000, 7);
insert into items(itemId, itemName, quantity, price, categoryId)
value ('012g7', 'TẤT BÓNG ĐÁ CHỐNG TRƠN ', 96, 40.000, 7);

select * from items;

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
totalItem decimal not null,
total decimal not null,
create_date datetime not null default current_timestamp(),
constraint pk_bill primary key(orderId, itemId, userId),
constraint fk_bill_orders foreign key (orderId) references orders(orderId),
constraint fk_bill_items foreign key (itemId) references items(itemId),
constraint fk_bill_users foreign key (userId) references users(userId)
);





