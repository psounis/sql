-- examples 2.1
SELECT * FROM city WHERE name REGEXP '^ar';
SELECT * FROM city WHERE name REGEXP 'me';
SELECT * FROM city WHERE name REGEXP 'nia$';
SELECT * FROM city WHERE name REGEXP '^.r';

-- examples 2.2
SELECT * FROM city WHERE name REGEXP '^b.*e.*a$';
SELECT * FROM city WHERE name REGEXP 'ab.*ab';
SELECT * FROM city WHERE name REGEXP 'abb';
SELECT * FROM city WHERE name REGEXP 'ab{2}';
SELECT * FROM city WHERE name REGEXP '^(.{5})*$'; -- (.....)(.....)(.....)
-- and some more
SELECT * FROM city WHERE name REGEXP '(ab){2}'; -- abab
SELECT * FROM city WHERE name REGEXP '(ab.*){2}'; -- ab.*ab
SELECT * FROM city WHERE name REGEXP '(ab{2}.*){2}'; -- abb.*abb

-- examples 2.3
SELECT * FROM city WHERE name REGEXP '[aeuioy]{3}';
SELECT * FROM city WHERE name REGEXP '\\.';
SELECT * FROM city WHERE name NOT REGEXP '^[[:alpha:]]+$';
SELECT * FROM city WHERE name REGEXP '^[^A-KN-Z][a-z]+$';

-- examples 2.4
SELECT * FROM city WHERE name REGEXP 'ree|ceb';