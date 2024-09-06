create database cadcliente;
use cadcliente;
create table cliente(
cpf varchar(15),
nome varchar(70),
rg varchar(12),
id_cidade int , 
id_sexo int ,
id_nacionalidade int, 
fone varchar (15),
id_raca int,  
id_esc int,
foreign key(id_cidade) references cidade(id_cidade),
foreign key(id_sexo) references sexo(id_sexo),
foreign key(id_nacionalidade) references nacionalidade(id_nacionalidade),
foreign key(id_raca) references raca(id_raca),
foreign key(id_esc) references escolaridade(id_esc)
);

create table estado(
id_estado int auto_increment primary key,
estado varchar(20)
);

create table cidade(
id_cidade int auto_increment primary key,
cidade varchar(40),
id_estado int,
foreign key (id_estado) references estado(id_estado)
);

create table sexo(
id_sexo int auto_increment primary key,
sexo varchar(20)
);

create table nacionalidade(
id_nacionalidade int auto_increment primary key,
nacionalidade varchar(20)
);

create table raca(
id_raca int auto_increment primary key,
raca varchar(20)
);

create table escolaridade(
id_esc int auto_increment primary key,
escolaridade varchar(30)
);

insert into nacionalidade(nacionalidade) values 
('Brasileira'),
('Estrangeira');

insert into sexo(sexo) values 
('Masculino'),
('Feminino'),
('Outro');

insert into raca(raca) values 
('Branco'),
('Negro'),
('Pardo'),
('Amarelo'),
('Indígena');

insert into escolaridade(escolaridade) values 
('Educação infantil'),
('Fundamental'),
('Médio'),
('Médio-incompleto'),
('Superior (Graduação)'),
('Pós-graduação'),
('Mestrado'),
('Doutorado');

INSERT INTO cliente (cpf, nome, rg, id_cidade, id_sexo, id_nacionalidade, fone, id_raca, id_esc)
VALUES 
('123.456.789-00', 'Ana Silva', '12345678', 14, 1, 1, '(11) 1234-5678', 2, 3),
('234.567.890-11', 'Carlos Oliveira', '23456789', 78, 2, 1, '(21) 2345-6789', 4, 6),
('345.678.901-22', 'Maria Santos', '34567890', 56, 3, 2, '(31) 3456-7890', 1, 7),
('456.789.012-33', 'João Pereira', '45678901', 102, 1, 2, '(41) 4567-8901', 5, 2),
('567.890.123-44', 'Fernanda Lima', '56789012', 23, 2, 1, '(51) 5678-9012', 3, 5),
('678.901.234-55', 'Roberto Costa', '67890123', 85, 3, 2, '(61) 6789-0123', 2, 8),
('789.012.345-66', 'Patrícia Martins', '78901234', 34, 1, 1, '(71) 7890-1234', 5, 1),
('890.123.456-77', 'Lucas Almeida', '89012345', 61, 2, 2, '(81) 8901-2345', 4, 4),
('901.234.567-88', 'Juliana Ferreira', '90123456', 119, 3, 1, '(91) 9012-3456', 1, 6),
('012.345.678-99', 'Mateus Rodrigues', '01234567', 9, 1, 2, '(11) 0123-4567', 3, 7),
('123.456.789-01', 'Gabriela Souza', '12345679', 93, 2, 1, '(21) 1234-5679', 2, 5),
('234.567.890-12', 'Marcos Lima', '23456780', 44, 3, 2, '(31) 2345-6780', 4, 3),
('345.678.901-23', 'Juliana Lima', '34567801', 76, 1, 1, '(41) 3456-7891', 5, 8),
('456.789.012-34', 'Felipe Costa', '45678912', 110, 2, 2, '(51) 4567-8902', 1, 2),
('567.890.123-45', 'Larissa Santos', '56789023', 122, 3, 1, '(61) 5678-9013', 3, 4),
('678.901.234-56', 'André Martins', '67890134', 47, 1, 2, '(71) 6789-0124', 5, 6),
('789.012.345-67', 'Renata Silva', '78901245', 130, 2, 1, '(81) 7890-1235', 2, 1),
('890.123.456-78', 'Eduardo Ferreira', '89012356', 15, 3, 2, '(91) 8901-2346', 4, 7),
('901.234.567-89', 'Claudia Souza', '90123467', 68, 1, 1, '(11) 9012-3457', 1, 3),
('012.345.678-90', 'Ricardo Alves', '01234578', 106, 2, 2, '(21) 0123-4568', 5, 8);

