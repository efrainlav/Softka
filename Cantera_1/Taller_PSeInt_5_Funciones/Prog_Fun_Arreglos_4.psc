Proceso TallerArreglos4
	definir matriz como caracter;
	Dimension matriz[4,5];
	
	llenarMatriz(matriz);

	
	ImprimirMatriz(matriz);

FinProceso


//Funcion para llenar matriz con numeros  como texto del 1 al 20 como textos
SubProceso llenarMatriz(matriz por referencia)
	definir num, i, j como entero;
	para i<-0 hasta 3 hacer
		para j<-0 hasta 4 hacer
			num<-(5*i)+(1+j);
			matriz[i,j]<-convertiratexto(num);
		FinPara
	FinPara	
FinSubProceso

//Funcion para imprimir matriz con numeros en orden ascendente desde el 1 al 5 y del 11 al 15
//Funcion para imprimir matriz con numeros en orden descendente desde el 10 al 6 y del 120 al 16
subproceso ImprimirMatriz(matriz)
	definir fila, columna como entero;
	fila<-0;
	mientras fila <4 Hacer
		si fila = 0 Entonces
			para columna <- 0 hasta 4 con paso 1 Hacer
				Escribir "0", matriz[fila,columna], " " Sin Saltar;
			FinPara	
		FinSi
		
		si fila = 1 Entonces
			para columna <-4 hasta 4 con paso -1 Hacer
				Escribir matriz[fila,columna], " " Sin Saltar;
			FinPara
			para columna <-3 hasta 0 con paso -1 Hacer
				Escribir "0", matriz[fila,columna], " " Sin Saltar;
			FinPara
		FinSi
		
		si fila = 2 Entonces
			para columna <- 0 hasta 4 con paso 1 Hacer
				Escribir matriz[fila,columna], " " Sin Saltar;
			FinPara	
		FinSi
		
		si fila = 3 Entonces
			para columna <-4 hasta 0 con paso -1 Hacer
				Escribir matriz[fila,columna], " " Sin Saltar;
			FinPara
		FinSi
		
		Escribir "";
		
		fila<-fila+1;
	FinMientras
FinSubProceso
