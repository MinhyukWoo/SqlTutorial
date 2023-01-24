-- Active: 1674380570315@@127.0.0.1@3306@sql_tutorial
SELECT name, depart, salary, SUM(salary) OVER() FROM tstaff;
SELECT
    name,
    depart,
    salary,
    ROUND(salary * 100.0 / SUM(salary) OVER(), 2) AS "월급 비율"
FROM tstaff
ORDER BY name;

SELECT
    name,
    depart,
    salary,
    SUM(salary) OVER(PARTITION BY depart) AS "부서월급총합"
FROM tStaff
ORDER BY name;

SELECT name, depart, salary, SUM(salary) OVER(ORDER BY name) AS "누적월급" FROM tstaff;

SELECT
    name,
    depart,
    salary,
    ROUND(
        AVG(salary) OVER(
            ORDER BY name ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        )
    ) AS "3행 이동평균"
FROM tstaff;

SELECT
    name,
    depart,
    salary,
    ROUND(
        SUM(salary) OVER(
            ORDER BY salary RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        )
    ) AS "누적월급"
FROM tstaff;
