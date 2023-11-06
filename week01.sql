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

-- LINGUAGEM DE CONSULTA SQL

desc products;

-- retorna o numero de registros da tabela
select count(*) from products;

-- adiciona um registro na tabela
insert into products (productid, productname) values (1, 'shoes');

insert into products (productid, productname) values (2, 'shirt');
insert into products (productid, productname) values (3, 'jeans');
insert into products (productid, productname) values (4, 'hat');

select * from products;

create table inventory
(
    invID int,
    productName varchar2(20),
    productQty int
);

insert into inventory (invID, productName) values (1, 'car');
insert into inventory (invID, productName) values (2, 'truck');
insert into inventory (invID, productName) values (3, 'motorcycle');
insert into inventory (invID, productName, productQty) values (4, 'skateboard', 20);

commit;

select * from inventory;

-- altere para 50 a quantidade de produtos, onde o id é 3!
update inventory set productqty = 50 where invid = 3;

-- deletando registro

delete from inventory where invid < 2;