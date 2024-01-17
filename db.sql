drop database if exists streamvideo;
create database streamvideo;
use streamvideo;

create table users(
	id int auto_increment primary key,
    nombre varchar(50) not null,
    apellidos varchar(100) not null,
    contraseña varchar(200) not null,
    telefono char(9),
    email varchar(100) not null,
    favorito int not null
);

create table peliculas(
	id int auto_increment primary key,
    nombre varchar(50) not null,
    genero varchar(200) not null,
    año year not null,
    plataformaId int not null,
    descripcion varchar(300) not null,
    urlImagen varchar(500) not null,
    actorId int not null,
    duracion int not null,
    valoracion int not null,
    laTienesEnFavoritos boolean not null,
    comentarios varchar(200) not null
);

create table series(
	id int auto_increment primary key,
    nombre varchar(50) not null,
    genero varchar(30) not null,
    año year not null,
    numTemporadas int not null,
    plataformaId int not null,
    descripcion varchar(300) not null,
    urlImagen varchar(200) not null,
    actorId int not null,
    valoracion int not null,
    comentarios varchar(200) not null
);

create table favoritos(
	id int auto_increment primary key,
    peliculaId int,
    serieId int,
    userId int not null,
    esFavorito boolean not null
);

create table verLuego(
	id int auto_increment primary key,
    serieId int,
    peliculaId int,
    userId int not null,
    vtarde boolean not null
);

create table plataformas(
	id int auto_increment primary key,
    nombre varchar(100) not null,
    peliculaId int,
    serieId int
);

create table actor(
	id int auto_increment primary key,
    nombre varchar(100) not null,
    apellidos varchar(100) not null,
    edad int not null,
    peliculaId int,
    serieId int,
    nombreFicticio varchar(50) not null
);



-- Insertar datos en la tabla 'users'
INSERT INTO users (nombre, apellidos, contraseña, telefono, email, favorito)
VALUES
  ('Elías', 'Maira', '1234', '604020204', 'eliasmairamanteiga@gmail.com', 1),
  ('Rubén', 'Varela', '12345', '634597141', 'rubenvarelafigueroa@gmail.com', 2),
  ('Alejandro', 'Rodriguez', 'pepe de pura', '678546791', 'alexdf@gmail.com', 3),
  ('Noe', 'Pedreira', 'A.', '123456789', 'noepc@gmail.com', 4),
  ('Antonio', 'Seoane', 'cualquiera', '673126795', 'antoniomc@gmail.com', 5);

-- Insertar datos en la tabla 'peliculas'
INSERT INTO peliculas (nombre, genero, año, plataformaId, descripcion, urlImagen, actorId, duracion, valoracion, laTienesEnFavoritos, comentarios)
VALUES
  ('Shrek', 'Fantasía', 2001, 1, 'Es una película animada que sigue las aventuras de Shrek...', 'https://imagenes.20minutos.es/files/image_640_auto/uploads/imagenes/2021/05/19/shrek-2001-3.jpeg', 1, 90, 9, false, ''),
  ('Scary Movie 1', 'Terror', 2000, 3, 'Es una comedia paródica que satiriza películas de terror populares...', 'https://img19.tokyvideo.com/videos/297/297832/previews/previews_0012_custom_1690245508.2906.jpg', 4, 88, 6, false, ''),
  ('Harry Potter Principe Mestizo', 'Ficción', 2009, 2, 'Harry Potter y el Príncipe Mestizo sigue al joven mago Harry Potter en su sexto año en Hogwarts...', 'https://i.blogs.es/c32fe2/harrypotter/650_1200.webp', 7, 153, 7, false, ''),
  ('Fast & Furious 8', 'Acción', 2001, 4, 'Dominic Toretto, quien traiciona a su equipo bajo la influencia de una mujer misteriosa...', 'https://estaticos-cdn.prensaiberica.es/clip/f279cb2d-1d87-430e-86ca-325fede31fe2_16-9-aspect-ratio_default_0.jpg', 10, 136, 6.5, false, ''),
  ('John Wick 3', 'Acción', 2019, 1, 'John Wick: Chapter 3 - Parabellum continúa la historia del exasesino John Wick...', 'https://prod-ripcut-delivery.disney-plus.net/v1/variant/star/F3D3A70A0ADEAF78D4713869F9492CFDF2A18687862E45AD4B388246E474B845/scale?width=1200&aspectRatio=1.78&format=jpeg', 13, 130, 9, false, '');

