-- INSERT SCRIPT

-- Here I added some data to the following tables: Categories, Products, and Users.
-- The other tables are ampty at the moment.
-- WARNING: This code is not Re-runnable


-- use shop databse
use shop;

-- CATEGORIES
-- these insert queries were done individually for practice, don't use this syntax for
-- future insert queries.

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

-- PRODUCTS 
-- Proper insert syntax:

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
    
-- USERS
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