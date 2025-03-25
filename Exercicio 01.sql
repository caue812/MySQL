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

-- Consultar todos os alunos que tem data de nascimento definida
SELECT id, nome, data_nascimento FROM alunos WHERE data_nascimento IS NOT NULL;

UPDATE alunos SET data_nascimento = '1943-04-07' WHERE id = 1;
UPDATE alunos SET data_nascimento = '2000-03-15' WHERE id = 2;

-- Consultar o ano de uma coluna do tipo DATE, DATETIME
SELECT nome, YEAR(data_nascimento) FROM alunos;
-- Consultar o mês de uma coluna do tipo DATE, DATETIMR
SELECT nome, MONTH(data_nascimento) FROM alunos;
-- Consultar o dia de uma coluna do tipo DATE, DATETIME
SELECT nome, DAY(data_nascimento) FROM alunos;
-- Consultar a hora HOUR(coluna)
-- Consultar o minuto MINUTE(coluna)
-- Consultar o segundo SECOND(coluna)

-- Consultar a médiia dos alunos
SELECT
	 id AS 'Código', # AS é um apelido para nomes
     nome AS 'Aluno',
     (nota1 + nota2 + nota3) / 3 AS 'Média'
     FROM alunos;

-- Ordenar os registros por nome em órdem crencente
SELECT id, nome FROM alunos ORDER BY nome ASC; # ascendente
-- Ordenar os registros por nome em órdem decrescente
SELECT id, nome FROM alunos ORDER BY nome DESC; # descendente

-- Consultar a quantidade de registros
SELECT COUNT(id) FROM alunos;
-- Consultar a menor nota 1
SELECT MIN(nota1) FROM alunos;
-- Consultar a maior nota 1
SELECT MAX(nota1) FROM alunos;
-- Consultar a soma das notas 1 
SELECT SUM(nota1) FROM alunos;
-- Consultar a média das notas 1
SELECT AVG(nota1) FROM alunos; # average -- média

