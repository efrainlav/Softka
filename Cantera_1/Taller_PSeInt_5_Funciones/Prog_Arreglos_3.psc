Proceso TallerArreglos3
	
	Definir a, i, contador, primos Como Entero;
	primos <- 0;
	
	Escribir "Numeros primos del 1 al 1000";
	
	para a <- 1 hasta 1000 Hacer
		contador<-0;
		para i<-1 hasta a Hacer
			si a=1 Entonces
				Escribir a, " es un número primo.";	
			FinSi
			
			si a%i = 0 Entonces
				contador <- contador +1;			
			FinSi
			
		FinPara
		si contador = 2 Entonces
			Escribir a, " es un número primo.";
			primos <- primos +1;
		FinSi
	FinPara
	
	Escribir "";
	Escribir "Hay un total de ", primos, " numeros primos del 1 al 1000.";
	Escribir "";
FinProceso
