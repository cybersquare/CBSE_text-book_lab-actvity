import mysql.connector

def connect():
    conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    )

    print(conn) 
    return conn

def create_table(conn):
    cursor = conn.cursor()
    sql = "CREATE DATABASE IF NOT EXISTS mydb"
    cursor.execute(sql)
    cursor.execute("SHOW DATABASES")
    for x in cursor:
        print(x)
    cursor.execute('USE mydb')
    cursor.execute('DROP TABLE IF EXISTS PRODUCT')
    cursor.execute("CREATE TABLE PRODUCT (product_id INT NOT NULL, name VARCHAR(255) NOT NULL,description LONGTEXT NOT NULL,price FLOAT NOT NULL )")
    cursor.close()

def insert_data(cursor, data):
    query = f"INSERT INTO PRODUCT VALUES ({data['id']}, '{data['name']}', '{data['des']}', {data['price']});"
    cursor.execute(query)
    print('{} records inserted'.format(cursor.rowcount))
   
def update_price(cursor):
    query = "update PRODUCT set price =  price + (price * 10.0 / 100.0)"
    cursor.execute(query)

def show_records(cursor):
    query = 'SELECT * FROM PRODUCT;'
    cursor.execute(query)
    records = cursor.fetchall()
    print('-------------------------------------')
    for record in records:
        print('Products: ',record)

def delete_items(cursor):
    query = "DELETE FROM PRODUCT WHERE name LIKE 'm%'"
    cursor.execute(query)


conn = connect()
create_table(conn)
data_set = [{'id': 1, 'name':'HP Laptops', 'des':'Laptop', 'price':50000.10}, 
            {'id': 2, 'name':'DELL Laptops', 'des':'Laptop', 'price':90000.10}, 
            {'id': 3, 'name':'ASUS Laptops', 'des':'Laptop', 'price':100000.10}, 
            {'id': 4, 'name':'MI Laptops', 'des':'Laptop', 'price':40000.10}, 
            {'id': 5, 'name':'Mouse', 'des':'Wireless mouse', 'price':600.50}]
cursor = conn.cursor()
for data in data_set:
    insert_data(cursor, data)
cursor.close()
cursor = conn.cursor()
show_records(cursor)
update_price(cursor)
cursor.close()
cursor = conn.cursor()
show_records(cursor)
delete_items(cursor)
show_records(cursor)