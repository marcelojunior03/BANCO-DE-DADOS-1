/*Listar todos os usuários*/

SELECT * FROM users;

/*Listar um usuário filtrando pelo user_id*/

SELECT * FROM users WHERE user_id = 1;

/*Listar somente as colunas username e created_at*/

SELECT username, created_at FROM users;

/*Listar todos os posts*/

SELECT * FROM posts;

/*Listar todos os comentários*/

SELECT * FROM comments;

/*Listar todos os posts(title) de um usuário, mostrando junto seu username*/

SELECT p.title, u.username 
FROM posts AS p
INNER JOIN users AS u ON u.user_id = p.user_id
WHERE p.user_id = 1;

/*Listar um post(title, description) pelo seu id e seus comentários(comments)*/

SELECT p.title, p.description, c.comment
FROM posts AS p
INNER JOIN comments AS c ON c.post_id = p.post_id
WHERE p.post_id = 2;

/*Listar o usuário, seus posts e seus comentários*/

SELECT u.username, p.title, p.description, c.comment
FROM users AS u
INNER JOIN posts AS p ON p.user_id = u.user_id
INNER JOIN comments AS c ON c.post_id = p.post_id
WHERE u.user_id = 1;