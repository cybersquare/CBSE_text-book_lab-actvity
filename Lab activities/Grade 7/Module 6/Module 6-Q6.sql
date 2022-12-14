--From “tbl_stock”, list all the items with their extended price (int_quantity * int_price).

SELECT vchr_name,(int_quantity*int_price) AS product_price FROM tbl_stock;