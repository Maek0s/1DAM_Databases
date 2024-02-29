-- Creamos la base de datos y nos ponemos a usarla para modificarla
CREATE DATABASE gestion_pub_MarcosZahonero;
USE gestion_pub_MarcosZahonero;

-- 2. Crea las siguientes tablas --

-- Creamos la tabla "pub"
CREATE TABLE pub (
cod_pub INT PRIMARY KEY,
nombre VARCHAR (15) NOT NULL,
licencia_fiscal VARCHAR (10) NOT NULL,
domicilio VARCHAR (10),
cod_localidad INT NOT NULL
);
-- Creamos la tabla "titular"
CREATE TABLE titular (
dni_titular VARCHAR(9) PRIMARY KEY,
nombre VARCHAR (15) NOT NULL,
domicilio VARCHAR (10),
cod_pub INT NOT NULL
);
-- Creamos la tabla "empleado"
CREATE TABLE empleado (
dni_empleado VARCHAR(9) PRIMARY KEY,
nombre VARCHAR (15) NOT NULL,
domicilio VARCHAR (10)
);
-- Creamos la tabla "existencias"
CREATE TABLE existencias (
cod_articulo VARCHAR(10) PRIMARY KEY,
nombre VARCHAR (15) NOT NULL,
cantidad INT NOT NULL,
cod_pub INT NOT NULL
);
-- Creamos la tabla "localidad"
CREATE TABLE localidad (
cod_localidad VARCHAR(9) PRIMARY KEY,
nombre VARCHAR (15) NOT NULL
);
-- Creamos la tabla "pub_empleado"
CREATE TABLE pub_empleado (
cod_pub INT NOT NULL,
dni_empleado VARCHAR(9) NOT NULL,
funcion VARCHAR(10) NOT NULL,
PRIMARY KEY (cod_pub, dni_empleado, funcion)
);

-- 3. Cambia los nombres de las tablas por los siguiente --

ALTER TABLE pub RENAME TO pubs;
ALTER TABLE empleado RENAME TO employees;
ALTER TABLE existencias RENAME TO stocks;
ALTER TABLE localidad RENAME TO cities;
ALTER TABLE titular RENAME TO owners;
ALTER TABLE pub_empleado RENAME TO pub_employees;

-- 4. Añade los siguientes campos --

-- Campos FECHA_APERTURA y HORARIO en la tabla PUB
ALTER TABLE pubs ADD (fecha_apertura DATE, horario VARCHAR (20));
-- Campo PRECIO en la tabla EXISTENCIAS
ALTER TABLE stocks ADD precio INT NOT NULL;
-- Campo Provincia en la tabla LOCALIDAD
ALTER TABLE cities ADD provincia VARCHAR (10);
-- Campo EDAD en la tabla EMPLEADO
ALTER TABLE employees ADD edad INT NOT NULL;

-- 5. Añade las claves primarias de las tablas EXISTENCIAS, LOCALIDAD Y PUB_EMPLEADO. --

-- Hecho al crear las tablas (Línea 45)

-- 6. Añade las siguientes restricciones: --

-- Tabla PUB: NOT NULL para los campos FECHA APERTURA y HORARIO
ALTER TABLE pubs 
MODIFY fecha_apertura DATE NOT NULL, 
MODIFY horario VARCHAR (20) NOT NULL;
-- Tabla EMPLEADO: NOT NULL para el campo PROVINCIA
ALTER TABLE cities MODIFY provincia VARCHAR (10) NOT NULL; -- En mi caso puse la tabla "cities" porque en employees no esta
-- Tabla EXISTENCIAS: CHECK campo precio > 0
ALTER TABLE stocks ADD CONSTRAINT CHK_PrecioMayor0 CHECK (precio > 0);
-- Tabla EXISTENCIAS: DEFAULT campo precio = 1
ALTER TABLE stocks ALTER COLUMN precio SET DEFAULT 1;
--  Tabla EXISTENCIAS: DEFAULT = 1 para el campo CANTIDAD
ALTER TABLE stocks ALTER COLUMN cantidad SET DEFAULT 1;

-- 7. Elimina las siguientes restricciones: --

-- Tabla EXISTENCIAS: DEFAULT = 1 para el campo CANTIDAD
ALTER TABLE stocks ALTER COLUMN cantidad DROP DEFAULT;
-- Tabla EXISTENCIAS: CHECK (precio > 0)
/* Teoricamente sería así, pero da error por la versión porque según he visto eliminaron la opción de los Check y no he encontrado alternativa
ALTER TABLE stocks DROP CHECK CHK_PrecioMayor0; 
*/
-- Tabla EXISTENCIAS: DEFAULT = 1 para el campo PRECIO
ALTER TABLE stocks ALTER COLUMN precio DROP DEFAULT;