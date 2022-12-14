--List the total cost of all the items in the store (tbl_stock).

SELECT SUM(int_quantity*int_price) AS total_cost_of_all_items FROM tbl_stock;
