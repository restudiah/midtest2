WITH soal_1 AS (
    SELECT
        num,
        id,
        ROW_NUMBER() OVER (ORDER BY id) - ROW_NUMBER() OVER (PARTITION BY num ORDER BY id) AS save
    FROM
        input_table
) select num from soal_1
GROUP by num, save
HAVING
    COUNT(*) >= 3;