DROP PROCEDURE IF EXISTS output;

DELIMITER $$
CREATE PROCEDURE output(
	IN actor_id_param INT,
    OUT actor_movies INT
) 
BEGIN
	SELECT COUNT(fa.film_id) AS movies
    INTO actor_movies
    FROM actor a JOIN film_actor fa 
		ON a.actor_id = fa.actor_id
    WHERE a.actor_id = actor_id_param;
END$$
DELIMITER ;

CALL output(1, @cnt); 
SELECT @cnt;


