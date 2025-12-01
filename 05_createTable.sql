INSERT INTO Aluno (nome, cpf, data_nascimento, telefone, email, endereco, data_matricula, status, observacoes)
VALUES
('João Silva', '11111111111', '1998-05-12', '11999990001', 'joao@email.com', 'Rua A, 123', '2024-01-10', 'ativo', ''),
('Maria Souza', '22222222222', '2000-08-20', '11999990002', 'maria@email.com', 'Rua B, 321', '2024-01-11', 'ativo', ''),
('Gustavo Lima', '33333333333', '1996-03-14', '11999990003', 'gustavo@email.com', 'Rua C, 111', '2024-01-12', 'ativo', ''),
('Sofia Mendes', '44444444444', '1999-09-09', '11999990004', 'sofia@email.com', 'Rua D, 222', '2024-01-13', 'ativo', ''),
('Noah Alves', '55555555555', '1997-11-02', '11999990005', 'noah@email.com', 'Rua E, 333', '2024-01-14', 'ativo', '');


INSERT INTO Instrutor (nome, cpf, telefone, email, especialidade, data_admissao)
VALUES
('Carlos Personal', '99999999999', '11988887777', 'carlos@academia.com', 'Musculação', '2020-01-01'),
('Fernanda Coach', '88888888888', '11977776666', 'fernanda@academia.com', 'Cardio', '2021-03-10');


INSERT INTO Plano (nome, duracao_meses, valor, descricao)
VALUES
('Mensal Básico', 1, 99.90, 'Treino livre'),
('Mensal Premium', 1, 149.90, 'Treino + aulas'),
('Trimestral Premium', 3, 399.90, 'Treino + aulas + avaliação');

INSERT INTO Treino (nome, descricao, tipo, nivel, id_aluno, id_instrutor)
VALUES
('Treino João', 'Treino focado em ganho de massa', 'Hipertrofia', 'Intermediário', 1, 1),
('Treino Maria', 'Treino para definição muscular', 'Resistência', 'Intermediário', 2, 1),
('Treino Gustavo', 'Cardio para perda de peso', 'Cardio', 'Iniciante', 3, 2),
('Treino Sofia', 'Treino feminino completo', 'Funcional', 'Intermediário', 4, 2),
('Treino Noah', 'Treino avançado de força', 'Força', 'Avançado', 5, 1);

INSERT INTO Exercicio (nome, grupo_muscular, descricao, equipamento)
VALUES
('Supino Reto', 'Peito', 'Exercício para peitoral', 'Barra'),
('Agachamento', 'Pernas', 'Exercício para quadríceps/glúteo', 'Barra'),
('Rosca Direta', 'Braços', 'Exercício para bíceps', 'Halteres'),
('Prancha', 'Core', 'Exercício isométrico', 'Peso corporal');

INSERT INTO Exercicio (nome, grupo_muscular, descricao, equipamento)
VALUES ('Flexão', 'Peito', 'Exercício de peito', 'Peso corporal');

INSERT INTO Exercicio (nome, grupo_muscular, descricao, equipamento)
VALUES ('Puxada Alta', 'Costas', 'Exercício para dorsal', 'Máquina');

INSERT INTO Exercicio (nome, grupo_muscular, descricao, equipamento)
VALUES ('Abdominal', 'Core', 'Exercício para abdômen', 'Colchonete');

INSERT INTO Avaliacao_fisica (data_avaliacao, peso, altura, cintura, quadril, peito, biceps, observacao, id_aluno, id_instrutor)
VALUES
('2024-01-15', 80, 1.80, 85, 95, 98, 34, 'Boa evolução', 1, 1),
('2024-01-16', 62, 1.65, 70, 90, 85, 28, 'Ótima postura', 2, 1),
('2024-01-17', 95, 1.78, 100, 105, 110, 36, 'Precisa focar no cardio', 3, 2),
('2024-01-18', 58, 1.70, 66, 92, 83, 27, 'Boa resistência', 4, 2),
('2024-01-19', 82, 1.82, 90, 96, 99, 35, 'Forte e consistente', 5, 1);
