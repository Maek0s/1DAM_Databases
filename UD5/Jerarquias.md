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
