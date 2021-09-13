

#SELECT * FROM stocks.ccc LIMIT 5;

SELECT
ticker AS "SYM",
price AS "Kurs in $",
c_name AS "Unternehmen",
industry AS "Branche"
FROM stocks.ccc
LIMIT 10
#LIMIT 5; 5 from 0
#LIMIT 200,10; # 10 lines starting from 200 th row.
;



