-- Creamos base datos
CREATE DATABASE curso;
-- Utilizamos la database
USE curso;

-- Creamos la tabla alumno
CREATE TABLE alumno (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (20),
apellidos VARCHAR (50),
DNI VARCHAR (9),
email VARCHAR (30)
);

-- Creamos la tabla asignatura
CREATE TABLE asignatura (
cod INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (50),
departamento VARCHAR (50)
);

-- Ver los atributos de la tabla asignatura
DESCRIBE asignatura;

-- Creamos una nueva columna a alumno (fecha_nac)
ALTER TABLE alumno ADD COLUMN fecha_nac DATE;
-- Creamos una nueva columna a asignatura (curso)
ALTER TABLE asignatura ADD COLUMN curso VARCHAR (10);

-- Cambiamos el nombre a una columna (cod) de la tabla asignatura
ALTER TABLE asignatura CHANGE COLUMN cod codAsignatura INT;
-- Cambiamos el nombre de la tabla
ALTER TABLE asignatura RENAME TO asignaturas;

-- Eliminar un atributo dentro de una tabla
ALTER TABLE alumno DROP fecha_nac;

-- Creamos una columna (edad) en la tabla alumno
ALTER TABLE alumno ADD COLUMN edad INT;

-- Creamos una nueva tabla con idPro como PK, DNI es único y telefono es NOT NULL (obligatorio de rellenar)
CREATE TABLE profesor (
idPro INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (20),
apellidos VARCHAR (20),
DNI VARCHAR (9) UNIQUE,
telefono INT NOT NULL
);

describe profesor;

-- Modificamos con MODIFY haciendolo obligatorio
ALTER TABLE profesor MODIFY nombre VARCHAR (20) NOT NULL;

-- Creamos una tabla con datos unicos
CREATE TABLE departamento (
coddep INT PRIMARY KEY,
nombre_dep VARCHAR (50) UNIQUE,
nombre_jefe VARCHAR (50) UNIQUE
);

-- Creamos un check para hacer una restricción para que solo entren mayores de 18 años
/*ALTER TABLE alumno ADD CONSTRAINT chk_ed_al CHECK (edad > 18);
--
describe alumno;
ALTER TABLE alumno DROP CONSTRAINT chk_ed_al;*/

ALTER TABLE alumno ADD COLUMN poblacion VARCHAR (50);

-- Hacemos que la entidad población tenga por defecto el contenido de 'Alaquàs'
ALTER TABLE alumno ALTER COLUMN poblacion SET DEFAULT 'Alaquàs';

