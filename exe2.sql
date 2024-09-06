create database sprint2;
use sprint;

create table musica (
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

INSERT INTO musica (idMusica, titulo, artista, genero) VALUES
(1, 'Imagine', 'John Lennon', 'Rock'),
(2, 'Hey Jude', 'The Beatles', 'Rock'),
(3, 'Bohemian Rhapsody', 'Queen', 'Rock'),
(4, 'Someone Like You', 'Adele', 'Pop'),
(5, 'Rolling in the Deep', 'Adele', 'Pop'),
(6, 'Uptown Funk', 'Mark Ronson', 'Funk'),
(7, 'Get Lucky', 'Daft Punk', 'Funk');

SET SQL_SAFE_UPDATES =0; -- 0
select * from musica; -- 1
alter table musica add curtida smallint; -- 2
update musica set curtida = (floor(rand()* 99)); -- 3
alter table musica modify artista varchar(80); -- 4
update musica set curtida = 15 where idMusica =1 ; -- 5
update musica set curtida = 6 where idMusica = 2 or idMusica = 3; -- 6
update musica set titulo = 'Tomas Turbante'  where idMusica = 5 ; -- 7
delete from musica where idMusica = 5; -- 8
select * from musica where genero <> 'Funk'; -- 9
select * from musica where curtida > 20; -- 10
SHOW COLUMNS FROM musica; -- 11
TRUNCATE TABLE musica; -- 12
