# UD 5 - Jerarquias

## Ejercicio 1
![image](https://github.com/Maek0s/bd/assets/145163254/3c7214e3-4f93-4088-a9ed-528b8fd2e4cd)

### Opción A

DOCUMENTO (**idDocumento**, nombreLibro, nombreRevista)

### Opción B

LIBRO (**idDocumento**, nombreLibro) <br>
REVISTA (**idDocumento**, nombreRevista)

### Opción C

DOCUMENTO (**idDocumento**) <br>
LIBRO (**idDocumento**, nombreLibro) <br>
REVISTA (**idDocumento**, nombreRevista) <br>
**idDocumento:** FOREIGN KEY DOCUMENTO (idDocumento)

## Ejercicio 2

![image](https://github.com/Maek0s/bd/assets/145163254/a7f9e293-6409-47ae-9c81-7865b243397d)

### Opción A

EMPLEADO (**idEmpleado**, Rol, Tipo_inge, nombreSecretaria)

### Opción B

INGENIERO (**idEmpleado**, Rol, Tipo_inge) <br>
SECRETARIA (**idEmpleado**, nombreSecretaria)

### Opción C

EMPLEADO (**idEmpleado**) <br>
INGENIERO (**idEmpleado**, Rol, tipo_inge) <br>
SECRETARIO (**idEmpleado**, nombreSecretaria) <br>
**idEmpleado:** FOREIGN KEY EMPLEADO (idEmpleado) <br>

## Ejercicio 3

![image](https://github.com/Maek0s/bd/assets/145163254/f0984234-982f-4f44-8f8b-1e73b726e35d)

### Opción A

LIBRO (**id**, titulo, isbn, año_publicación, descripción, tipo, lugar_impresión, fecha_impresión, precio, tamaño_archivo, precio)

### Opción B

PAPEL (**id**, titulo, isbn, año_publicación, descripción, tipo, lugar_impresion, fecha_impresion, precio) <br>
EBOOK (**id**, titulo, isbn, año_publicación, descripción, tipo, tamaño_archivo, precio) <br>
**id:** FOREIGN KEY LIBRO (id)

### Opción C

LIBRO (**id**, titulo, isbn, año_publicación, descripcion) <br>
PAPEL (**id**, lugar_impresion, fecha_impresion, precio) <br> 
EBOOK (**id**, tamaño_archivo, precio)

## Ejercicio 4

![image](https://github.com/Maek0s/bd/assets/145163254/e6392766-9443-4a2c-a181-20c5e278eaa1)

### Opción A

LECTORES (**idLectores**, **DNI**, nombre, telefono, direccion, sanciones, nombreAlumno, nombreProfesor)

### Opción B

ALUMNOS (**idLectores**, **DNI**, nombre, telefono, direccion, sanciones, nombreAlumno) <br>
PROFESORES (**idLectores**, **DNI**, nombre, telefono, direccion, sanciones, nombreProfesor)

### Opción C

LECTORES (**idLectores**, **DNI**, nombre, telefono, direccion, sanciones) <br>
ALUMNOS (**idLectores**, nombreAlumno) <br>
PROFESORES (**idLectores**, nombreProfesor) 

## Ejercicio 5

![image](https://github.com/Maek0s/bd/assets/145163254/85a0eea9-fb3a-4bb4-acba-dc3703ebaffc)

### Opción A

AULA (**N_Aula**, piso, pasillo, n_plazas, proyector, pizarra, idComun, n_ordenadores, scaneres, impresoras, varios, tipo, equipamento)

### Opción B

COMÚN (**N_Aula**, piso, pasillo, n_plazas, proyector, pizarra, idComun) <br>
S_ORDENADORES (**N_Aula**, piso, pasillo, n_plazas, proyector, pizarra, n_ordenadores, scaneres, impresoras, varios) <br>
LABORATORIO (**N_Aula**, piso, pasillo, n_plazas, proyector, pizarra, tipo, equipamiento)

### Opción C

AULA (**N_Aula**, piso, pasillo, n_plazas, proyector, pizarra) <br>
COMÚN (**N_Aula**, idComun) <br>
S_ORDENADORES (**N_Aula**, n_ordenadores, scaneres, impresoras, varios) <br>
LABORATORIO (**N_Aula**, tipo, equipamiento) <br>

**La mejor opción sería la C, porque tiene muchos elementos cada una de las hijas y enlazando lo hacemos menos pesado**
