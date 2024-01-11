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
**idDocumento:** FOREIGN KEY DOCUMENTO (idDocumento) <br>
REVISTA (**idDocumento**, nombreRevista) <br>
**idDocumento:** FOREIGN KEY DOCUMENTO (idDocumento)
