Proceso TallerArreglos3
	
	Definir a, i, contador Como Entero;
	
	Escribir "Ingrese un numero";
	leer a;
	
	contador<-0;
	para i<-1 hasta a Hacer
		si a%i = 0 Entonces
			contador <- contador +1;			
		FinSi
	FinPara
	si contador = 2 Entonces
		Escribir "El numero es primo.";
	SiNo
		Escribir "El numero no es primo.";
	FinSi
FinProceso
