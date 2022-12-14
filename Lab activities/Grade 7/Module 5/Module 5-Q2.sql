--Update the prices for all the products in ‘tbl_stock’ by incrementing their current price by 1.50. Alter the price column to float data type.

ALTER TABLE tbl_stock MODIFY int_price FLOAT;
UPDATE tbl_stock SET int_price=int_price + 1.50;