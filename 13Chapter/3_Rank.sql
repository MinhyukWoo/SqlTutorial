
SELECT
    name,
    depart,
    salary,
    RANK() OVER(ORDER BY salary DESC) AS "연봉순위"
FROM tstaff;

SELECT
    name,
    depart,
    salary,
    RANK() OVER(ORDER BY salary DESC) AS "연봉순위"
FROM tstaff
ORDER BY name;

SELECT
    DENSE_RANK() OVER(ORDER BY salary DESC) AS "연봉순위",
    name,
    depart,
    salary
FROM tstaff;