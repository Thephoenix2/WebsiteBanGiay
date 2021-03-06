create database project2
go
use project2

create table administrators (
	id int IDENTITY(1,1) PRIMARY KEY,
	username nvarchar(50) UNIQUE not null,
	password nvarchar(50) not null,
	name nvarchar(50) not null
)
insert into administrators values ('admin', '123', N'admin')

create table users (
	id int IDENTITY(1,1) PRIMARY KEY,
	name nvarchar(50) not null,
	email nvarchar(50) UNIQUE not null,
	phone nvarchar(20) not null,
	username nvarchar(50) UNIQUE not null,
	password nvarchar(50) not null,
	created date not null,
	address nvarchar(50) not null,
);


create table catalogs
(
	id int IDENTITY(1,1) PRIMARY KEY,
	name nvarchar(50) not null,
	
);

Create table products (
	id int IDENTITY(1,1) PRIMARY KEY,
	catalog_id int not null foreign key references catalogs(id) on delete cascade,
	name nvarchar(50) not null,
	image nvarchar(50) not null,
	price float not null,
	discount float not null,
	status int not null,
	description nvarchar(4000) not null,
	created date not null,  
);

create table transactions
(
	id int IDENTITY(1,1) primary key,
	user_id int null foreign key references users(id) on delete cascade,
	recipient nvarchar(50) not null,
	phone nvarchar(20) not null,
	address nvarchar(300) not null,	
	amount float not null,
	payment nvarchar(30) not null,
	status int null,
	notes nvarchar(4000) not null,
	created date not null,
	admin_id int null foreign key references administrators(id) on delete cascade,
);
USE [project2]
drop table details
create table details
(
	id int IDENTITY(1,1) primary key,
	product_id int not null foreign key references products(id) on delete cascade,
	transaction_id int not null foreign key references transactions(id) on delete cascade,
	price float null,
	qty int not null,	
	discount float null
);






INSERT [dbo].[catalogs] ( [name]) VALUES (N'NIKE')
INSERT [dbo].[catalogs] ( [name]) VALUES (N'MLB')
INSERT [dbo].[catalogs] ( [name]) VALUES (N'ADIDAS')
INSERT [dbo].[catalogs] ( [name]) VALUES (N'Bitis')

