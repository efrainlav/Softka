Proceso Talle2_Prog1
	Definir Edad Como Real;
	Escribir "¿Cual es su Edad?";
	Leer Edad;
	Mayor(edad);
FinProceso

//funcion de edad
SubProceso Mayor(edad)
	Si Edad >= 18 Entonces
		Escribir " Usted  es mayor de edad";
	SiNo
		Escribir " Usted no es mayor de edad";
	FinSi
FinSubProceso

