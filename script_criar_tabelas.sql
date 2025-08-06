/*Script que cria as tabelas no banco de dados*/

/*Tabela para armazenar os posts*/

CREATE TABLE posts(
    post_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL
);

/*Tabela para armazenar os comentários*/

CREATE TABLE comments(
    comment_id INT PRIMARY KEY,
    comment TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    post_id INT REFERENCES posts(post_id)
);