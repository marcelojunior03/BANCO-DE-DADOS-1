INSERT INTO profissionais (nome, funcao, telefone, email) VALUES
('João', 'Tosador', '19912345678', 'joao@gmail.com'),
('Milena', 'Veterinária', '19922334455', 'milena@gmail.com'),
('Kleber', 'Assistênte veterinário', '19966778899', 'kleber@gmail.com');

INSERT INTO servicos_prestados (tipo_servico, profissional_id, valor, duracao_media) VALUES
('Banho e tosa', 1, 100.00, 120),
('Vacinação', 3, 50.00, 10),
('Cirurgia', 2, 400.00, 180);

INSERT INTO tutores (cpf, nome, telefone, email, endereco) VALUES
('12345678901', 'Mateus', '19965657413', 'mateus@hotmail.com', 'Av. Pio XII'),
('11223344556', 'Jennifer', '19933772288', 'jenni@gmail.com', 'R. Italia'),
('12312345678', 'Maria', '19978797675', 'mariaa@hotmail.com', 'R. Antonio Tognin');

INSERT INTO animais (tutor_id, nome, especie, raca) VALUES
('12345678901', 'Bombom', 'Cachorro', 'Yorkshire'),
('11223344556', 'Marley', 'Cachorro', 'Shih Tzu'),
('12312345678', 'Marie', 'Gato', 'Angorá Turco');

INSERT INTO atendimentos (animal_id, servico_id, profissional_id, avaliacao) VALUES
(2, 3, 2, 'Ótimo atendimento!'),
(3, 1, 1, 'Minha gata ficou linda!'),
(1, 2, 3, 'Foi super rápido!');
