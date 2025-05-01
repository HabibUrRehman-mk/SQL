update products
set available_quantity = 10 where p_id=2;
select * from products;

update products 
set available_quantity = available_quantity - 5 where p_id= 17 or p_id=11;
update products 
set available_quantity = available_quantity - 1 where p_id= 2;

UPDATE products SET available_quantity = available_quantity - 1 WHERE p_id = 2;
UPDATE products SET available_quantity = available_quantity - 2 WHERE p_id = 6;

UPDATE products SET available_quantity = available_quantity - 5 WHERE p_id = 3;
UPDATE products SET available_quantity = available_quantity - 3 WHERE p_id = 7;

UPDATE products SET available_quantity = available_quantity - 4 WHERE p_id = 17;
UPDATE products SET available_quantity = available_quantity - 1 WHERE p_id = 4;

select * from invoice








