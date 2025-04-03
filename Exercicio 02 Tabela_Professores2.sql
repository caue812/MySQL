USE sistema_proway;

DROP TABLE IF EXISTS professores;

-- Criar uma tabela chamada de professores com as seguintes colunas:
-- - id INTEGER
-- - nome VARCHAR(60)
CREATE TABLE professores (
id INT,
nome VARCHAR(50)
);

-- Consultar todos os registros da tabela professores
-- Executar o comando de detalhamento da tabela (DESCRIBE)

-- Inserir um professor chamado 'Ana Beatriz Santos' com id 1
-- Inserir um professor chamado 'Ricardo Gomes' com id 2

-- Alterar a tabela adicionando uma coluna cpf CHAR(14)
-- Atualizar o cpf para Ana → '987.654.321-00'
-- Atualizar o cpf para Ricardo → '123.321.123-99'

-- Alterar a tabela adicionando a coluna salario DOUBLE
-- Atualizar o salario de Ana → 4500.75
-- Atualizar o salario de Ricardo → 5200.50

-- Alterar a tabela adicionando a coluna data_admissao DATE
-- Atualizar data_admissao de Ana → '2015-08-15'
-- Atualizar data_admissao de Ricardo → '2018-03-01'

-- Alterar a tabela adicionando a coluna disciplina VARCHAR(50)
-- Atualizar disciplina de Ana → 'Matemática'
-- Atualizar disciplina de Ricardo → 'História'

-- Inserir um professor chamado 'Fernando Oliveira' com:
-- id 3, cpf '321.654.987-11', salario 6100.00, data_admissao '2020-01-10', disciplina 'Física'

-- Inserir uma professora chamada 'Mariana Ribeiro' com:
-- id 4, cpf '159.753.486-22', salario 5800.25, data_admissao '2019-05-20', disciplina 'Química'


-- Consultar todos os registros da tabela professores

-- Consultar o ano de admissão de um professor

-- Consultar o mês de admissão de um professor

-- Consultar o dia de admissão de um professor

-- Consultar a média dos salários dos professores

-- Ordenar os registros por nome em ordem crescente

-- Ordenar os registros por nome em ordem decrescente

-- Consultar a quantidade de registros na tabela professores

-- Consultar o menor salário entre os professores

-- Consultar o maior salário entre os professores

-- Consultar a soma dos salários de todos os professores

-- Consultar a média dos salários dos professores

-- Adicionar uma coluna cpf (CHAR(14)) à tabela professores

-- Atualizar o cpf de um professor (ex: para o professor com id = 1)

-- Alterar a tabela adicionando uma coluna salario (DOUBLE)

-- Atualizar o salário de um professor (ex: para o professor com id = 1)

-- Alterar a tabela adicionando a coluna data_admissao (DATE)

-- Atualizar a data de admissão de um professor (ex: para o professor com id = 1)

-- Alterar a tabela adicionando a coluna disciplina (VARCHAR(50))

-- Atualizar a disciplina de um professor (ex: para o professor com id = 1)

-- Inserir um professor chamado 'Fernando Oliveira' com:
-- id 3, cpf '321.654.987-11', salario 6100.00, data_admissao '2020-01-10', disciplina 'Física'

-- Inserir um professor chamado 'Mariana Ribeiro' com:
-- id 4, cpf '159.753.486-22', salario 5800.25, data_admissao '2019-05-20', disciplina 'Química'

-- Consultar todos os professores com seus respectivos salários e disciplinas

-- Consultar os professores em ordem alfabética por nome e disciplina

-- Consultar os professores da disciplina 'Matemática' ordenados por nome

-- Consultar a quantidade de professores da disciplina 'Matemática'

-- Consultar o nome e a quantidade de caracteres do nome dos professores

-- Consultar o nome dos professores em caixa alta

-- Consultar o nome dos professores em caixa baixa

-- Consultar o nome e a disciplina concatenados (ex: 'Ana Beatriz Santos -> Matemática')

-- Consultar os professores com a mensagem: "Professor [nome] leciona [disciplina]"

