# UD 5 - Reflexivas

## CASO (1:1)
### Ejercicio 1

PERSONA (**idPersona**, idPersonaRel(fk)) <br>
idPersonaRel: FOREIGN KEY PERSONA (idPersona)

## CASO (1:N)
### Ejercicio 1

![image](https://github.com/Maek0s/bd/assets/145163254/d1f0dc1d-e481-4fe4-9f1c-1c1bd43751bf)

EMPLEADO (**dni**, nombre, dniRel(fk)) <br>
dniRel: FOREIGN KEY EMPLEADO (dni)

### Ejercicio 2

![image](https://github.com/Maek0s/bd/assets/145163254/7a36263a-04d5-4e49-8a37-6097bbe35712)

 ###  &nbsp; Ejercicio 2 - Solución A (0,n)

 &nbsp; TEMA (**idTema**)
 &nbsp; CONSTA (**idTema**, idTemaRel(fk)) <br>
 &nbsp; idTemaRel: FOREIGN KEY TEMA (idTema)

 ###  &nbsp; Ejercicio 2 - Solución B (1,n)

 &nbsp; TEMA (**idTema**, idTemaRel(fk)) <br>
 &nbsp; idTemaRel: FOREIGN KEY TEMA (idTema)

## CASO (N:M)
### Ejercicio 1

![image](https://github.com/Maek0s/bd/assets/145163254/79cf7cdf-25ee-4bb1-9c44-60927168b555)

PIEZA (**idPieza**) <br>
SE_COMPONE (**idPieza**, **idPiezaRel(fk)**) <br>
idPieza: FOREIGN KEY PIEZA (idPieza) <br>
idPiezaRel: FOREIGN KEY PIEZA (idPieza)

### Ejercicio 2

![image](https://github.com/Maek0s/bd/assets/145163254/92e07b5b-0b62-41a5-81fd-6f9d18b75042)

EMPLEADO (nombre, **dni**) <br>
JEFE (**dni(fk)**,**idJefe(fk)**) <br>
dni: FOREIGN KEY EMPLEADO (dni) <br>
idJefe: FOREIGN KEY JEFE (idJefe)



