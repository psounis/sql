-- example 3.1 
SELECT CONCAT('a', 'b'), CONCAT_WS(',', 'a', 'b', 'c');
SELECT LTRIM('  aa  '), RTRIM('  aa  '), TRIM('  aa  ');
SELECT LENGTH(' a ');
SELECT LEFT('abcd', 2), RIGHT('abcd', 2);
SELECT SUBSTRING('abcd', 2, 2);
SELECT REPLACE('abcd', 'bc', 'XXXX');
SELECT INSERT('abcd', 2, 2, 'XXXX');
SELECT REVERSE('abcd');
SELECT LOWER('aBcD'), UPPER('aBcD');
SELECT LPAD('aa', 4, 'X'), RPAD('aa', 4, 'X');
SELECT REPEAT('abcd', 5);