INSERT INTO estado (estado) VALUES 
('Acre'), --
('Alagoas'), --
('Amapá'), --
('Amazonas'), --
('Bahia'), --
('Ceará'),--
('Distrito Federal'), --
('Espírito Santo'), --
('Goiás'), --
('Maranhão'),--
('Mato Grosso'), --
('Mato Grosso do Sul'), --
('Minas Gerais'), --
('Pará'), --
('Paraíba'), --
('Paraná'), --
('Pernambuco'),--
('Piauí'), --
('Rio de Janeiro'), --
('Rio Grande do Norte'), --
('Rio Grande do Sul'),--
('Rondônia'), --
('Roraima'), --
('Santa Catarina'),--
('São Paulo'), --
('Sergipe'),  
('Tocantins'); 

-- Acre (AC)
INSERT INTO cidade (cidade) VALUES 
('Rio Branco',1 ),
('Cruzeiro do Sul',1),
('Sena Madureira',1),
('Brasileia',1),
('Tarauacá',1);

-- Alagoas (AL)
INSERT INTO cidade (cidade) VALUES 
('Maceió',2),
('Arapiraca',2),
('Palmeira dos Índios',2),
('União dos Palmares',2),
('Penedo',2);

-- Amapá (AP)
INSERT INTO cidade (cidade) VALUES 
('Macapá',3),
('Santana',3),
('Laranjal do Jari',3),
('Oiapoque',3),
('Pedra Branca do Amapari',3);

-- Amazonas (AM)
INSERT INTO cidade (cidade) VALUES 
('Manaus',4),
('Parintins',4),
('Itacoatiara',4),
('Tefé',4),
('Coari',4);

-- Bahia (BA)
INSERT INTO cidade (cidade) VALUES 
('Salvador',5),
('Feira de Santana',5),
('Vitória da Conquista',5),
('Ilhéus',5),
('Juazeiro',5);

-- Ceará (CE)
INSERT INTO cidade (cidade) VALUES 
('Fortaleza',6),
('Caucaia',6),
('Juazeiro do Norte',6),
('Sobral',6),
('Crato',6);

-- Distrito Federal (DF)
INSERT INTO cidade (cidade) VALUES 
('Brasília',7),
('Ceilândia',7),
('Taguatinga',7),
('Gama',7),
('Planaltina',7);

-- Espírito Santo (ES)
INSERT INTO cidade (cidade) VALUES 
('Vitória',8),
('Vila Velha',8),
('Serra',8),
('Cachoeiro de Itapemirim',8),
('Guarapari',8);

-- Goiás (GO)
INSERT INTO cidade (cidade) VALUES 
('Goiânia',9),
('Anápolis',9),
('Aparecida de Goiânia',9),
('Luziânia',9),
('Catalão',9);

-- Maranhão (MA)
INSERT INTO cidade (cidade) VALUES 
('São Luís',10),
('Imperatriz',10),
('Caxias',10),
('Timon',10),
('Bacabal',10);

-- Mato Grosso (MT)
INSERT INTO cidade (cidade) VALUES 
('Cuiabá',11),
('Várzea Grande',11),
('Rondonópolis',11),
('Sinop',11),
('Tangará da Serra',11);

-- Mato Grosso do Sul (MS)
INSERT INTO cidade (cidade) VALUES 
('Campo Grande',12),
('Dourados',12),
('Três Lagoas',12),
('Corumbá',12),
('Ponta Porã',12);

-- Minas Gerais (MG)
INSERT INTO cidade (cidade) VALUES 
('Belo Horizonte',13),
('Uberlândia',13),
('Contagem',13),
('Juiz de Fora',13),
('Montes Claros',13);

-- Pará (PA)
INSERT INTO cidade (cidade) VALUES 
('Belém',14),
('Ananindeua',14),
('Santarém',14),
('Marabá',14),
('Parauapebas',14);

-- Paraíba (PB)
INSERT INTO cidade (cidade) VALUES 
('João Pessoa',15),
('Campina Grande',15),
('Santa Rita',15),
('Patos',15),
('Bayeux',15);

