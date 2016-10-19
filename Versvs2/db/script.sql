-- Comandos SQL - VERSVS 11/09/2016
CREATE TABLE userversvs(
    id_userversvs bigint not null primary key generated always as identity(start with 1, increment by 1),
    username varchar(20) not null,
    password varchar(32) not null
);

CREATE TABLE userinfo(
    id_userinfo bigint not null primary key generated always as identity(start with 1, increment by 1),
    firstname varchar(30) not null,
    lastname varchar(40) not null,
    email varchar (40) not null,
    birthday date not null
);

-- Relacionamento entre as Tabelas
-- 1 para 1
alter table userinfo
add foreign key(id_userinfo)
references userversvs(id_userversvs)
on delete cascade;

-- drop table userversvs;