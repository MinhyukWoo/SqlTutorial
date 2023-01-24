SELECT
    NTILE(9) OVER(ORDER BY salary DESC) AS "월급구간",
    name,
    depart,
    salary
FROM tstaff;

SELECT * FROM tmonthsale;

SELECT
    tmonthsale.*,
    LAG(sales) OVER(ORDER BY year, month) AS lastMonthSale,
    LEAD(sales) OVER(ORDER BY year, month) AS nextMonthSale
FROM tmonthsale;

SELECT
    tmonthsale.*,
    sales - LAG(sales) OVER(ORDER BY year, month) AS increaseSales
FROM tmonthsale;

SELECT
    tmonthsale.*,
    ROUND(
        sales * 100 / LAG(sales) OVER(ORDER BY year, month)
    ) - 100 AS increaseSalesRate
FROM tmonthsale;

SELECT
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS "순번",
    name,
    salary,
    ROUND(CUME_DIST() OVER(ORDER BY salary DESC), 2) AS "CUME_DIST",
    ROUND(PERCENT_RANK() OVER(ORDER BY salary DESC), 2) AS "PERCENT_RANK"
FROM tstaff;

SELECT
    name, depart, salary,
    MIN(salary) OVER(PARTITION BY depart) AS "부서내최저월급"
FROM tstaff
ORDER BY name;

SELECT
    name, depart, salary,
    FIRST_VALUE(salary) OVER(
        PARTITION BY depart ORDER BY salary
    ) AS "부서내최저월급"
FROM tstaff
ORDER BY name;

SELECT
    year,
    month,
    sales,
    ROUND(
        PERCENTILE_CONT(0.5)
            WITHIN GROUP(ORDER BY sales)
            OVER(PARTITION BY year),
        2
    )
    AS CONT,
    PERCENTILE_DISC(0.5)
        WITHIN GROUP(ORDER BY sales)
        OVER(PARTITION BY year)
    AS DISC,
    AVG(sales) OVER(PARTITION BY year) AS AVG
FROM tmonthsale;