USE sistema_proway;

DROP TABLE IF EXISTS professores;

-- 1. Criar a tabela "professores"
CREATE TABLE professores (
    id INTEGER,
    nome VARCHAR(60)
);

-- 3. Detalhar a tabela "professores"
DESCRIBE professores;

-- 4. Inserir os professores "Ana Beatriz Santos" e "Ricardo Gomes"
INSERT INTO professores (id, nome) VALUES (1, 'Ana Beatriz Santos');
INSERT INTO professores (id, nome) VALUES (2, 'Ricardo Gomes');

-- 5. Alterar a tabela para adicionar a coluna "cpf"
ALTER TABLE professores ADD COLUMN cpf CHAR(14);

-- 6. Atualizar os valores de cpf para os professores
UPDATE professores SET cpf = '987.654.321-00' WHERE id = 1;
UPDATE professores SET cpf = '123.321.123-99' WHERE id = 2;

-- 7. Alterar a tabela para adicionar a coluna "salario"
ALTER TABLE professores ADD COLUMN salario DOUBLE;

-- 8. Atualizar os valores de salário para os professores
UPDATE professores SET salario = 4500.75 WHERE id = 1;
UPDATE professores SET salario = 5200.50 WHERE id = 2;

-- 9. Alterar a tabela para adicionar a coluna "data_admissao"
ALTER TABLE professores ADD COLUMN data_admissao DATE;

-- 10. Atualizar as datas de admissão para os professores
UPDATE professores SET data_admissao = '2015-08-15' WHERE id = 1;
UPDATE professores SET data_admissao = '2018-03-01' WHERE id = 2;

-- 11. Alterar a tabela para adicionar a coluna "disciplina"
ALTER TABLE professores ADD COLUMN disciplina VARCHAR(50);

-- 12. Atualizar as disciplinas para os professores
UPDATE professores SET disciplina = 'Matemática' WHERE id = 1;
UPDATE professores SET disciplina = 'História' WHERE id = 2;

-- 13. Inserir o professor "Fernando Oliveira"
INSERT INTO professores (id, cpf, salario, data_admissao, disciplina) 
VALUES (3, '321.654.987-11', 6100.00, '2020-01-10', 'Física');

-- 14. Inserir a professora "Mariana Ribeiro"
INSERT INTO professores (id, cpf, salario, data_admissao, disciplina) 
VALUES (4, '159.753.486-22', 5800.25, '2019-05-20', 'Química');

-- 2. Consultar todos os registros da tabela "professores"
SELECT * FROM professores;