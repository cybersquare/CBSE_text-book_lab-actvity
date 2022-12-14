--Create a database named db_school and create the following tables in the database.

CREATE DATABASE db_school;

use db_school

CREATE TABLE tbl_department(pk_int_dept_id INT NOT NULL AUTO_INCREMENT,vchr_department_name VARCHAR(100), PRIMARY KEY(pk_int_dept_id));

CREATE TABLE tbl_class(pk_int_class_id INT NOT NULL AUTO_INCREMENT,vchr_name VARCHAR(100),fk_int_dept_id INT,PRIMARY KEY(pk_int_class_id),FOREIGN KEY(fk_int_dept_id) REFERENCES tbl_department(pk_int_dept_id));

CREATE TABLE tbl_enrollment(pk_int_enrollment_id INT NOT NULL AUTO_INCREMENT,int_count INT,fk_int_class_id INT,PRIMARY KEY(pk_int_enrollment_id),FOREIGN KEY(fk_int_class_id) REFERENCES tbl_class(pk_int_class_id));
