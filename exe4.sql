create database sprint4;
use sprint4;

create table professor (
idprofessor int primary key,
nome varchar(50),
 especialidade varchar(40),
dtnasc date
);

INSERT INTO professor (idprofessor, nome, especialidade, dtnasc) VALUES
(1, 'Dr. Ana Souza', 'Matemática', '1980-05-15'),
(2, 'Prof. Carlos Silva', 'Matemática', '1975-11-22'),
(3, 'Dra. Maria Oliveira', 'Física', '1988-03-10'),
(4, 'Prof. João Santos', 'Física', '1982-07-30'),
(5, 'Dra. Laura Costa', 'Química', '1990-02-20'),
(6, 'Prof. Pedro Lima', 'Química', '1985-09-09');

SET SQL_SAFE_UPDATES =0; -- 0
select * from professor; -- 1
alter table professor add função ENUM('monitor', 'assistente', 'titular'); -- 2
UPDATE professor
SET função = CASE idprofessor
    WHEN 1 THEN 'titular'
    WHEN 2 THEN 'assistente'
    WHEN 3 THEN 'titular'
    WHEN 4 THEN 'monitor'
    WHEN 5 THEN 'assistente'
    WHEN 6 THEN 'monitor'
    ELSE 'monitor'
END; -- 3
INSERT INTO professor (idprofessor, nome, especialidade, dtnasc, função) VALUES
(7, 'Dr. Juliana Mendes', 'Biologia', '1979-12-05', 'monitor'); -- 4
delete from professor where idprofessor = 5; -- 5
select * from professor where função = 'titular'; -- 6
select nome,especialidade, dtnasc from professor where função ='monitor'; -- 7
update professor set dtnasc = '2000-01-12' where idprofessor = 3; -- 8
TRUNCATE TABLE professor; -- 9




