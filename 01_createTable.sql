PRAGMA foreign_keys = ON;

-- 1) ALUNO
CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cpf TEXT UNIQUE,
    data_nascimento TEXT,
    telefone TEXT,
    email TEXT,
    endereco TEXT,
    data_matricula TEXT,
    status TEXT,
    observacoes TEXT
);

-- 2) INSTRUTOR
CREATE TABLE Instrutor (
    id_instrutor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cpf TEXT UNIQUE,
    telefone TEXT,
    email TEXT,
    especialidade TEXT,
    data_admissao TEXT
);

-- 3) PLANO
CREATE TABLE Plano (
    id_plano INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    duracao_meses INTEGER,
    valor REAL,
    descricao TEXT,
    id_aluno INTEGER,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);

-- 4) TREINO
CREATE TABLE Treino (
    id_treino INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT,
    tipo TEXT,
    nivel TEXT,
    id_aluno INTEGER,
    id_instrutor INTEGER,
    FOREIGN KEY(id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY(id_instrutor) REFERENCES Instrutor(id_instrutor)
);

-- 5) EXERCICIO
CREATE TABLE Exercicio (
    id_exercicio INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    grupo_muscular TEXT,
    descricao TEXT,
    equipamento TEXT, -- corrigido!
    id_instrutor INTEGER,
    id_treino INTEGER,
    FOREIGN KEY(id_instrutor) REFERENCES Instrutor(id_instrutor),
    FOREIGN KEY(id_treino) REFERENCES Treino(id_treino)
);

-- 6) AGENDAMENTO DE AULA
CREATE TABLE Agendamento_de_aula (
    id_agendamento_aula INTEGER PRIMARY KEY AUTOINCREMENT,
    data TEXT,
    hora_inicio TEXT, -- corrigido!
    hora_fim TEXT,
    sala TEXT,
    vagas INTEGER,
    id_aluno INTEGER,
    id_instrutor INTEGER,
    FOREIGN KEY(id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY(id_instrutor) REFERENCES Instrutor(id_instrutor)
);

-- 7) PAGAMENTOS
CREATE TABLE Pagamentos (
    id_pagamento INTEGER PRIMARY KEY AUTOINCREMENT,
    valor_pago REAL,
    data_pagamento TEXT,
    data_vencimento TEXT,
    forma_pagamento TEXT,
    status TEXT,
    referencia TEXT,
    id_aluno INTEGER,
    id_plano INTEGER,
    FOREIGN KEY(id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY(id_plano) REFERENCES Plano(id_plano)
);

-- 8) AVALIAÇÃO FÍSICA
CREATE TABLE Avaliacao_fisica (
    id_avaliacao INTEGER PRIMARY KEY AUTOINCREMENT,
    data_avaliacao TEXT,
    peso REAL,
    altura REAL,
    cintura REAL,
    quadril REAL,
    peito REAL,
    biceps REAL,
    observacao TEXT,
    id_aluno INTEGER,
    id_instrutor INTEGER,
    FOREIGN KEY(id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY(id_instrutor) REFERENCES Instrutor(id_instrutor)
);
