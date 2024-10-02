create database if not exists e2_database;
use e2_database;

create table if not exists estado( -- 18
id_estado int primary key auto_increment,
nome_estado varchar(50) not null,
sigla_estado varchar(2) not null
);

create table if not exists cidade( -- 19
id_cidade int auto_increment primary key,
nome_cidade varchar(50) not null,
id_estado int,
foreign key (id_estado) references estado(id_estado)
);

create table if not exists endereco( -- 14
id_endereco int auto_increment primary key,
rua_endereco varchar(100) not null,
bairro_endereco varchar(100) not null,
id_cidade int not null,
numero_endereco smallint,
referencia_endereco varchar(200)
);

create table cliente( -- 1
id_cliente int auto_increment primary key not null,
nome varchar(70) not null,
senha varchar(70) not null,
data_registro date not null,
email varchar(70) not null unique,
cpf varchar(15) , -- not null talvez
genero char(1), -- H M O
cep varchar(10),
id_endereco int,
id_estado int,
rg varchar(14),
numero_celular varchar(10),
ddd tinyint, -- talvez mudar o tamanho
foto_perfil varchar(200),
banner_perfil varchar(200),
tipo tinyint not null, -- 0-Admin 1-Vendedor 2-Cliente
status_conta tinyint, -- 0-Ativo 1-Inativo 2-Suspenso not null talvez
data_criacao_cliente date,
foreign key (id_estado) references estado(id_estado),
foreign key (id_endereco) references endereco(id_endereco)
);

create table categoria( -- 6
id_categoria int auto_increment primary key,
nome_categoria varchar(30) not null,
endereco_imagem_categoria varchar(200),
index_banner_categoria tinyint default 0
);

create table subcategoria( -- 8
id_subcategoria int auto_increment primary key,
nome_subcategoria varchar(30) not null,
categoria_subcategoria int, -- a ser revisado
foreign key (categoria_subcategoria) references categoria(id_categoria)
);

create table produto( -- 2
id_produto int auto_increment primary key not null,
nome_produto varchar(200) not null,
preco_produto decimal not null,
categoria_produto int not null,
subcategoria_produto int not null,
origem_produto varchar(200),
unidade_produto int not null,
peso_liquido_produto float not null,
peso_bruto_produto float not null,
largura_produto float not null,
altura_produto float not null,
comprimento_produto float not null,
descricao_produto text not null,
status_produto boolean default true,
foreign key (categoria_produto) references categoria(id_categoria),
foreign key (subcategoria_produto) references subcategoria(id_subcategoria)
);

create table vendedor( -- 3
id_vendedor int auto_increment primary key,
cnpj_vendedor varchar(30) not null,
requerimento_10_vendas boolean
);

create table cupom( -- 4
id_cupom int auto_increment primary key,
nome_cupom varchar(100) not null,
codigo_cupom varchar(50) unique not null,
id_vendedor int not null, -- FK
uso_total_cupom int not null,
uso_por_cliente_cupom int not null,
valor_minimo_cupom float default 0,
desconto_cupom float not null,
data_criacao_cupom date not null,
data_final_cupom date not null,
foreign key (id_vendedor) references vendedor(id_vendedor)
);

create table metodo_pagamento( -- 13
id_metodo_pagamento int auto_increment primary key,
tipo_pagamento varchar(50)
);

create table compra( -- 5
id_compra int auto_increment primary key,
id_produto int not null,
quantidade_compra smallint default 1,
id_vendedor int not null,
id_cliente int not null,
preco_pago_compra float not null,
id_metodo_pagamento int not null,
data_compra date not null,
data_limite_entrega date not null,
id_endereço int not null,
status_pagamento_compra boolean,
id_tipo_frete int,
status_entrega_compra boolean,
foreign key (id_produto) references produto(id_produto),
foreign key (id_vendedor) references vendedor(id_vendedor),
foreign key (id_cliente) references cliente (id_cliente),
foreign key (id_metodo_pagamento) references metodo_pagamento(id_metodo_pagamento),
foreign key (id_endereço) references endereco(id_endereco)
);

create table avaliacao( -- 7
status_avaliacao boolean not null,
estrelas_avaliacao float(5) default 0,
data_avaliacao date not null,
descricao_avaliacao varchar(500) not null,
-- a ser terminado
id_produto int,
id_cliente int,
id_vendedor int,
foreign key (id_produto) references produto(id_produto),
foreign key (id_cliente) references cliente(id_cliente),
foreign key (id_vendedor) references vendedor(id_vendedor)
);

create table carrossel( -- 9
id_carrossel int auto_increment primary key,
id_anunciante_carrossel int not null, -- foreign key
link_carrossel varchar(200) not null,
proxima_cobrança_carrossel date not null,
foi_pago_esse_mes_carrossel boolean not null,
foreign key (id_anunciante_carrossel) references vendedor(id_vendedor)
);

create table carrinho( -- 10
id_cliente int,
id_produto int,
quantidade_produto smallint not null,
foreign key (id_cliente) references cliente(id_cliente),
foreign key (id_produto) references produto(id_produto)
);

create table imagens_produtos ( -- 11
id_imagem_produto int primary key,
id_produto_imagem_produto int,
endereco_imagem_produto varchar(200),
index_imagem_produto int not null,
foreign key (id_produto_imagem_produto) references produto (id_produto)
);

create table imagens_carrossel( -- 12
id_imagem_carrossel int primary key,
id_anuncio_carrossel int,
endereco_carrossel varchar(200) not null,
foreign key (id_anuncio_carrossel) references carrossel (id_carrossel)
);

create table privacidade( -- 15
id_cliente_privacidade int,
anuncios_personalizados boolean default true not null,
foreign key (id_cliente_privacidade) references cliente (id_cliente)
);

create table perfil( -- 17
id_cliente_perfil int,
foto_perfil varchar (200) not null,
banner_perfil varchar(200) not null,
descricao_perfil varchar(500),
tiktok_perfil varchar(50),
linkedin_perfil varchar(50),
facebook_perfil varchar(50),
youtube_perfil varchar(50),
instagram_perfil varchar(50),
foreign key (id_cliente_perfil) references cliente(id_cliente)
);

create table historico_acesso( -- 16
id_historico_acesso int primary key auto_increment,
id_cliente_historico_acesso int,
ip_historico_acesso varchar(50),
data_historico_acesso date,
horario_historico_acesso time,
navegador_historico_acesso varchar(200)
 -- foreign key (id_cliente_historico_acesso) references cliente(id_cliente)
);

create table promocao( -- 20
id_produto_promocao int unique,
ativo_promocao boolean default false,
tipo_promocao int,
desconto_promocao float,
data_inicio_promocao date,
data_fim_promocao date,
hora_inicio_promocao time,
hora_fim_promocao time,
foreign key (id_produto_promocao) references produto(id_produto) 
);