-- Paraná (PR)
INSERT INTO cidade (cidade) VALUES 
('Curitiba',16),
('Londrina',16),
('Maringá',16),
('Foz do Iguaçu',16),
('Ponta Grossa',16);

-- Pernambuco (PE)
INSERT INTO cidade (cidade) VALUES 
('Recife',17),
('Olinda',17),
('Jaboatão dos Guararapes',17),
('Caruaru',17),
('Petrolina',17);

-- Piauí (PI)
INSERT INTO cidade (cidade) VALUES 
('Teresina',18),
('Parnaíba',18),
('Picos',18),
('Floriano',18),
('Oeiras',18);

-- Rio de Janeiro (RJ)
INSERT INTO cidade (cidade) VALUES 
('Rio de Janeiro',19),
('Niterói',19),
('Duque de Caxias',19),
('São Gonçalo',19),
('Nova Iguaçu',19);

-- Rio Grande do Norte (RN)
INSERT INTO cidade (cidade) VALUES 
('Natal',20),
('Mossoró',20),
('Parnamirim',20),
('Santa Cruz',20),
('São Gonçalo do Amarante',20);

-- Rio Grande do Sul (RS)
INSERT INTO cidade (cidade) VALUES 
('Porto Alegre',21),
('Caxias do Sul',21),
('Pelotas',21),
('Santa Maria',21),
('Novo Hamburgo',21);

-- Rondônia (RO)
INSERT INTO cidade (cidade) VALUES 
('Porto Velho',22),
('Ji-Paraná',22),
('Vilhena',22),
('Rolim de Moura',22),
('Pimenta Bueno',22);

-- Roraima (RR)
INSERT INTO cidade (cidade) VALUES 
('Boa Vista',23),
('Rorainópolis',23),
('Caracaraí',23),
('Mucajaí',23),
('São Luiz',23);

-- Santa Catarina (SC)
INSERT INTO cidade (cidade) VALUES 
('Florianópolis',24),
('Joinville',24),
('Blumenau',24),
('Chapecó',24),
('Criciúma',24);

-- São Paulo (SP)
INSERT INTO cidade (cidade) VALUES 
('São Paulo',25),
('Campinas',25),
('Sorocaba',25),
('São Bernardo do Campo',25),
('Ribeirão Preto',25);

-- Sergipe (SE)
INSERT INTO cidade (cidade) VALUES 
('Aracaju',26),
('Socorro',26),
('Lagarto',26),
('Itabaiana',26),
('Nossa Senhora do Socorro',26);

-- Tocantins (TO) --
INSERT INTO cidade (cidade) VALUES 
('Palmas',27),
('Araguaína',27),
('Paraíso do Tocantins',27),
('Porto Nacional',27),
('Gurupi',27);
 
 select * from cidade;
 
 select cliente.nome, cidade.cidade from cliente join cidade on cliente.id_cidade = cidade.id_cidade; -- 1
 
select cliente.nome,estado.estado from cliente join cidade on cliente.id_cidade = cidade.id_cidade join estado on cidade.id_estado
= estado.id_estado; -- 2

select cliente.nome,cliente.cpf,raca.raca from cliente join raca on cliente.id_raca = raca.id_raca; -- 3

select cliente.nome,nacionalidade.nacionalidade from cliente join nacionalidade on cliente.id_nacionalidade = nacionalidade.id_nacionalidade; -- 4 

select cliente.nome,escolaridade.escolaridade from cliente join escolaridade on cliente.id_esc = escolaridade.id_esc; -- 5

select cliente.nome,cidade.cidade,estado.estado from cliente join cidade on cliente.id_cidade = cidade.id_cidade join estado on cidade.id_estado = estado.id_estado; -- 6

select cliente.nome, cidade.cidade, estado.estado, cliente.fone, cliente.rg, sexo.sexo, nacionalidade.nacionalidade, escolaridade.escolaridade
from cliente join cidade on cliente.id_cidade = cidade.id_cidade
             join estado on cidade.id_estado = estado.id_estado
             join sexo on cliente.id_sexo = sexo.id_sexo
             join nacionalidade on cliente.id_nacionalidade = nacionalidade.id_nacionalidade
             join raca on cliente.id_raca = raca.id_raca
             join escolaridade on cliente.id_esc = escolaridade.id_escolaridade; -- 7