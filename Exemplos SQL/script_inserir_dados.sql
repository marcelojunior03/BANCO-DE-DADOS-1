/*Inserindo registros na tabelade usuários*/

INSERT INTO users(
    username,
    email
) VALUES
('moi123', 'moises@gmail.com'),
('matheus987', 'matheus@gmail.com'),
('wendel1456', 'wendel@gmail.com');

/*Script para inerir dados nas tabelas*/

/*Dados da tabela de posts*/

INSERT INTO posts(
    title,
    description,
    user_id
) VALUES (
    'Hoje a aula é sobre banco de dados',
    'Aprendemos a deixar o ID automático',
    1
),
(
    'Hoje a aula é sobre poo',
    'A aula está muito interessante, vamos aprender Java',
    2
);

/*Dados da tabela de comentários*/

INSERT INTO comments(
    comment,
    post_id,
    user_id
) VALUES (
    'A aula está interessante',
    1,
    1
),
(
    'A aula foi ótima!',
    1,
    2
),
(
    'A aula tem muito slide',
    2,
    3
),
(
    'A aula rendeu',
    2,
    2
);