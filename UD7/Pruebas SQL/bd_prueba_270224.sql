CREATE DATABASE restricciones;
USE restricciones;

CREATE TABLE personas (
ID INT NOT NULL,
nombre VARCHAR (50),
apellido VARCHAR (100),
edad INT
);

-- (SET) Columna con solo varias opciones para poner (Puedes elegir varios)
ALTER TABLE personas ADD COLUMN rol SET ('Estudiante','Trabajador','Jubilado');

SHOW CREATE TABLE personas;
DESCRIBE personas;

-- (ENUM) Columna con solo varias opciones para poner (Solo puedes poner uno)
ALTER TABLE personas ADD COLUMN genero ENUM ('Mujer', 'Hombre', 'NoBinario');

ALTER TABLE personas CHANGE rol rol VARCHAR (50);

ALTER TABLE personas CHANGE rol situaciones VARCHAR (50);

ALTER TABLE personas MODIFY edad INT NOT NULL;

ALTER TABLE personas ADD UNIQUE (ID, apellido);

SHOW CREATE TABLE personas;

-- Eliminar UNIQUE
ALTER TABLE personas DROP INDEX ID_2;

DROP TABLE personas;
CREATE TABLE personas (
ID INT UNIQUE,
nombre VARCHAR(50),
apellido VARCHAR (100) UNIQUE,
edad INT CHECK (edad > 18),
situacion SET ('Jubilado', 'Estudiante', 'Trabajador'),
nacionalidad VARCHAR (20) DEFAULT 'Española'
);
DESCRIBE personas;

-- Establecer DEFAULT modificandolo
ALTER TABLE personas ALTER situacion SET DEFAULT 'Estudiante';

-- El created_at y update_at tienen estos parametros siempre: DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

CREATE TABLE tarea (
cod INT UNIQUE,
titulo VARCHAR(30) DEFAULT 'Titulo',
precio INT,
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
update_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Para poner decimales: DEC(M,D) | M= Numeros totales & D= Decimales
ALTER TABLE tarea MODIFY precio DEC(4,2);

-- Añadir una clave primaria a un atributo sin cambiar la tabla
ALTER TABLE personas ADD PRIMARY KEY (ID);

-- Añadir más de una clave primaria a la vez
ALTER TABLE tarea ADD PRIMARY KEY (cod, titulo);

ALTER TABLE tarea ADD COLUMN id_persona INT;
-- Poner como FOREIGN KEY
ALTER TABLE tarea ADD FOREIGN KEY (id_persona) REFERENCES personas(id);

-- Añadir foreign key mediante creación de tabla
CREATE TABLE faena (
ID INT NOT NULL, 
cod INT NOT NULL,
FECHA DATE,
PRIMARY KEY (ID, cod),
FOREIGN KEY (ID) REFERENCES personas (ID),
FOREIGN KEY (cod) REFERENCES tarea (cod)
);

CREATE INDEX index_faena ON faena (ID, cod);

SHOW INDEXES FROM faena;