-- Adicionar coluna dissciplinas
ALTER TABLE alunos ADD COLUMN dissciplinas VARCHAR(30);
-- Alterar o nome da coluna 'disciplinas'
ALTER TABLE alunos RENAME COLUMN dissciplinas TO disciplinas;
-- Atualizar os dados dos 4 alunos preechendo a nova coluna
UPDATE alunos SET disciplinas = 'Física' WHERE id = 1;
UPDATE alunos SET disciplinas = 'Matemática' WHERE id = 2;
UPDATE alunos SET disciplinas = 'Português' WHERE id = 3;
UPDATE alunos SET disciplinas = 'Física' WHERE id = 4;
-- Inserir 70 alunos novos
INSERT INTO alunos (id, nome, cpf, nota1, nota2, nota3, data_nascimento, disciplinas)
VALUES 
(5, 'Ana Clara Pereira', '123.123.456-20', 7.2, 8.4, 9.1, '2001-05-14', 'Língua Estrangeira Moderna'),
(6, 'Lucas Martins', '123.987.654-10', 6.5, 5.9, 7.8, '2003-10-23', 'Arte'),
(7, 'Juliana Costa', '123.876.543-00', 8.5, 9.0, 8.2, '2002-12-11', 'Educação Física'),
(8, 'Gabriel Souza', '123.432.198-40', 7.3, 6.8, 7.9, '2004-03-02', 'Física'),
(9, 'Beatriz Oliveira', '123.789.456-90', 9.1, 9.5, 9.3, '2003-01-29', 'Química'),
(10, 'Pedro Henrique Silva', '123.654.321-30', 6.2, 7.0, 6.5, '2000-08-19', 'Biologia'),
(11, 'Carla Mendes', '123.321.654-80', 7.8, 8.3, 7.7, '2001-11-09', 'Filosofia'),
(12, 'Rafael Lima', '123.876.987-60', 5.0, 6.2, 6.7, '2002-05-13', 'Sociologia'),
(13, 'Maria Fernanda Souza', '123.246.789-10', 7.5, 6.9, 8.0, '2003-07-04', 'Ensino Religioso'),
(14, 'João Pedro Santos', '123.563.249-90', 6.3, 7.2, 6.8, '2004-02-20', 'Língua Portuguesa'),
(15, 'Amanda Ribeiro', '123.654.987-50', 7.9, 8.7, 8.0, '2001-09-17', 'Matemática'),
(16, 'Vinícius Almeida', '123.098.765-20', 8.0, 8.9, 8.5, '2002-04-12', 'História'),
(17, 'Larissa Pereira', '123.321.987-10', 6.8, 6.7, 7.5, '2000-06-08', 'Geografia'),
(18, 'José Carlos Ferreira', '123.498.765-80', 5.4, 6.0, 5.8, '2004-11-03', 'Língua Estrangeira Moderna'),
(19, 'Bruna Silva', '123.567.890-60', 7.0, 7.5, 7.3, '2003-01-02', 'Arte'),
(20, 'Carlos Eduardo Costa', '123.678.123-30', 8.4, 8.6, 9.0, '2001-03-19', 'Educação Física'),
(21, 'Paula Ribeiro', '123.456.789-40', 6.9, 7.3, 7.8, '2002-07-25', 'Física'),
(22, 'Felipe Souza', '123.234.567-10', 8.0, 8.3, 7.5, '2000-12-14', 'Química'),
(23, 'Elisa Almeida', '123.321.654-70', 8.2, 7.8, 8.5, '2004-09-11', 'Biologia'),
(24, 'Rodrigo Santana', '123.543.210-60', 7.1, 7.4, 6.8, '2003-04-09', 'Filosofia'),
(25, 'Mariana Souza', '123.876.543-10', 6.5, 6.2, 7.6, '2000-02-03', 'Sociologia'),
(26, 'Thiago Silva', '123.987.654-30', 8.5, 9.0, 9.2, '2002-08-20', 'Ensino Religioso'),
(27, 'Júlia Costa', '123.234.567-90', 7.0, 7.2, 7.4, '2001-01-25', 'Língua Portuguesa'),
(28, 'André Ferreira', '123.543.876-20', 6.8, 6.5, 7.0, '2004-03-13', 'Matemática'),
(29, 'Lúcia Pereira', '123.765.432-50', 8.1, 8.4, 7.9, '2003-02-12', 'História'),
(30, 'Lucas Alves', '123.654.321-90', 9.0, 9.2, 8.8, '2002-06-17', 'Geografia'),
(31, 'Sofia Almeida', '123.321.654-90', 6.3, 6.9, 7.1, '2004-01-14', 'Língua Estrangeira Moderna'),
(32, 'Ricardo Santos', '123.987.654-70', 5.6, 6.0, 6.4, '2001-11-22', 'Arte'),
(33, 'Isabella Lima', '123.876.321-40', 7.2, 7.6, 7.4, '2000-05-15', 'Educação Física'),
(34, 'Eduardo Souza', '123.123.765-20', 8.3, 8.1, 7.9, '2004-04-22', 'Física'),
(35, 'Rita de Cássia Silva', '123.654.987-60', 6.7, 6.5, 7.2, '2003-09-05', 'Química'),
(36, 'Carlos Eduardo', '123.432.987-80', 8.2, 8.7, 8.5, '2002-02-14', 'Biologia'),
(37, 'Tatiane Costa', '123.567.123-40', 7.9, 8.0, 8.3, '2001-04-07', 'Filosofia'),
(38, 'Gustavo Souza', '123.432.765-10', 6.8, 6.4, 6.9, '2000-12-25', 'Sociologia'),
(39, 'Ricardo Alves', '123.765.432-10', 7.3, 7.5, 7.6, '2003-10-29', 'Ensino Religioso'),
(40, 'Vera Lucia Costa', '123.876.543-40', 8.5, 8.9, 9.0, '2004-11-09', 'Língua Portuguesa'),
(41, 'Marcos André Souza', '123.543.210-90', 6.9, 6.6, 7.1, '2002-09-18', 'Matemática'),
(42, 'José de Lima', '123.876.432-10', 7.1, 7.2, 7.5, '2000-01-14', 'História'),
(43, 'Gabriela Oliveira', '123.987.654-00', 7.8, 7.5, 8.0, '2004-08-21', 'Geografia'),
(44, 'Maria Clara Souza', '123.654.321-20', 8.0, 8.2, 7.9, '2001-07-17', 'Língua Estrangeira Moderna'),
(45, 'Felipe Rocha', '123.321.654-40', 6.4, 6.9, 7.0, '2002-12-09', 'Arte'),
(46, 'Tânia Santos', '123.765.432-40', 6.2, 5.8, 6.5, '2003-05-25', 'Educação Física'),
(47, 'Thiago Oliveira', '123.432.765-40', 7.3, 7.9, 7.5, '2001-08-03', 'Física'),
(48, 'Tatiane Almeida', '123.876.543-20', 8.6, 8.4, 8.1, '2004-07-22', 'Química'),
(49, 'Simone Costa', '123.234.567-40', 6.9, 7.0, 7.4, '2000-03-19', 'Biologia'),
(50, 'Leonardo Ferreira', '123.765.432-60', 8.5, 8.8, 8.2, '2002-11-04', 'Filosofia'),
(51, 'Eliane Pereira', '123.987.654-30', 7.7, 8.0, 8.1, '2003-04-29', 'Sociologia'),
(52, 'Daniel Oliveira', '123.432.876-30', 6.5, 7.3, 7.2, '2001-09-08', 'Ensino Religioso'),
(53, 'Marcela Souza', '123.234.765-60', 7.8, 7.5, 8.3, '2004-10-16', 'Língua Portuguesa'),
(54, 'Rogério Lima', '123.876.543-80', 6.6, 7.1, 6.8, '2002-05-19', 'Matemática'),
(55, 'Natália Costa', '123.654.321-70', 8.0, 7.9, 8.2, '2001-02-27', 'História'),
(56, 'José Augusto Souza', '123.321.654-50', 6.9, 7.0, 7.3, '2003-08-22', 'Geografia'),
(57, 'Aline Rocha', '123.543.210-80', 7.5, 7.7, 8.0, '2004-12-04', 'Língua Estrangeira Moderna'),
(58, 'Mariana Lima', '123.876.432-20', 8.2, 8.1, 7.9, '2000-04-16', 'Arte'),
(59, 'Victor Almeida', '123.432.876-80', 7.3, 7.5, 7.6, '2001-11-25', 'Educação Física'),
(60, 'Amanda Costa', '123.765.432-30', 6.8, 6.9, 7.0, '2004-06-02', 'Física'),
(61, 'Carlos Antônio Ribeiro', '123.987.654-50', 7.6, 7.3, 8.0, '2003-03-14', 'Química'),
(62, 'Andréa Oliveira', '123.432.765-60', 8.4, 8.6, 8.3, '2002-06-20', 'Biologia'),
(63, 'Renato Souza', '123.234.567-50', 6.3, 6.5, 7.0, '2001-07-01', 'Filosofia'),
(64, 'Cláudia Costa', '123.765.432-10', 7.9, 8.2, 7.6, '2000-09-13', 'Sociologia'),
(65, 'Beatriz Lima', '123.432.765-90', 8.5, 8.7, 8.4, '2004-10-01', 'Ensino Religioso'),
(66, 'Cláudio Pereira', '123.654.321-50', 7.4, 7.2, 7.5, '2003-12-05', 'Língua Portuguesa'),
(67, 'Sílvia Almeida', '123.987.654-40', 6.7, 7.3, 7.1, '2001-01-30', 'Matemática'),
(68, 'Fábio Souza', '123.432.765-10', 7.9, 8.1, 8.0, '2002-04-18', 'História'),
(69, 'Elaine Ribeiro', '123.765.432-80', 8.3, 8.5, 8.2, '2003-07-22', 'Geografia'),
(70, 'Joaquim Ferreira', '123.543.210-60', 6.6, 6.9, 7.0, '2004-03-29', 'Língua Estrangeira Moderna');