INSERT [dbo].[users] ([name], [email], [phone], [username], [password], [address], [created]) VALUES (N'Nguyễn Anh Thoại', N'thoai@gmail.com','0977634459',N'thoai',N'123456',N'đường 36 phường Linh Đông', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[users] ([name], [email], [phone], [username], [password], [address], [created]) VALUES (N'Trần Minh Hoàng', N'hoangtmps04421@fpt.edu.vn','0388692470',N'hoang',N'123',N'Quận 10 Tp Hồ Chí Minh', CAST(N'2022-03-27' AS Date))
INSERT [dbo].[users] ([name], [email], [phone], [username], [password], [address], [created]) VALUES (N'Phan Nhật Long', N'long@gmail.com','0909729960',N'long',N'123',N'vĩnh phú 17', CAST(N'2022-03-27' AS Date))
INSERT [dbo].[users] ([name], [email], [phone], [username], [password], [address], [created]) VALUES (N'Nguyễn Đức Hoàng Sang', N'Sang@gmail.com','0977634459',N'sang',N'123',N'Hồ Chí Minh', CAST(N'2022-03-27' AS Date))
USE [project2]
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( 1,N'Nike Air Force 1', N'nike_airforce1.jpg', 3290000, 0,  1,N'Nike Air Force 1 Ra mắt vào năm 1982 bởi nhà thiết kế Bruce Kilgore, ngay lập tức mẫu giày Nike Air Force 1 (AF1) đã trở thành một ‘hit’ mạnh trên khắp thế giới khi ‘sold out’ ngay trong ngày đầu trình làng.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Nikecourt Air Zoom GP Turbo', N'NIKECOURT AIR ZOOM GP TURBO.jpg', 4230000, 0,  N'Tennis matches are fast, fierce and long.The NikeCourt Air Zoom GP Turbo combines an incredibly responsive, full-length Zoom Air unit with zones of durability so you can stay fresh for longer.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Nikecourt Vapor Lite HC', N'nike-court-vapor-lite.jpeg', 2820000, 0,  N'Like a racing car, the NikeCourt Vapor Lite keeps most of its features under the bonnet.Its unique cushioning system is built to help you get to the ball as fast as you can.An innovative, 4-point strap takes inspiration from racing-car harnesses to help keep your foot locked down during your fiercest matches.All in a lightweight, breathable design that''s incredibly comfortable.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Nike GTS 97 Black White', N'nikegts97blackwhite', 3000000, 0,  N'GTS 97 BLACK WHITE', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( 1,N'Nikecourt Vapor Lite Hard Court Tennis', N'nikegts97blackwhite.jpg', 3290000, 0, 1, N'Like a racing car, the NikeCourt Vapor Lite keeps most of its features under the bonnet.Its unique cushioning system is built to help you get to the ball as fast as you can.An innovative, 4-point strap takes inspiration from racing-car harnesses to help keep your foot locked down during your fiercest matches.All in a lightweight, breathable design thats incredibly comfortable.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Blazer Low Jumbo Orange', N'Blazer Low Jumbo Orange.jpg', 3290000, 0,  N'They say, "Dont fix what works". We say, "Perfect it". The classic, streetwear superstar gets rethought with the Nike Blazer Low 77 Jumbo. Harnessing the old-school look you love, it now features an oversized Swoosh design and jumbo laces. Its plush foam tongue and thicker stitching embolden the iconic look thats been praised by the streets since 77.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Nikecourt Zoom Vapor Cage 4', N'nike-court-zoom-vapor-cage-4.jpeg', 190, 0,  N'Innovated to withstand your toughest matches, this updated design puts flexible, durable materials exactly where theyre needed most. Signature Rafael Nadal details let you rep your favourite player while you run the court.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Blazer Low Jumbo Black', N'nike-blazer-low-jumbo-black.jpeg', 3290000, 0,  N'They say, "Dont fix what works". We say, "Perfect it". The classic, streetwear superstar gets rethought with the Nike Blazer Low 77 Jumbo. Harnessing the old-school look you love, it now features an oversized Swoosh design and jumbo laces. Its plush foam tongue and thicker stitching embolden the iconic look thats been praised by the streets since 77.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Nikecourt Air Zoom Vapor Pro White', N'nikegts97blackwhite', 4230000, 0,  N'The NikeCourt Air Zoom Vapor Pro takes everything you love about the NikeCourt Air Zoom Vapor X and makes it lighter and more supportive. The 3-layer design puts breathability, stability and durability where theyre needed most, all while keeping weight at a minimum.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Acronym X Blazer Low Black Olive Aura', N'nike-acronym-x-blazer-low-black.jpg', 4700000, 0,  N'ACRONYM® founder Errolson Hughs focus on function, and how that flows into high-tech fashion, is unparalleled. For his latest footwear collaboration with Nike, Hugh transforms the classic Blazer Low. Infusing easy-on, easy-off style with utilitarian details, intricate patterning and interchangeable heel clips, he brings you a commanding look.', CAST(N'2022-03-24' AS Date))

INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Nikecourt React Vapor Nxt', N'nike-court-react-vapor-nxt.jpeg', 4500000, 0,  N'For the rally that wont relent or the dangling volley that needs to be smashed at the net, go with the next generation of tennis performance. Backed by years of athlete data, it provides the kind of tenacious traction that can help you get to that unreachable ball along the baseline. An innovative cushioning system offers the sort of satisfying support that can help make the difference if your match goes the distance.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Air Force 1 07 Skeleton', N'nike-air-force-1-skeleton.png', 6800000, 0,  N'The radiance lives on in the Nike Air Force 1 07 Skeleton, the basketball icon that puts an X-ray spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine. This special edition continues the journey with a bold skeleton print design and adds a glow in the dark midsole/outsole finish.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Air Force 1 Luxe Grey', N'nike-air-force-1-luxe-grey.jpg', 5700000, 0,  N'AIR FORCE 1 LUXE GREY', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'React Infinity Run Flyknit 2', N'nike-react-infinity-run-flyknit-2.jpeg', 2700000, 0,  N'Stay on your feet, so that you can take on todays quick 2-miler and bounce back in time for tomorrows jogathon at your kids school. Sink into the responsiveness and constant comfort quicker with higher foam stacks that shield you from reoccurring attrition. A wider forefoot helps reduce the chance of stress-related injuries, giving you the peace of mind to pound the pavement every day in our most-tested shoe ever.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Zoomx Invincible Run Fk', N'nike-zoomx-invincible-run-flyknit.jpeg', 21000000, 0,  N'Modern meets classic in the thoughtfully crafted Nike Air VaporMax 2021 FK SE. Made from at least 20% recycled materials by weight, its airy, easy-to-wear design features super-stretchy Flyknit on the upper. The stitched-on Swoosh and heel clip add the perfect amount of flash as you float down the streets on incredibly soft VaporMax cushioning.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Free Terra Vista Black And Canvas', N'nike-free-terra-vista-black-and-canvas.jpeg', 3400000, 0,  N'From the streets to the trails to anywhere in between, the Nike Free Terra Vista makes everything common ground. Made from at least 20% recycled content by weight, this pair will be your go-to for all of your wild adventures. Its rugged upper features mesh, webbing and other durable textiles for an outdoorsy vibe.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Air Max 1 Patta Waves Rush Maroon', N'nike-air-max-1-x-patta-night-maroon.jpeg', 4200000, 0,  N'Collaborating with Patta, this special Air Max 1 is inspired by the authentic connection between the Amsterdam-based brand and its community. Pattas latest work takes the iconic Air Max 1 and adds a twist to its OG execution, featuring the third iteration of the wave pattern on the mudguard. Patta branding hits the tongue label and sockliner, while a mini Swoosh on the wavy mudguard adds a final touch to another storied collab.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Air Zoom Alphafly Next Flyknit', N'nike-air-zoom-alphafly-next-flyknit.jpeg', 2900000, 0,  N'Gear up for your next personal best with the Nike Air Zoom Alphafly NEXT% Flyknit Ekiden. It gives you the greatest energy return of all our racing shoes with a propulsive feel through to the finishing line. The design is light, breathable and backed by data to help keep you comfortable.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Air Force 1 Premium Halloween', N'nike-air-force-1-premium-halloween.jpeg', 4230000, 0,  N'From the streets to the trails to anywhere in between, the Nike Free Terra Vista makes everything common ground. Made from at least 20% recycled content by weight, this pair will be your go-to for all of your wild adventures. Its rugged upper features mesh, webbing and other durable textiles for an outdoorsy vibe.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Kyrie Low 4 Ep', N'nike-kyrie-low-4-ep.jpeg', 160, 0,  N'From the streets to the trails to anywhere in between, the Nike Free Terra Vista makes everything common ground. Made from at least 20% recycled content by weight, this pair will be your go-to for all of your wild adventures. Its rugged upper features mesh, webbing and other durable textiles for an outdoorsy vibe.', CAST(N'2022-03-24' AS Date))


INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Air Force 1 Under Construction White', N'nike-air-force-1-under-construction-white.jpeg', 4230000, 0,  N'Collaborating with Patta, this special Air Max 1 is inspired by the authentic connection between the Amsterdam-based brand and its community. Pattas latest work takes the iconic Air Max 1 and adds a twist to its OG execution, featuring the third iteration of the wave pattern on the mudguard. Patta branding hits the tongue label and sockliner, while a mini Swoosh on the wavy mudguard adds a final touch to another storied collab.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Air Max Ivo White Habanero Red', N'nike-court-air-zoom-vapor-pro-white-habanero-red.jpeg', 3290000, 0,  N'AIR MAX IVO WHITE HABANERO RED', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Lebron Xvii Low', N'lebron-xvii-low.jpg', 1500000, 0,  N'From the streets to the trails to anywhere in between, the Nike Free Terra Vista makes everything common ground. Made from at least 20% recycled content by weight, this pair will be your go-to for all of your wild adventures. Its rugged upper features mesh, webbing and other durable textiles for an outdoorsy vibe.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Air Max 90 Love Letter', N'nike-air-max-90-love-letter.jpeg', 4230000, 0,  N'From the streets to the trails to anywhere in between, the Nike Free Terra Vista makes everything common ground. Made from at least 20% recycled content by weight, this pair will be your go-to for all of your wild adventures. Its rugged upper features mesh, webbing and other durable textiles for an outdoorsy vibe.', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Space Hippie 01 Electric Green', N'nike-space-hippie-01-electric-green.jpeg', 1600000, 0,  N'From the streets to the trails to anywhere in between, the Nike Free Terra Vista makes everything common ground. Made from at least 20% recycled content by weight, this pair will be your go-to for all of your wild adventures. Its rugged upper features mesh, webbing and other durable textiles for an outdoorsy vibe.', CAST(N'2022-03-24' AS Date))

INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'MLB Chunky Classic Heel Dia Monogram', N'mlb-chunky-classic-heel-dia-monogram.jpg', 1500000,  N'MLB Chunky Classic Heel Dia Monogram New York Yankees Brown 3ASXAM82N-50BGS', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'MLB Chunky Liner High LA Dodgers', N'MLB-Chunky-Liner-High-LA-Dodgers.png', 4230000, 0,  N'MLB Chunky Liner High LA Dodgers Blue 3ASXCB12N-07BLL', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'MLB Chunky Classic Mono Embo New York Yankees', N'mlb-chunky-classic-mono-embo-new-york-yankees.jpg', 2100000, 0,  N'MLB Chunky Classic Mono Embo New York Yankees Black 3ASXXD41N-50BKS', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'MLB Playball Mono Canvas New York Yankees', N'mlb-playball-mono-canvas-new-york-yankees.jpg', 1600000, 0,  N'MLB Playball Mono Canvas New York Yankees Black Brown 3ACVVC31N-50B', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'MLB Chunky High Heart', N'mlb-chunky-high-heart.jpg', 1250000, 0,  N'MLB Chunky High Heart New York Yankees Black 3ASHU321N-50B', CAST(N'2022-03-24' AS Date))

INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'MLB Chunky Jogger Seamball', N'mlb-chunky-jogger-seamball.jpg', 1300000, 0,  N'MLB Chunky Jogger Seamball New York Yankees Cream 3ASXXB21N-50I', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'MLB Playball Origin New York Yankees', N'mlb-playball-origin-new-york.jpg', 2820000, 0,  N'MLB Playball Origin New York Yankees White 32SHP1941-50W', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Forum Low Green', N'adidas-forum-low-green.jpg', 1780000, 0,  N'Adidas Forum 84 Low White Crew Green FY8683', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Ultraboost 20 Metallic Gold', N'ultraboost-20-metallic-gold.jpeg', 2000000, 0,  N'adidas Ultra Boost 20', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'NMD R1 Grey', N'adidas-nmd-r1.jpg', 2200000, 0,  N' adidas Wmns NMD_R1 Cloud White', CAST(N'2022-03-24' AS Date))

INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Yeezy Boost 350 V2', N'adidas-Yeezy-Boost-350-V2.png', 4400000, 0,  N'adidas Yeezy Boost 350 V2 Dazzling Blue GY7164', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Adidas RUNNING Duramo SL', N'adidas-RUNNING-Duramo.png', 2000000, 0,  N'adidas RUNNING Duramo SL White Black FV8786', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Adidas Ultraboost DNA', N'adidas-ultraboost-cc1-dna.png', 1500000, 0,  N'adidas Ultraboost DNA CC_1 Core Black FZ2546', CAST(N'2022-03-24' AS Date))
INSERT [dbo].[products] ( [name], [image], [price], [discount], [status], [description], [created]) VALUES ( N'Adidas Superstar Slip-On', N'adidas-superstar-slip-on.png', 2820000, 0,  N'adidas Superstar Slip-On Cloud White FV3186', CAST(N'2022-03-24' AS Date))

INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis HunterX2k20 Multi Layer Forest', N'bitis1.png', 855000, 0, 1, N'Cải tiến thiết kế độc đáo với xu hướng #layer từ những “đường cắt” chất liệu đan xen, lần đầu tiên có mặt tại gia đình Thợ Săn.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter Core', N'bitis2.png', 660000, 0, 1, N'Giày Thể Thao Nam - Nữ Bitis Hunter Core cho mọi Phong cách và mọi Hành trình.Phù hợp với mọi nhu cầu sử dụng, Bitis Hunter Core mới "chào sân" với 3 phối màu trung tính cho mùa hè năng động.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter 2K21 X Old Kool Black', N'bitis3.png', 932000, 0, 1, N'Bitis Hunter X cổ thấp hứa hẹn sẽ "tạo sóng" với sự trở lại của đế LiteFlex được ưa chuộng kết hợp hài hòa giữa form dáng hiện đại và sắc màu Retro.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter 2K21 Refreshing Collection Contras Black', N'bitis4.png', 680000, 0, 1, N'Với sự trở lại của dòng đế LiteFoam, mẫu Bitis Hunter Core 2K21 Refreshing Collection góp thêm những lựa chọn thể thao và mạnh mẽ hơn cho mùa tựu trường.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter Street 2K21', N'bitis5.png', 550000, 0, 1, N'Đa phong cách và tiện dụng - Bitis Hunter Street thế hệ mới hứa hẹn mang đến cho các tín đồ sneaker nhiều phong cách thời trang biến hóa khác nhau chỉ trên 1 đôi giày tiện dụng.', CAST(N'2022-03-26' AS Date))

INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter X BKL - Midnight Black Inverted', N'bitis6.png', 960000, 0, 1, N'Biti’s Hunter BKL 2K19 - sẽ là lựa chọn chẳng thể lý tưởng cho chuyến đi và trải nghiệm mùa cuối năm này. Phong cách buckle thời thượng, cá tính sẵn sàng cùng bạn “”khuấy đảo”” những ngày cuối năm với trải nghiệm chất lừ đây!', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter X 2k19 - Jet Black', N'bitis7.png', 855000, 0, 1, N'Công nghệ đế LiteFlex độc quyền từ Bitis Hunter ứng dụng công nghê sản xuất IP trên nền chất liệu Phylon không chỉ giúp đôi chân cảm giác "Nhẹ như bay" mà còn tăng vượt bậc độ đàn hồi, tạo độ linh hoạt và tự tin hơn khi chiều cao đế đạt tới 5cm.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter Core 2K21 Classic Pink', N'bitis8.png', 694000, 0, 1, N'BỘ ĐẾ LITEFOAM 2.0 CÙNG CÔNG NGHỆ LITEKNIT SIÊU THOÁNG KHÍ.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter Core Dark Cream', N'bitis9.png', 680000, 0, 1, N'Giày Thể Thao Nam - Nữ Bitis Hunter Core cho mọi Phong cách và mọi Hành trình.Phù hợp với mọi nhu cầu sử dụng, Bitis Hunter Core mới "chào sân" với 3 phối màu trung tính cho mùa hè năng động.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter 2K21 Jogging Light Grey', N'bitis10.png', 638000, 0, 1, N'Bitis Hunter Jogging là dòng giày đi bộ MỚI, phục vụ các hoạt động tập thể dục, đi bộ, gym mỗi ngày. Nổi bật với thiết kế uyển chuyển từ mũi tới gót, form dang năng động và màu sắc cơ bản. Đặc biệt là công nghệ cải tiến để mang đến những bước chân nhẹ, êm, thoáng và dẻo dai nhất.', CAST(N'2022-03-26' AS Date))

INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter Street Z Blue', N'bitis11.png', 680000, 0, 1, N'Giày Thể Thao Nữ Bitis Hunter Street Z Collection High Purple Giày Thể Thao Nam Bitis Hunter Street Z Collection High Purple Bụi bặm như đường phố nhưng vẫn đặc sắc!', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter Street Z White', N'bitis12.png', 814000, 0, 1, N'Bitis Hunter Street được nâng tầm với ngôn ngữ thiết kế mới - táo bạo hơn. Phối màu trung tính chủ đạo giúp mẫu giày dễ dàng phối hợp với nhiều phong cách quần áo. Kết hợp cùng 2 lựa chọn cổ thấp và cổ cao.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis HunterxMarvel Spider-man', N'bitis13.png', 1501000, 0, 1, N'Chào mừng Spider-man(s) trở lại với NO WAY HOME, phần phim hứa hẹn là phần tổng kết hoành tráng nhất cho hành trình 19 năm trên màn ảnh của Nhện - siêu anh hùng mang tính biểu tượng nhất mọi thời đại đã lớn lên cùng chúng ta."Your friendly neighborhood Spider-man(s)".', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter 2K21 Jogging Jade Black', N'bitis14.png', 855000, 0, 1, N'Bitis Hunter Jogging là dòng giày đi bộ MỚI, phục vụ các hoạt động tập thể dục, đi bộ, gym mỗi ngày. Nổi bật với thiết kế uyển chuyển từ mũi tới gót, form dang năng động và màu sắc cơ bản. Đặc biệt là công nghệ cải tiến để mang đến những bước chân nhẹ, êm, thoáng và dẻo dai nhất.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter X 2K21 Pale Purple', N'bitis15.png', 855000, 0, 1, N'Thiết kế đế mới cao hơn, êm hơn, "chất" hơn trên từng trải nghiệm. Thiết kế đế LiteFlex 2.0 chắc chắn sẽ khiến các bạn trẻ "đổ gục" với những màu sắc tươi mới hơn, hứa hẹn một đôi giày cực kỳ "hot" cuối năm 2020 này.', CAST(N'2022-03-26' AS Date))

INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Sandal Bitis Hunter Peach Kombucha 2k20', N'bitis16.png', 434000, 0, 1, N'Giày Sandal Bitis Hunter với kiểu dáng đơn giản nhưng thời trang, mang lại sự thoải mái và tự tin cho bạn suốt ngày dài.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Sandal Bitis Hunter Orange Tonic 2K20', N'bitis17.png', 457000, 0, 1, N'Form đế hoàn toàn mới, thiết kế được nâng cấp và mặt đế hỗ trợ thêm phần đệm cao su giúp chống trượt, tăng khả năng ma sát cao trong từng chuyển động .', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Sandal Bitis Hunter Pumpkin Orange', N'bitis18.png', 384000, 0, 1, N'Quai Si, đế Eva Phun (Injection Phylon) cao cấp, bền chắc, mang lại nhẹ nhàng, êm ái cho bàn chân.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Sandal Bitis Hunter 2K21 Artic Blue', N'bitis19.png', 457000, 0, 1, N'Phần đế được kết hợp rãnh chống trơn trượt, có tính ma sát cao nên hỗ trợ tránh bị trơn trượt, té ngã khi di chuyển.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Sandal Bitis Hunter Pink', N'bitis20.png', 424000, 0, 1, N'Đặc biệt thiết kế quai năng động, viền chỉ chắc chắn ôm gọn chân nhưng lại cực kì thông thoáng, không gây nóng bức, hầm hay khó chịu.', CAST(N'2022-03-26' AS Date))

INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter Core Go For Love 2K22', N'bitis21.png', 843000, 0, 1, N'Phiên bản dòng Hunter Core ứng dụng cao cùng công nghệ vải 3D-LiteKnit trong ba gam màu sắc trung tính Blush, Grey, Black.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter Core Season 3 - 2k20', N'bitis22.png', 716000, 0, 1, N'ĐỘT PHÁ CÙNG THIẾT KẾ TRONG SUỐT (LƯU Ý SẢN PHẨM CÓ ĐỘ NHĂN TỰ NHIÊN PHẦN MŨ QUAI TRONG SUỐT.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter X Orange Tonic 2k20', N'bitis23.png', 1010000, 0, 1, N'ĐỘT PHÁ CẢI TIẾN VỚI DÒNG ĐẾ HOÀN TOÀN MỚI - HUNTER X 2K20 LÀ BƯỚC CHUYỂN MÌNH ĐỘT PHÁ, ĐỀ CAO TÍNH TRẢI NGHIỆM VÀ THOẢI MÁI TỐI ƯU.', CAST(N'2022-03-26' AS Date))
INSERT [dbo].[products] ([catalog_id], [name], [image], [price], [discount], [status], [description], [created]) VALUES (3, N'Bitis Hunter X Z MIDNIGHT BLACK MID TOP', N'bitis24.png', 1207000, 0, 1, N'Giày Thể Thao Nam – Nữ Bitis Hunter X 2K21 Z-TTITUDE COLLECTION phom dáng cổ cao đầu tiên được ra mắt.', CAST(N'2022-03-26' AS Date))



SELECT 
	c.name Loai,
	SUM(d.price * d.qty * (1 - d.discount/100)) DoanhThu,
	SUM(d.qty) SoLuong,
	MIN(d.price) GiaThapNhat,
	MAX(d.price) GiaCaoNhat,
	AVG(d.price) 
FROM details d
	JOIN Products p ON p.id=d.product_id
	JOIN catalogs c ON c.id=p.catalog_id
GROUP BY c.name

SELECT 
	MONTH(t.created) Loai,
	SUM(d.price * d.qty * (1 - d.discount/100)) DoanhThu,
	SUM(d.qty) SoLuong,
	MIN(d.price) GiaThapNhat,
	MAX(d.price) GiaCaoNhat,
	AVG(d.price) 
FROM details d
	JOIN Transactions t ON t.id=d.transaction_id
GROUP BY MONTH(t.created)