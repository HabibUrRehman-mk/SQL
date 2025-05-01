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