-- Consultar alunos em órdem alfabética por diciplinas  e nome
SELECT id, disciplinas, nome FROM alunos ORDER BY disciplinas ASC, nome ASC;

-- Consultar os alunos da disciplina Física ordenados por nome
SELECT
      nome
      FROM alunos
      WHERE disciplinas = 'Física'
      ORDER BY nome ASC;


-- Consultar a quantidade de alunos da disciplina física
SELECT
     COUNT(nome)
     FROM alunos
     WHERE disciplinas = 'Física';

-- Consultar o nome e a quantidade de caracteres do nome 
SELECT
     nome,
     LENGTH(nome) -- LENGTH é o comprimento da string 
     FROM alunos
     ORDER BY LENGTH(nome) DESC;
     
-- Consultar o nome em caixa alta
SELECT UPPER(nome) FROM alunos;
-- Consultar o nome em caixa baixa
SELECT LOWER(nome) FROM alunos;
-- Consultar o nome e disciplinas concatenadas
SELECT CONCAT(nome,"-->", disciplinas) FROM alunos;
-- Consultar no seguite formato: Aluno nasceu em dia do mês de ano
SELECT CONCAT( 
	   nome,
       " nasceu no dia  ",
       DAY(data_nascimento), 
       " mês ",
	   MONTH(data_nascimento),
       " do ano de ",
       YEAR(data_nascimento),
       "."
) AS 'Mensagem'
FROM alunos;

