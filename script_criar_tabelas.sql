/*Removendo as tabelas via SQL*/

DROP TABLE comments, posts;

/*Criando a tabela de users*/

CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(30) UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

/*Script que cria as tabelas no banco de dados*/

/*Tabela para armazenar os posts*/

CREATE TABLE posts(
    post_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT now(),
    user_id INT REFERENCES users(user_id)
);

/*Tabela para armazenar os comentários*/

CREATE TABLE comments(
    comment_id SERIAL PRIMARY KEY,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    post_id INT REFERENCES posts(post_id),
    user_id INT REFERENCES users(user_id)
);