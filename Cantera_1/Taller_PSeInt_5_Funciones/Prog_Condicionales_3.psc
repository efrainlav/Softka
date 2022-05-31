Proceso Talle2_Prog3
	nombreEdad();		
FinProceso


//funcion nombre edad, toma nombre e identifica si es mayor o menor de edad
SubProceso nombreEdad()
	Definir Nombre Como Caracter;
	Definir Apellido Como Caracter;
	Definir Edad Como Real;
	
	Escribir "¿Cual es su nombre?";
	Leer Nombre;
	Escribir "¿Cual es su apellido?";
	Leer Apellido;
	Escribir "¿Cual es su edad";
	Leer Edad;	
	
	Si Edad >= 18 Entonces
		Escribir Nombre, " ", Apellido, " usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Escribir Nombre, " ", Apellido, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinSubProceso
	