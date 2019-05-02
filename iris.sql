SHOW DATABASES

SHOW TABLES

DROP TABLE iris
DROP table iris_ext
select * from csv.`c:\\spark\\data\\iris.csv`

CREATE TABLE iris
USING csv
OPTIONS (path "c:\\spark\\data\\iris.csv", header "true", inferSchema "true")

show create table iris



SELECT * from iris



CREATE EXTERNAL TABLE 
iris_ext 
STORED AS PARQUET  LOCATION 'c:\\spark\\data\\iris'
select * from iris

show tables

SELECT * from iris_ext

DESCRIBE iris_ext

show CREATE table iris_ext



SELECT count(*) from iris

SELECT Species, count(*) as cnt from iris group by 1


