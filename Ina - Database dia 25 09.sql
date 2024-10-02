create database e2_database;
use e2_database;

create table estado(
id_estado int primary key auto_increment,
nome_estado varchar(50),
sigla_estado varchar(2)
);

create table clientes(
id_cliente int auto_increment primary key not null,
nome varchar(70) not null,
senha varchar(50) not null,
data_registro date not null,
email varchar(70) not null unique,
cpf varchar(15) , -- not null talvez
genero char(1), -- H M O
cep varchar(10),
endereco varchar(200),
estado tinyint,
rg varchar(14),
numero_celular varchar(10),
ddd tinyint, -- talvez mudar o tamanho
foto_perfil varchar(200),
banner_perfil varchar(200),
tipo tinyint not null, -- 0-Admin 1-Vendedor 2-Cliente
status_conta tinyint, -- 0-Ativo 1-Inativo 2-Suspenso not null talvez
foreign key (estado) references estado(estado)
);

create table produto(
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
foreign key (categoria_produto) references categoria(categoria_produto),
foreign key (subcategoria_produto) references subcategoria(subcategoria_produto)
);

create table vendedor(
id_vendedor int auto_increment primary key,
cnpj_vendedor varchar(30) not null
);

create table cupom(
id_cupom int auto_increment primary key,
nome_cupom varchar(100) not null,
codigo_cupom varchar(50) unique not null,
id_vendedor int not null, -- FK
uso_total_cupom int not null,
uso_por_cliente_cupom int not null,
valor_minimo_cupom int not null,
desconto_cupom float not null,
data_criacao_cupom date not null,
data_final_cupom date,
foreign key (id_vendedor) references vendedor(id_vendedor)
);

create table compra(
-- a ser feito
);

create table categoria(
id_categoria int auto_increment primary key,
nome_categoria varchar(30) not null
);

create table avaliacao(
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

create table subcategoria(
id_subcategoria int auto_increment primary key,
nome_subcategoria varchar(30) not null,
categoria_subcategoria int, -- a ser revisado
foreign key (categoria_subcategoria) references categoria(id_categoria)

);

create table carrossel(
id_carrossel int auto_increment primary key,
id_anunciante_carrossel int not null, -- foreign key
link_carrossel varchar(200) not null,
proxima_cobrança_carrossel date,
foi_pago_esse_mes_carrossel boolean,
foreign key (id_anunciante_carrossel) references vendedor(id_vendedor)
);

create table carrinho(
id_cliente int,
id_produto int,
quantidade_produto smallint,
foreign key (id_cliente) references cliente(id_cliente),
foreign key (id_produto) references produto(id_produto)
);