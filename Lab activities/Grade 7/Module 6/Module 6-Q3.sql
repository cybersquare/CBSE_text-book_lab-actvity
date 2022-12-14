--List all the products in capital letters and their price rounded to the next integer number(tbl_stock).

SELECT UPPER(vchr_name) AS name,ROUND(int_price) AS price FROM tbl_stock;