-- Consultar AND 
-- Consultar os alunos que nasceram na mês de janeiro até junho
SELECT
	nome,
    MONTH(data_nascimento)
    FROM alunos
    WHERE MONTH(data_nascimento) >= 1 AND MONTH(data_nascimento) <= 6
    ORDER BY MONTH(data_nascimento) ASC;
-- Consultar os alunos que tem a nota inferior 7 em todas as notas
-- Consultar: nome, nota 1, nota2 e nota 3 <7
-- Filtro: nota 1, nota 2 e nota 3 < 7 
SELECT 
	nome,
    nota1,
    nota2,
    nota3,
    FORMAT((nota1 + nota2 + nota3) / 3, 2) AS 'Média'
    FROM alunos
    WHERE nota1 < 7 AND nota2 < 7 AND nota3 < 7;
    
-- Consultar OR
-- Consultar os alunos das disciplinas 
--     'Educação Física', 'Arte' ou 'português'
SELECT
	nome, disciplinas
    FROM alunos
    WHERE disciplinas = 'Educação Física' OR disciplinas = 'Português' OR disciplinas = 'Arte'
    ORDER BY disciplinas ASC, nome ASC;
    
-- Consultar nome exato 'Silva'
select nome from alunos where nome = 'Silva'; -- Não encontra nenhum, pois não existe um aluno chamado somente 'Silva'

-- Consultar nome começa com 'Silva'
select nome from alunos where nome like 'Silva%'; -- Todos os registros que começam com 'Silva'

-- Consultar nome termina com
select nome from alunos where nome like '%Silva'; -- Todos os registros que terminam com 'Silva'

-- Consultar nome contém em qualquer parte
select nome from alunos where nome like '%Silva%'; -- Todos os registros que contém 'Silva' no começo, meio ou fim.


-- Consultar a data de nascimento formatada (dd/mm/aaaa)
select nome, date_format(data_nascimento, '%d/%m/%Y') from alunos;

-- Consultar os alunos limitando a quantidade
select id, nome from alunos limit 15;
-- Consultar os alunos apresentando a primeira página
select id, nome from alunos limit 0, 15; -- primeiro qual o registro que ele irá pegar, segundo é a quantidade
-- Consultar os alunos apresentando a segunda página
select id, nome from alunos limit 15, 15;
-- Consultar os alunos apresentando a terceira página
select id, nome from alunos limit 30, 15;
-- Consultar os alunos apresentando a quarta página
select id, nome from alunos limit 45, 15;

-- Criar uma tabela
drop table if exists formacoes;
-- PRIMARY KEY (PK): chave primária é um indentificador único dos registros dessa tabela 
-- auto_increment: gera id automaticamente 
-- not null: faz com que a coluna seja obrigatória 
-- unique: faz com que tenha somente um registro com aquela coluna
create table formacoes(
     id int primary key auto_increment,
     nome varchar(100) not null unifique
);
insert into formacoes (nome) values ('SuperDev');
insert into formacoes (nome) values ('Adas');
-- O insert abaixo não funciona pois já temos uma formação com o nome 'Adas'
-- insert into formacoes (nome) values ('Adas');
-- O insert abaixo não funciona pois o nome não pode ser nulo
-- insert into formacoes (nome) values ('null');
select id, nome from formacoes order by id asc;





