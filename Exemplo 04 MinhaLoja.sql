create database MinhaLoja;
use MinhaLoja;

create table produtos(
     id int primary key auto_increment,
     nome varchar(100) not null,
     estoque int not null
);
insert into produtos (nome, estoque) values
("Uva", 10),
("Maçã", 100);

-- métodos com e sem retorno
-- procedure é método sem retorno
-- function é método com retorno
-- dentro de functions/procedures vc pode colocar regras de negócio, fazer ações como insert, update, delete, create....alter
-- ao invés de colocar isso no python, java....

-- in: entrada
-- out: saída

drop procedure if exists somar_numeros;
delimiter $;

create procedure somar_numeros()
begin 
select 40 + 12;
end $;
delimiter ;

-- Aqui é a chamada para executar a procedure
call somar_numeros();
call somar_numeros();

drop procedure if exists somar_numeros;
delimiter $;

create procedure somar_numeros(
     in p_numero1 int,
     in p_numero2 int
)
begin
    -- Criar uma variável para armazenar a soma dos números do tipo inteiro
	declare soma int;
    -- Calcular a soma e armazenar na variável soma
    select p_numero1 + p_numero2 into soma;
    
    -- mesmo código em python
    -- soma = número1 + numero2
    -- let soma = numero1 + numero2;
    
    -- Apresentar a soma
    select soma;
end $;
delimiter ;

-- Aqui é a chamada para executar a procedure
call somar_numeros(40, 12);
call somar_numeros(18, 28);


drop procedure if exists somar_numeros;
delimiter $;

create procedure somar_numeros(
	in p_nota1 int,
    in p_nota2 int,
    in p_nota3 int
)
begin 
    select (p_nota1 + p_nota2 + p_nota3) /3 as Média;
end $;
delimiter ;

call somar_numeros(40, 12, 15);

drop procedure if exists atualizar_estoque;

delimiter /;
create procedure atualizar_estoque(
     in p_id_produto int,
     in p_quantidade_nova int
)
begin
    update produtos set estoque = estoque + p_quantidade_nova where id = p_id_produto;
    select * from produtos where id = p_id_produto;
end /;

call atualizar_estoque(1, 10);

select * from produtos; 

-- decimal é semelhante float e douple, porém o decimal tem mais precisão de ponto flutuante
-- porém decimal(m,b)
-- m seria a precisão  total (quantidade total de digitos)
-- d seria a escal (quantidade de digitos após a vírgula)
-- decimal(4,2) => 10.99 ou 99.99
drop function if exists calcular_imc;
delimiter $fim
create function calcular_imc(p_peso decimal(5, 2),p_altura decimal(3, 2))
returns decimal (5, 2)
deterministic
begin
    
    declare imc decimal(5,2);
    set imc = p_peso / (p_altura * p_altura);
    return imc;
    
end $fim
delimiter ;
select calcular_imc(80, 2.00);

-- deterministic: retornam sempre o mesmo erro para os mesmos parâmentros, independentemente de qualquer outro fator.
--               Ex.: uma função que soma dois números
-- not deterministic: podem retornar valores diferentes mesmo com os mesmos parâmentros, geralmente porque
--              dependem de variáveis do ambiente (como data/hora atual, dados em outras tabelas que podem mudar, etc.)..
--              Exemplo: uma função que usa NOW() ou consulta alguma tabela para compor resultado.

drop function if  exists saudacao;
delimiter //
create function saudacao()
returns varchar(30)
not deterministic
no sql
begin 
    declare mensagem varchar(30); 
	declare data_hora_atual datetime;
    declare hora_atual int;
    
    set data_hora_atual = now(); -- '2025-04-02 20:58:10'
    set hora_atual = hour(data_hora_atual); -- 20
    
    if hora_atual >= 5 and hora_atual < 12 then -- 5..11
       set mensagem = 'Bom dia';
	elseif hora_atual >= 12 and hora_atual <= 18 then -- 12..18
       set mensagem = 'Boa tarde';
	else 
       set mensagem = 'Boa noite'; -- 19..4
	end if;
    return mensagem;
end //
delimiter ;
select saudacao();





-- criar uma função deterministica chamada calcular_salario_bruto que recebe 
--      parâmetro chamado valor_hora do tipo decimal e outro chamado quantidade_horas
--      criar uma variável para armazenar o salario_bruto
--      calcular o salário bruto armazenando na variável
--      retornar o salário bruto
--      chamar a função

-- criar uma função não deterministica chamada calcular_idade que recebe
--      um parâmetro chamadao p_data_nascimento do tipo date e retorne um inteiro
--      criar uma variável pegando o ano atual
--      criar uma variável pegando o ano da p_data_nascimento 
--      criar uma variável para armazenar a idade
--      retornar a idade
--      chamar a função