-- Insertar datos en la tabla 'series'
INSERT INTO series (nombre, genero, año, numTemporadas, plataformaId, descripcion, urlImagen, actorId, valoracion, comentarios)
VALUES
  ('The Walking Dead', 'Zombies', 2019, 11, 1, 'Es una serie de televisión que sigue a un grupo de supervivientes en un mundo postapocalíptico...', 'https://i.blogs.es/2e3339/comparacion-poster-walking-dead-comic-tv/1366_2000.png', 16, 7, ''),
  ('Breaking Bad', 'Drama', 2008, 5, 1, 'Es una aclamada serie de televisión que sigue la transformación de Walter White...', 'https://hipermediaciones.files.wordpress.com/2013/10/21225_breaking_bad.jpg', 19, 10, ''),
  ('La que se avecina', 'Comedia', 2007, 14, 4, 'Es una comedia española que narra las peripecias y conflictos de los variados residentes de una comunidad de vecinos...', 'https://phantom-marca.unidadeditorial.es/e7ab3a55810d1b2bf47182419d4ee380/resize/1200/f/webp/assets/multimedia/imagenes/2022/06/15/16553145982009.jpg', 22, 8, ''),
  ('Entrevias', 'Drama', 2022, 3, 1, 'Es una serie thriller que sigue la historia de Tirso Abantos, un hombre de principio y exmilitar...', 'https://album.mediaset.es/cimg/2023/10/05/entreviasthumbnailt3_1f06.jpg', 25, 8.5, ''),
  ('Prision Break', 'Ficción criminal', 2005, 5, 3, 'Es una serie de televisión que sigue a Michael Scofield, quien ingeniosamente se deja encarcelar para liberar a su hermano...', 'https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2020/09/03/prison-break-2005-2017-7.jpeg', 29, 7.5, '');

-- Insertar datos en la tabla 'favoritos'
INSERT INTO favoritos (id, userId, esFavorito, peliculaId, serieId)
VALUES
  (1, 3, true, 4, null),
  (2, 5, true, null, 3);
  
  -- Insertar datos en la tabla 'verLuego'
INSERT INTO verLuego (id, serieId, peliculaId, userId, vtarde)
VALUES
  (1, null, 1, 2, true),
  (2, 2, null, 4, true);

-- Insertar datos en la tabla 'plataformas'
INSERT INTO plataformas (id, nombre, peliculaId, serieId)
VALUES
  (1, 'Netflix', null, 1),
  (2, 'HBO Max', null, 3),
  (3, 'Disney+', null, 5),
  (4, 'Amazon Prime Video', null, 4);

