create database sprint3;
use sprint3;

create table filme (
idfilme int primary key,
titulo varchar(50),
 genero varchar(40),
diretor varchar(40)
);

INSERT INTO filme (idFilme, titulo, genero, diretor) VALUES
(1, 'Inception', 'Sci-Fi', 'Christopher Nolan'),
(2, 'The Dark Knight', 'Action', 'Christopher Nolan'),
(3, 'Interstellar', 'Sci-Fi', 'Christopher Nolan'),
(4, 'The Matrix', 'Sci-Fi', 'Wachowski Sisters'),
(5, 'The Terminator', 'Action', 'James Cameron'),
(6, 'Terminator 2: Judgment Day', 'Action', 'James Cameron'),
(7, 'Avatar', 'Sci-Fi', 'James Cameron'),
(8, 'The Shawshank Redemption', 'Drama', 'Frank Darabont'),
(9, 'Forrest Gump', 'Drama', 'Robert Zemeckis'),
(10, 'Pulp Fiction', 'Crime', 'Quentin Tarantino'),
(11, 'The Godfather', 'Crime', 'Francis Ford Coppola'),
(12, 'The Silence of the Lambs', 'Thriller', 'Jonathan Demme'),
(13, 'Se7en', 'Thriller', 'David Fincher');


SET SQL_SAFE_UPDATES =0; -- 0
select * from filme; -- 1
alter table filme add protagonista varchar(50); -- 2
update filme set protagonista = CASE idFilme
    WHEN 1 THEN 'Leonardo DiCaprio'
    WHEN 2 THEN 'Christian Bale'
    WHEN 3 THEN 'Matthew McConaughey'
    WHEN 4 THEN 'Keanu Reeves'
    WHEN 5 THEN 'Arnold Schwarzenegger'
    WHEN 6 THEN 'Arnold Schwarzenegger'
    WHEN 7 THEN 'Sam Worthington'
    WHEN 8 THEN 'Tim Robbins'
    WHEN 9 THEN 'Tom Hanks'
    WHEN 10 THEN 'John Travolta'
    WHEN 11 THEN 'Marlon Brando'
    WHEN 12 THEN 'Jodie Foster'
    WHEN 13 THEN 'Brad Pitt'
    ELSE 'Desconhecido'
END; -- 3
alter table filme modify diretor varchar(150); -- 4
update filme set diretor = 'eu' where idfilme =5 ; -- 5
update filme set diretor = 'eudnv' where idFilme = 2 or idFilme = 7; -- 6
update filme set titulo = 'Tomas Turbante'  where idFilme = 6 ; -- 7
delete from filme where idFilme = 3; -- 8
select * from filme where genero <> 'Drama'; -- 9
select * from filme where genero = 'Crime'; -- 10 nao possuo suspense
SHOW COLUMNS FROM filme; -- 11
TRUNCATE TABLE filme; -- 12
