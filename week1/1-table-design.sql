-- CURSO 1: SQL BASICO
-- SEMANA 1

-- INTRODUÇÃO AO DESIGN DE UMA TABELA

create table Products
(
--  nomeColuna tipo
    productID int,
    productName varchar(20)
);

describe products;

-- ALTERAÇÃO DE TABELAS

-- > Adicionando coluna
alter table products 
add productdesc varchar2(50);

describe products;

-- > Alterando coluna
alter table products modify productdesc varchar(40);

describe products;

-- > Deletando a tabela

drop table products;


