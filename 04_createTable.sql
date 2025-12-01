UPDATE Aluno
SET telefone = '11999990000'
WHERE nome = 'João';


UPDATE Aluno
SET email = 'maria_silva@academia.com'
WHERE nome = 'Maria';


UPDATE Pagamentos
SET valor_pago = 150.00
WHERE id_aluno = (SELECT id_aluno FROM Aluno WHERE nome = 'Gustavo');


UPDATE Avaliacao_fisica
SET peso = 63.5, altura = 1.67
WHERE id_aluno = (SELECT id_aluno FROM Aluno WHERE nome = 'Sofia');


UPDATE Exercicio
SET descricao = 'Execução com foco em amplitude total'
WHERE id_exercicio = 1; 

DELETE FROM Avaliacao_fisica
WHERE id_aluno = (SELECT id_aluno FROM Aluno WHERE nome = 'Noah');

DELETE FROM Exercicio
WHERE id_treino = (SELECT id_treino FROM Treino WHERE id_aluno =
                    (SELECT id_aluno FROM Aluno WHERE nome = 'Sofia'));

DELETE FROM Pagamentos
WHERE id_pagamento = 1; 
