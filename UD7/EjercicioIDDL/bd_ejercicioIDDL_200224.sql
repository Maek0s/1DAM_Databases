-- 1. Crea una base de datos con el nombre gestion_zoo
CREATE DATABASE gestion_zoo;

-- 2. Establece como predeterminada la base de datos gestion_zoo
USE gestion_zoo;

-- 3. Crea la siguiente tabla
CREATE TABLE mascota (
idMascota INT PRIMARY KEY,
nombre VARCHAR (20),
propietario VARCHAR (40),
fecha_nacimiento DATE
);

-- 4. Muestra la información de la tabla
describe mascota;
-- 5. Elimina la tabla
DROP TABLE mascota;

-- 6. Crea la tabla de nuevo con el código del ejercicio 3
CREATE TABLE mascota (
idMascota INT PRIMARY KEY,
nombre VARCHAR (20),
propietario VARCHAR (40),
fecha_nacimiento DATE
);

-- 7. Modifica el nombre de la tabla de ‘mascota’ a ‘pets’
ALTER TABLE mascota RENAME TO pets;

-- 8. Borra el contenido de la tabla pets
TRUNCATE TABLE pets;

-- 9. Añade el campo ‘especie’ VARCHAR(30)
ALTER TABLE pets ADD especie VARCHAR (30);

-- 10. Añade el campo ‘alimentacion’ VARCHAR(50)
ALTER TABLE pets ADD alimentacion VARCHAR (50);

-- 11. Elimina el campo ‘alimentacion’
ALTER TABLE pets DROP alimentacion;

-- 12. Elimina el campo ‘especie’
ALTER TABLE pets DROP especie;

-- 13. Crea el campo ‘especie’ y ‘alimentacion’ en una sola instrucción
ALTER TABLE pets ADD (
especie VARCHAR(30), 
alimentacion VARCHAR (50)
);

-- 14. Eliminar los dos campos anteriores en una sola instrucción
ALTER TABLE pets
DROP especie, 
DROP alimentacion;

-- 15. Modifica el tamaño del campo nombre de 20 a 35
ALTER TABLE pets MODIFY nombre VARCHAR (35) NOT NULL;

-- 16. Cambia el nombre del campo ‘nombre’ a ‘name’
ALTER TABLE pets CHANGE COLUMN nombre name VARCHAR (35);

-- 17. Cambia el nombre del campo ‘propietario’ por ‘owner’
ALTER TABLE pets CHANGE COLUMN propietario owner VARCHAR (35);

-- 18. Cambia el nombre del campo ‘fecha_nacimiento’ por ‘birh_date’
ALTER TABLE pets CHANGE COLUMN fecha_nacimiento birth_date VARCHAR (35);