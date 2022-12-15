--Create a table named “tbl_stock” with columns as mentioned below. “Pk_int_stock_id”
--should be auto-incremented and set as the primary Key.

CREATE TABLE tbl_stock(pk_int_stock_id INT NOT NULL AUTO_INCREMENT,vchr_name VARCHAR(100),
int_quantity INT,int_price INT, PRIMARY KEY (pk_int_stock_id));
