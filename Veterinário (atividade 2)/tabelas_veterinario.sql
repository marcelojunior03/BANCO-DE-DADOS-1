CREATE TABLE profissionais(
    profissional_id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    funcao VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE servicos_prestados(
    servico_id SERIAL PRIMARY KEY,
    profissional_id INT NOT NULL,
    tipo_servico VARCHAR(40) NOT NULL,
    valor DECIMAL(10,2) NOT NULL CHECK (valor > 0),
    duracao_media INT,
    FOREIGN KEY (profissional_id) REFERENCES profissionais(profissional_id)
);

CREATE TABLE tutores(
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    telefone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    endereco VARCHAR(225) NOT NULL
);

CREATE TABLE animais(
    animal_id SERIAL PRIMARY KEY,
    tutor_id VARCHAR(11) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    especie VARCHAR(20) NOT NULL,
    raca VARCHAR(50) NOT NULL,
    FOREIGN KEY (tutor_id) REFERENCES tutores(cpf)
);

CREATE TABLE atendimentos(
    atendimento_id SERIAL PRIMARY KEY,
    animal_id INT NOT NULL,
    servico_id INT NOT NULL,
    profissional_id INT NOT NULL,
    avaliacao VARCHAR(200),
    FOREIGN KEY (animal_id) REFERENCES animais(animal_id),
    FOREIGN KEY (servico_id) REFERENCES servicos_prestados(servico_id),
    FOREIGN KEY (profissional_id) REFERENCES profissionais(profissional_id)
);
