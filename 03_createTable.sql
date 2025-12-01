SELECT 
    A.nome AS aluno,
    A.cpf,
    A.email,
    T.nome AS treino,
    T.descricao AS descricao_treino,
    E.nome AS exercicio,
    E.grupo_muscular,
    E.descricao AS descricao_exercicio,
    AF.peso,
    AF.altura,
    AF.cintura,
    AF.peito,
    AF.biceps,
    AF.data_avaliacao
FROM Aluno A
LEFT JOIN Treino T ON T.id_aluno = A.id_aluno
LEFT JOIN Exercicio E ON E.id_treino = T.id_treino
LEFT JOIN Avaliacao_fisica AF ON AF.id_aluno = A.id_aluno
WHERE A.nome = 'João';


SELECT 
    A.nome AS aluno,
    A.cpf,
    A.email,
    T.nome AS treino,
    T.descricao AS descricao_treino,
    E.nome AS exercicio,
    E.grupo_muscular,
    E.descricao AS descricao_exercicio,
    AF.peso,
    AF.altura,
    AF.cintura,
    AF.peito,
    AF.biceps,
    AF.data_avaliacao
FROM Aluno A
LEFT JOIN Treino T ON T.id_aluno = A.id_aluno
LEFT JOIN Exercicio E ON E.id_treino = T.id_treino
LEFT JOIN Avaliacao_fisica AF ON AF.id_aluno = A.id_aluno
WHERE A.nome = 'Maria';

SELECT 
    A.nome AS aluno,
    A.cpf,
    A.email,
    T.nome AS treino,
    T.descricao AS descricao_treino,
    E.nome AS exercicio,
    E.grupo_muscular,
    E.descricao AS descricao_exercicio,
    AF.peso,
    AF.altura,
    AF.cintura,
    AF.peito,
    AF.biceps,
    AF.data_avaliacao
FROM Aluno A
LEFT JOIN Treino T ON T.id_aluno = A.id_aluno
LEFT JOIN Exercicio E ON E.id_treino = T.id_treino
LEFT JOIN Avaliacao_fisica AF ON AF.id_aluno = A.id_aluno
WHERE A.nome = 'Gustavo';

SELECT 
    A.nome AS aluno,
    A.cpf,
    A.email,
    T.nome AS treino,
    T.descricao AS descricao_treino,
    E.nome AS exercicio,
    E.grupo_muscular,
    E.descricao AS descricao_exercicio,
    AF.peso,
    AF.altura,
    AF.cintura,
    AF.peito,
    AF.biceps,
    AF.data_avaliacao
FROM Aluno A
LEFT JOIN Treino T ON T.id_aluno = A.id_aluno
LEFT JOIN Exercicio E ON E.id_treino = T.id_treino
LEFT JOIN Avaliacao_fisica AF ON AF.id_aluno = A.id_aluno
WHERE A.nome = 'Sofia';


SELECT 
    A.nome AS aluno,
    A.cpf,
    A.email,
    T.nome AS treino,
    T.descricao AS descricao_treino,
    E.nome AS exercicio,
    E.grupo_muscular,
    E.descricao AS descricao_exercicio,
    AF.peso,
    AF.altura,
    AF.cintura,
    AF.peito,
    AF.biceps,
    AF.data_avaliacao
FROM Aluno A
LEFT JOIN Treino T ON T.id_aluno = A.id_aluno
LEFT JOIN Exercicio E ON E.id_treino = T.id_treino
LEFT JOIN Avaliacao_fisica AF ON AF.id_aluno = A.id_aluno
WHERE A.nome = 'Noah';

