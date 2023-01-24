SELECT
    ROW_NUMBER() OVER(ORDER BY name) AS "순서",
    name, depart, salary
FROM tstaff;

SELECT
    ROW_NUMBER() OVER(ORDER BY name) AS "순서",
    name, depart, salary
FROM tstaff
OFFSET 8 ROWS FETCH NEXT 4 ROWS ONLY;