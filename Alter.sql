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