-- Insertar datos en la tabla 'actor'
INSERT INTO actor (id, nombre, apellidos, edad, peliculaId, serieId, nombreFicticio)
VALUES
  (1, 'Mike', 'Myers', 60, 1, null, 'Shrek'),
  (2, 'Eddie', 'Murphy', 62, 1, null, 'Asno'),
  (3, 'Cameron', 'Diaz', 51, 1, null, 'Fiona'),
  (4, 'Anna', 'Faris', 47, 2, null, 'Cindy Campbell'),
  (5, 'Shawn', 'Wayans', 52, 2, null, 'Ray Wilkins'),
  (6, 'Marlon', 'Wayans', 50, 2, null, 'Shorty Meeks'),
  (7, 'Daniel', 'Radcliffe', 33, 3, null, 'Harry Potter'),
  (8, 'Rupert', 'Grint', 34, 3, null, 'Ron Weasley'),
  (9, 'Emma', 'Watson', 32, 3, null, 'Hermione Granger'),
  (10, 'Vin', 'Diesel', 55, 4, null, 'Dominic Toretto'),
  (11, 'Dwayne', 'Johnson', 50, 4, null, 'Luke Hobbs'),
  (12, 'Jason', 'Statham', 55, 4, null, 'Deckard Shaw'),
  (13, 'Keanu', 'Reeves', 58, 5, null, 'John Wick'),
  (14, 'Halle', 'Berry', 56, 5, null, 'Sofia'),
  (15, 'Ian', 'McShane', 80, 5, null, 'Winston'),
  (16, 'Keanu', 'Reeves', 58, null, 1, 'John Wick'),
  (17, 'Andrew', 'Lincoln', 50, null, 1, 'Rick Grimes'),
  (18, 'Norman', 'Reedus', 45, null, 1, 'Daryl Dixon'),
  (19, 'Melissa', 'McBride', 59, null, 1, 'Carol Peletier'),
  (20, 'Bryan', 'Cranston', 66, null, 2, 'Walter White'),
  (21, 'Aaron', 'Paul', 43, null, 2, 'Jesse Pinkman'),
  (22, 'Anna', 'Gunn', 54, null, 2, 'Skyler White'),
  (23, 'Ricardo', 'Arroyo', 56, null, 3, 'Amador Rivas'),
  (24, 'Paz', 'Padilla', 55, null, 3, 'Chusa'),
  (25, 'José Luis', 'Gil', 67, null, 3, 'Enrique Pastor'),
  (26, 'José', 'Coronado', 66, null, 4, 'Tirso Abantos'),
  (27, 'Luis', 'Zahera', 57, null, 4, 'Ezequiel Fandiño'),
  (28, 'Felipe', 'Londoño', 29, null, 4, 'Nelson Gutiérrez'),
  (29, 'Wentworth', 'Miller', 52, null, 5, 'Michael Scofield'),
  (30, 'Dominic', 'Purcell', 54, null, 5, 'Lincoln Burrows'),
  (31, 'Sarah', 'Wayne', 47, null, 5, 'Sara Tancredi');

-- Para la tabla 'peliculas'
ALTER TABLE peliculas
ADD CONSTRAINT fk_dos FOREIGN KEY (plataformaId) REFERENCES plataformas(id),
ADD CONSTRAINT fk_tres FOREIGN KEY (actorId) REFERENCES actor(id);

-- Para la tabla 'series'
ALTER TABLE series
ADD CONSTRAINT fk_cuatro FOREIGN KEY (plataformaId) REFERENCES plataformas(id),
ADD CONSTRAINT fk_cinco FOREIGN KEY (actorId) REFERENCES actor(id);

-- Para la tabla 'favoritos'
ALTER TABLE favoritos
ADD CONSTRAINT fk_seis FOREIGN KEY (serieId) REFERENCES series(id),
ADD CONSTRAINT fk_siete FOREIGN KEY (peliculaId) REFERENCES peliculas(id),
ADD CONSTRAINT fk_ocho FOREIGN KEY (userId) REFERENCES users(id);

-- Para la tabla 'verLuego'
ALTER TABLE verLuego
ADD CONSTRAINT fk_nueve FOREIGN KEY (serieId) REFERENCES series(id),
ADD CONSTRAINT fk_diez FOREIGN KEY (peliculaId) REFERENCES peliculas(id),
ADD CONSTRAINT fk_once FOREIGN KEY (userId) REFERENCES users(id);

-- Para la tabla 'plataformas'
ALTER TABLE plataformas
ADD CONSTRAINT fk_doce FOREIGN KEY (serieId) REFERENCES series(id),
ADD CONSTRAINT fk_trece FOREIGN KEY (peliculaId) REFERENCES peliculas(id);

-- Para la tabla 'actor'
ALTER TABLE actor
ADD CONSTRAINT fk_catorce FOREIGN KEY (serieId) REFERENCES series(id),
ADD CONSTRAINT fk_quince FOREIGN KEY (peliculaId) REFERENCES peliculas(id);


	





