/*Script para inerir dados nas tabelas*/

/*Dados da tabela de posts*/

INSERT INTO posts(
    post_id,
    title,
    description,
    created_at
) VALUES (
    1,
    'Hoje a aula é sobre banco de dados',
    'A aula está muito interessante, aprendemos os comandos novos',
    '2025-08-05 22:10'
);

INSERT INTO posts(
    post_id,
    title,
    description,
    created_at
) VALUES (
    2,
    'Hoje a aula é sobre poo',
    'A aula está muito interessante, vamos aprender Java',
    '2025-08-05 22:20'
);

/*Dados da tabela de comentários*/

INSERT INTO comments(
    comment_id,
    comment,
    created_at,
    post_id
) VALUES (
    1,
    'A aula está interessante',
    '2025-08-05 22:33',
    1
);

INSERT INTO comments(
    comment_id,
    comment,
    created_at,
    post_id
) VALUES (
    2,
    'A aula foi ótima!',
    '2025-08-05 22:50',
    1
);

INSERT INTO comments(
    comment_id,
    comment,
    created_at,
    post_id
) VALUES (
    3,
    'A aula tem muito slide',
    '2025-08-05 22:43',
    2
);

INSERT INTO comments(
    comment_id,
    comment,
    created_at,
    post_id
) VALUES (
    4,
    'A aula tem muito slide',
    '2025-08-05 23:05',
    2
);