SELECT
	*
FROM
	employees
WHERE
	last_name = 'Denis' AND (gender = "M" OR gender = "F");
    
SELECT
	*
FROM
	employees
WHERE
	first_name = "Elvis";
    
    
SELECT
	*
FROM
	employees
WHERE
	first_name = 'Kellie'
AND
	gender = "F";
    
SELECT
	*
FROM
	employees
WHERE
	gender = "F" AND (first_name = 'Kellie' OR First_name = "Aruna");
    
SELECT
	*
FROM
	employees
WHERE
	first_name = 'Cathie'
		OR first_name = 'Mark'
		OR First_name = "Nathan";
        
SELECT
	*
FROM
	employees
WHERE
	first_name IN ('Cathie', 'Mark', "Nathan");
    
    
SELECT
	*
FROM
	employees
WHERE
	first_name NOT IN ('John', 'Mark', 'Jacob');
    
