create database sprint;
use sprint;

create table Atleta (
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdmedalha smallint 
);

INSERT INTO Atleta (idAtleta, nome, modalidade, qtdmedalha) VALUES
(1, 'João Silva', 'Natação', 5),
(2, 'Maria Santos', 'Natação', 3),
(3, 'Carlos Pereira', 'Futebol', 4),
(4, 'Ana Costa', 'Futebol', 2),
(5, 'Pedro Oliveira', 'Atletismo', 6),
(6, 'Juliana Lima', 'Atletismo', 1),
(7, 'Lucas Almeida', 'Ginástica', 2),
(8, 'Beatriz Martins', 'Ginástica', 7),
(9, 'Rafael Souza', 'Judô', 8),
(10, 'Camila Fernandes', 'Judô', 1),
(11, 'Felipe Rodrigues', 'Vôlei', 3),
(12, 'Patrícia Lima', 'Vôlei', 4),
(13, 'Eduardo Silva', 'Boxe', 5),
(14, 'Isabela Oliveira', 'Boxe', 2);

SET SQL_SAFE_UPDATES =0; -- 0
select * from Atleta; -- 1
update Atleta set qtdmedalha = 2 where idAtleta = 1; -- 2
update Atleta set qtdmedalha = 6 where idAtleta = 2 or idAtleta = 3; -- 3
update Atleta set nome = 'Tomas Turbante'  where idAtleta = 4 ; -- 4
alter table Atleta add dtNasc date  ; -- 5
update Atleta set  dtNasc = (current_date()); -- 6
delete from Atleta where idAtleta = 5; -- 7
select * from Atleta where modalidade <> 'Natação'; -- 8
select * from Atleta where qtdmedalha > 3; -- 9
alter table Atleta modify modalidade varchar(60); -- 10
SHOW COLUMNS FROM Atleta; -- 11
TRUNCATE TABLE Atleta; -- 12





