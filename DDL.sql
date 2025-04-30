create database pharmacy;
use pharmacy;

create table customer(
c_id int auto_increment primary key,c_name varchar(50),c_contact varchar(15)

); 

create table category(category_id int auto_increment primary key,category_name varchar(20));

create table manufacturer(
m_id int primary key auto_increment,
m_name varchar (50)
);

create table products(p_id int auto_increment primary key,p_name varchar (25) not null, 
p_category int,piece_per_item int,price_per_item decimal(6,2),total_price decimal(6,2),available_quantity int );

alter table products
add FOREIGN key (p_category) REFERENCES category(category_id);

alter table products
add column manufacturer_id int,
add column formula varchar(50);

alter table products
add constraint
foreign key (manufacturer_id) references manufacturer(m_id);
desc products;



alter table products
modify column price_per_item DECIMAL(8,2);
alter table products
modify column total_price decimal(8,2);

create table invoice(
invoice_id int primary key auto_increment,customer_id int ,
total_amount decimal(8,2) check (total_amount >0),
discount_percentage int check (discount_percentage >=0),
discount_amount decimal(8,2) check (discount_amount >=0),
grand_total decimal (8,2)check (grand_total>0) ,
foreign key (customer_id) references customer(c_id));

create table invoice_items(
invoice_id int, 
product_id int ,
quantity int,
price_per_item decimal(8,2),
total_price decimal(8,2),
foreign key (invoice_id) references invoice(invoice_id),
foreign key (product_id) references products(p_id)
);

insert into manufacturer (m_name) values ('Haleon');
insert into manufacturer (m_name) values ('Martin Dow');
insert into manufacturer (m_name) values ('UVS Pharma');
insert into manufacturer (m_name) values ('GSK');
insert into manufacturer (m_name) values ('Atco');
insert into manufacturer (m_name) values ('LCI');
insert into manufacturer (m_name) values ('Nutrifactor');
insert into manufacturer (m_name) values ('Getz');
insert into manufacturer (m_name) values ('Pharmix');
insert into manufacturer (m_name) values ('Jenner Pharma');
insert into manufacturer (m_name) values ('Genetics');
insert into manufacturer (m_name) values ('Searle');
insert into manufacturer (m_name) values ('High Q');
insert into manufacturer (m_name) values ('Evolution');
insert into manufacturer (m_name) values ('Ferozsons');
insert into manufacturer (m_name) values ('CP Pharma');
insert into manufacturer (m_name) values ('Pulse');
insert into manufacturer (m_name) values ('Caaaway');
insert into manufacturer (m_name) values ('Curatech');
insert into manufacturer (m_name) values ('Cell');
insert into manufacturer (m_name) values ('Heilung');
insert into manufacturer (m_name) values ('NutraLab');
insert into manufacturer (m_name) values ('Barrett Hodgson');
insert into manufacturer (m_name) values ('Nestle');
select * from manufacturer;

insert into category (category_name) values ('Multivitamin');
insert into category (category_name) values ('Medecine (Tablet)');
insert into category (category_name) values ('Medecine (Capsule)');
insert into category (category_name) values ('Medecine (Syrup)');
insert into category (category_name) values ('Cosmetics');
insert into category (category_name) values ('Ointment/Gel');
insert into category (category_name) values ('Medecine (Sachet)');
insert into category (category_name) values ('Medecine (Narcotics)');
insert into category (category_name) values ('Multivitamin(Sachet)');

insert into products (p_name,p_category,piece_per_item,total_price,formula,manufacturer_id,price_per_item,available_quantity)
values ('Centrum',1,100,8000,'Multivitamin',1,8000/100,100);
INSERT INTO products (p_name, p_category, piece_per_item, total_price, formula, manufacturer_id, price_per_item, available_quantity) VALUES
('laxeberon', 4, 1, 220, 'Sodium picosulfate', 2, 220.00, 1),
('I-Cap M', 2, 30, 750, 'Lutien Omega 3', 3, 25.00, 30),
('Polyfax Plus', 6, 1, 168, 'polymyxin B sulphate and bacitracin zinc', 4, 168.00, 1),
('Ascard-75', 2, 30, 82.94, 'Asprin', 5, 2.76, 30),
('Inderal 10mg', 2, 50, 141.26, 'Propranolol HCL', 6, 2.83, 50),
('Leflox 250mg', 2, 20, 656, 'levofloxacin', 8, 32.80, 20),
('Leflox 500mg', 2, 20, 1070, 'levofloxacin', 8, 53.50, 20),
('Levopal 250mg', 2, 20, 240, 'levofloxacin', 9, 12.00, 20),
('Levopal 500mg', 2, 20, 360, 'levofloxacin', 9, 18.00, 20),
('Kewdex 30mg', 3, 30, 629, 'Dexlensoprazole', 10, 20.97, 30),
('Kewdex 60mg', 3, 30, 1050, 'Dexlensoprazole', 10, 35.00, 30),
('Lenzeu 30mg', 3, 30, 700, 'Dexlensoprazole',11, 23.33, 30),
('Lenzeu 60mg', 3, 30, 1050, 'Dexlensoprazole', 11, 35.00, 30),
('Dextop 30mg', 3, 30, 900, 'Dexlensoprazole', 12, 30.00, 30),
('Dextop 60mg', 3, 30, 1200, 'Dexlensoprazole', 12, 40.00, 30);

select * from products;

delete from products where p_id =1;
select * from category;

insert into customer (c_name,c_contact) values ('ali','030411223344');
insert into customer (c_name,c_contact) values ('ahamd','0301223344');



