-- USE sistema_proway
USE sistema_proway;

DROP TABLE IF EXISTS alunos;

-- Criar uma tabela chamada de alunos com as seguintes colunas:
-- - id inteiro
-- - nome varchar de tamanho máximo 50
CREATE TABLE alunos (
id INT,
nome VARCHAR(50)	
);

-- Executar o comando de detalhamento da tabela (tsik, tsik: describe)
DESCRIBE alunos;

-- Criar um aluno chamado 'Matheus da Silva' com id 1
INSERT  INTO alunos (id,nome) VALUE (1, "Matheus da Silva");

-- Criar um aluno chamado 'Isabela da Silva Souza' com id 2
INSERT INTO alunos (id,nome) VALUE (2, "Isabela da Silva Souza ");

-- Alterar a tabela adicionando uma coluna de cpf do tipo char com máximo de 14 caracteres
ALTER TABLE alunos ADD CPF CHAR(14);

-- Definir o cpf '123.456.780-10' para a aluna Isabela (comando de update)
UPDATE alunos SET CPF = '123.456.780-10' WHERE id = 2;

-- Definir o cpf '123.567.503-10' para o aluno Matheus
UPDATE alunos SET CPF = '123.567.503-10' WHERE id = 1;

-- Alterar a tabela adicionando as nota 1, nota 2 e no alunos SET NOTA1 WHERE id = 1;
ALTER TABLE alunos ADD COLUMN nota1 DOUBLE, ADD COLUMN nota2 DOUBLE, ADD COLUMN nota3 DOUBLE;

-- Definir a nota1 para 7.5, nota 2 para 8.0 e nota 3 para 9.95 para o aluno Matheus
-- Definir as notas para o aluno Matheus
UPDATE alunos SET nota1 = 7.5, nota2 = 8.0, nota3 = 9.95 WHERE id = 1;

-- Definir a nota1 para 4.3, nota 2 para 1.0 e nota 3 para 0 para a aluna Isabela
-- Definir as notas para a aluna Isabela
UPDATE alunos SET nota1 = 4.3, nota2 = 1.0, nota3 = 0 WHERE id = 2;

-- Adicionar a coluna de data de nascimento DATE
ALTER TABLE alunos ADD COLUMN data_nascimento DATE;

-- Criar um aluna chamada 'Silvana da Souza Sena', com notas 6.5, 6.1 e 7.0 com id 3
INSERT INTO alunos (id, nome, nota1, nota2, nota3, data_nascimento) 
VALUES (3, 'Silvana da Souza Sena', 6.5, 6.1, 7.0, '1972-02-28');

-- Criar um aluno chamado 'Enzo Matheus', com cpf '212.319.238-20' e notas 7, 9, 5.5 com id 4
INSERT INTO alunos (id, nome, cpf, nota1, nota2, nota3, data_nascimento) 
VALUES (4, 'Enzo Matheus', '212.319.238-20', 7, 9, 5.5, '2005-06-10');

-- Consultar os registros da tabela alunos
SELECT * FROM alunos;





