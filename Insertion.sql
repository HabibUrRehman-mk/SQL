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
insert into products (p_name,p_category,piece_per_item,total_price,formula,manufacturer_id,price_per_item,available_quantity)
values ('Centrum',1,100,8000,'Multivitamin',1,8000/100,100);

update products
set available_quantity = 10 where p_id=2;
select * from products;

delete from products where p_id =1;
select * from products;

insert into customer (c_name,c_contact) values ('ali','030411223344');
insert into customer (c_name,c_contact) values ('ahamd','0301223344');
insert into customer (c_name,c_contact) values ('saif','030555446611'),('umer','032377665544'),('qasim','030799881122');

insert into invoice (customer_id,total_amount,discount_percentage,discount_amount,grand_total) values
(3,724.85,4,28.99,695.86);
insert into invoice_items values (2,2,1,220,220),(2,17,5,80,80*5),(2,11,5,20.97,20.97*5);
update products 
set available_quantity = available_quantity - 5 where p_id= 17 or p_id=11;
update products 
set available_quantity = available_quantity - 1 where p_id= 2;



insert into invoice (customer_id, total_amount, discount_percentage, discount_amount, grand_total)
values (1, 285.60, 5, 14.28, 271.32);
insert into invoice_items (invoice_id, product_id, quantity, price_per_item, total_price)
values
(3, 2, 1, 220.00, 220.00),
(3, 6, 2, 32.80, 65.60);
UPDATE products SET available_quantity = available_quantity - 1 WHERE p_id = 2;
UPDATE products SET available_quantity = available_quantity - 2 WHERE p_id = 6;


INSERT INTO invoice (customer_id, total_amount, discount_percentage, discount_amount, grand_total)
VALUES (2, 312.50, 10, 31.25, 281.25);
INSERT INTO invoice_items (invoice_id, product_id, quantity, price_per_item, total_price)
VALUES (4, 3, 5, 25.00, 125.00),(4, 7, 3, 53.50, 160.50);
UPDATE products SET available_quantity = available_quantity - 5 WHERE p_id = 3;
UPDATE products SET available_quantity = available_quantity - 3 WHERE p_id = 7;


INSERT INTO invoice (customer_id, total_amount, discount_percentage, discount_amount, grand_total)
VALUES (4, 488.00, 8, 39.04, 448.96);
INSERT INTO invoice_items (invoice_id, product_id, quantity, price_per_item, total_price)
VALUES 
(5, 17, 4, 80.00, 320.00),
(5, 4, 1, 168.00, 168.00);
UPDATE products SET available_quantity = available_quantity - 4 WHERE p_id = 17;
UPDATE products SET available_quantity = available_quantity - 1 WHERE p_id = 4;

select * from invoice








