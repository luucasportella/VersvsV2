create table usuario(
    id_usuario BIGINT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    username VARCHAR(32),
    password VARCHAR(32)
);

create table userinfo(
    id_userinfo BIGINT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    primeiro_nome VARCHAR(20),
    ultimo_nome VARCHAR(40),
    email VARCHAR(40)
);

--id_userinfo é tanto a chave primária como a estrangeira
alter table userinfo
add foreign key(id_userinfo)
references usuario(id_usuario)
on delete cascade;

create table atracoes(
    id_atracoes BIGINT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    nome VARCHAR(30),
    sinopse VARCHAR(100),
    id_user BIGINT
);

alter table atracoes
add foreign key(id_user)
references usuario(id_usuario);

create table filme(
    id_atracao BIGINT NOT NULL PRIMARY KEY,
    indicacaoOscar int,
    pontucaoImdb DOUBLE
);

alter table filme
add foreign key(id_atracao)
references atracoes(id_atracoes);

create table serie(
    id_atracao BIGINT NOT NULL PRIMARY KEY,
    numTemporadas DOUBLE
);

create table episodio(
    id_episodio BIGINT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    nome VARCHAR(32),
    sinopse VARCHAR(100),
    id_serie BIGINT
);

alter table episodio
add foreign key(id_serie)
references serie(id_atracao);
 
