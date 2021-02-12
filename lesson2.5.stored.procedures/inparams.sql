DROP PROCEDURE IF EXISTS input;

DELIMITER $$
CREATE PROCEDURE input(
	IN actor_id_param INT
) 
BEGIN
	SELECT CONCAT(first_name,' ', last_name) AS full_name,
		   COUNT(fa.film_id) AS movies
    FROM actor a JOIN film_actor fa 
		ON a.actor_id = fa.actor_id
    WHERE a.actor_id = actor_id_param;
END$$
DELIMITER ;

CALL input(1); 


