-- create database Shop;
-- Show databases;
-- use shop;
-- SELECT * from shopping_cart_items;
-- UPDATE CATEGORIES SET category_description = '' WHERE category_id = ;
-- preguntar por que esto no sirve: SELECT a.category_id, a.category_name, b.product_id, b.product_name from categories a, products b;

use shop;
SELECT * from shopping_cart_items;

CREATE TABLE Shopping_cart_items (
user_id int not null,
product_id int not null,
product_options varchar(256),
quantity int,
FOREIGN KEY (user_id) REFERENCES  users (user_id),
FOREIGN KEY (product_id) REFERENCES products (product_id),
primary key (product_options)
);

INSERT into shopping_cart_items (user_id) VALUES (1);

CREATE TABLE Users (
user_id int not null auto_increment,
user_role varchar(256) not null,
user_name varchar(256) not null,
user_email varchar(256) not null,
user_password varchar(256) not null,
primary key (user_id)
);

insert into Users (user_role, user_name, user_email, user_password)
VALUES
	('Customer', 'mike032', 'mike032@gmail.com', 'mike123'),
    ('Customer', 'XjohnX', 'Johnmitchell@gmail.com', 'nssda123'),
    ('Customer', 'frede34r', 'Frederic91@gmail.com', 'ff912s3d'),
    ('Customer', 'jonasjon', 'jonasjon@gmail.com', '23411gsdf123'),
    ('Customer', 'alfrenix34', 'jralfred234@gmail.com', 'kdllsla'),
    ('Customer', 'stephan33', 'skkf@gmail.com', 'ffaasder'),
    ('Customer', 'juanes124', 'fllljuan@gmail.com', 'mffk102rj'),
    ('Customer', 'omicto21', 'mictelsen@gmail.com', 'l128faj001as'),
    ('Customer', 'esteban23kall', 'jrh331@gmail.com', 'ffkf29ok'),
    ('Customer', 'samuelLers1', 'jfjsam@gmail.com', '238479j');
    
    
    CREATE TABLE Products (
product_id int not null auto_increment,
product_name varchar(255) not null,
product_description varchar(255) not null,
product_price varchar(255) not null,
product_status varchar(255) not null,
PRIMARY KEY (product_id)
);

SELECT a.category_id, a.category_name, b.product_id, b.product_name from categories a, products b;

insert into products (product_name, product_description, product_price, product_status)
VALUES
	('Bandage', 'A medical bandage for bleeding control', '$3.00', 'Available'),
    ('Microsof Surface Laptop', '13inch Black Surface Laptop', '$875.00', 'Available'),
    ('Dwalt Leaf blower', 'A leaf blower', '$900.00', 'Available'),
    ('Clinque Lip Gloss', 'A medium sized Clinque Lip Gloss', '$40.00', 'Available'),
    ('World Cup Football', 'A collectors world cup Football', '$20.00', 'Available'),
    ('Old Navy White Dress Shirt', 'A Dress Shirt for men', '$29.99', 'Unavailable'),
    ('Bandage', 'A medical bandage for bleeding control', '$3.00', 'Available'),
    ('Star wars, The Empire Strikes Back', 'A Physical copy of the Star Wars Movie', '$13.00', 'Available'),
    ('Decorative planter', 'An indoor planter for decoration', '$4.00', 'Available'),
    ('Super Mario 64', 'A physical cartridge of Supermario 64', '$17.00', 'Available');
    
    CREATE TABLE CATEGORIES (
category_id int,
category_name varchar(255),
category_description varchar(255),
PRIMARY KEY (category_id)
);

-- insert into CATEGORIES (category_name, category_description) VALUES ('Healthcare', 'Health related items');

ALTER TABLE CATEGORIES MODIFY COLUMN category_id int auto_increment;

insert into CATEGORIES (category_name, category_description) VALUES ('Sports', 'Items used for sports');
insert into CATEGORIES (category_name, category_description) VALUES ('Beauty', 'Items related for personal beauty');
insert into CATEGORIES (category_name, category_description) VALUES ('Videogames', 'Items related to videogames');
insert into CATEGORIES (category_name, category_description) VALUES ('Home Appliances', 'Items that can be used as home appliances');
insert into CATEGORIES (category_name, category_description) VALUES ('Cleaning', 'Items used for cleaning');
insert into CATEGORIES (category_name, category_description) VALUES ('Clothing', 'Items of clothing');
insert into CATEGORIES (category_name, category_description) VALUES ('Movies', 'Digital and physical movies');
insert into CATEGORIES (category_name, category_description) VALUES ('Home decoration', 'Items for home decoration');
insert into CATEGORIES (category_name, category_description) VALUES ('Technology', 'Items related with the tech industry');
insert into CATEGORIES (category_name, category_description) VALUES ('Gardening', 'Items for gardening');

SELECT * from shopping_cart_items;

CREATE TABLE Product_categories (
product_id int not null,
category_id int not null,
FOREIGN KEY (product_id) REFERENCES  products (product_id),
FOREIGN KEY (category_id) REFERENCES categories (category_id),
PRIMARY KEY (product_id)
);

CREATE TABLE Orders (
order_id int not null auto_increment,
user_id int not null REFERENCES users (user_id),
user_name varchar(256) REFERENCES users (user_name),
user_email varchar(255) REFERENCES users (user_email),
FOREIGN KEY (user_id) REFERENCES  users (user_id),
primary key (order_id)
);

SELECT * from orders;
DESCRIBE orders;

CREATE TABLE Order_totals (
total_id int not null auto_increment,
order_id int not null,
total_name varchar(256),
total_amount int not null,
FOREIGN KEY (order_id) REFERENCES  orders (order_id),
primary key (total_id)
);

SELECT * from order_totals;
DESCRIBE order_totals;

CREATE TABLE Order_products (
item_id int not null auto_increment,
order_id int not null,
item_name varchar(256),
item_price varchar(256),
item_quantity int not null,
FOREIGN KEY (order_id) REFERENCES  orders (order_id),
primary key (item_id)
);

SELECT * from order_products;
DESCRIBE order_products;

CREATE TABLE Order_totals (
total_id int not null auto_increment,
order_id int not null,
total_name varchar(256),
total_amount int not null,
FOREIGN KEY (order_id) REFERENCES  orders (order_id),
primary key (total_id)
);
    