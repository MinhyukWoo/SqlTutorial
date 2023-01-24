-- Active: 1674380570315@@127.0.0.1@3306@sql_tutorial
SELECT * FROM tstaff;
SELECT gender, SUM(salary) FROM tstaff GROUP BY gender;
SELECT depart, SUM(salary) FROM tstaff GROUP BY depart;
SELECT depart, gender, SUM(salary) FROM tstaff GROUP BY gender, depart;
SELECT depart, SUM(salary) FROM tstaff GROUP BY depart WITH ROLLUP;
SELECT depart, gender, SUM(salary) FROM tstaff GROUP BY depart, gender WITH ROLLUP;
SELECT depart, gender, SUM(salary)FROM tstaff GROUP BY gender, depart WITH ROLLUP
UNION
SELECT depart, gender, SUM(salary) FROM tstaff GROUP BY depart, gender WITH ROLLUP;
SELECT GROUPING(depart), depart, gender, SUM(salary) FROM tstaff GROUP BY depart, gender WITH ROLLUP;