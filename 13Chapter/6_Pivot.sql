-- Active: 1674380570315@@127.0.0.1@3306@sql_tutorial
SELECT * FROM tseason;

SELECT *
FROM tseason
PIVOT (MAX(sale) FOR season IN ('봄', '여름', '가을', '겨울'));