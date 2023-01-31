SELECT * 
FROM roles;

SELECT role_title, COUNT(id) AS count_title
FROM roles
GROUP BY roles_title;