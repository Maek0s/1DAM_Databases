-- BD activada
use prueba;
-- muestra la descripción
-- de una tabla
describe empleados;

-- Enseñar todas las tablas
show tables;

-- Eliminar una tabla (empleados)
drop table empleados;

-- Crear tabla (empleado)
CREATE TABLE empleado (
id INT PRIMARY KEY,
name_empleado VARCHAR(30),
edad INT
);

describe empleado;

-- Cambiar el nombre de la tabla 
ALTER TABLE empleado 
RENAME TO empleados;

/*
Esto es un
comentario de
varias líneas
*/

ALTER TABLE empleados
ADD COLUMN oficinas INT;

describe empleados;

-- Seleccionamos la tabla y creamos una nueva tabla
ALTER TABLE empleados
ADD COLUMN jefe INT;

describe empleados;

-- Seleccionamos la tabla para modificar y dropeamos una columna
ALTER TABLE empleados
DROP COLUMN jefe;

ALTER TABLE empleados
ADD COLUMN fecha_nac DATETIME;