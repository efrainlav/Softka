Proceso TallerArreglos3
	Definir salir como logico;
	Definir num, opcion Como Entero;
	
	salir<-falso;
	
	mientras salir<>verdadero Hacer

		Escribir "Programa para contar numeros primos.";
		Escribir "1. Contar numeros primos";
		Escribir "2. Salir";
		leer opcion;
		
		segun opcion hacer 
			1:
				Escribir "1. Contar numeros primos";
				Escribir "Ingrese hasta que numero quiere contar los numeros primos:";
				Leer num;
				contarPrimos(num);
				
			2:
				salir<-verdadero;
				Escribir "Que tengas un feliz dia.";
				
			de otro modo:
				Escribir "La opcion ingresada no es valida";
		FinSegun

	FinMientras

FinProceso


//Funcion para contar numeros primos
SubProceso contarPrimos(num Por Referencia)
	Definir a, i, contador, primos Como Entero;
	primos <- 0;
	
	Escribir "Numeros primos del 1 al ", num;
	
	para a <- 1 hasta num Hacer
		contador<-0;
		para i<-1 hasta a Hacer
//			si a=1 Entonces
//				Escribir a, " es un número primo.";	
//			FinSi
			
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
FinSubProceso
