Proceso TallerArreglos5
	definir fila, columna, num1, num2, multiplicacion, opcion como entero;
	definir matriz, label Como Caracter;
	definir salir como logico;
	
	dimension matriz[10,10], multiplicacion[10,10];
	salir <- falso;
	
	Label<-"COLUMNA";
	
	Mientras salir <> verdadero Hacer
		Escribir "---------------------------------",Label,"-------------------------------------------";
		
		Escribir "    |   1   |   2   |   3   |   4   |   5   |   6   |   7   |   8   |   9   |   10   |";
		Escribir "--------------------------------------------------------------------------------------";
		
		
		
		para fila <- 0 hasta 9 Hacer
			num1<-fila+1;
			para columna<- 0 hasta 9 Hacer
				num2<-columna+1;
				matriz[fila, columna] <- concatenar(Concatenar(ConvertirATexto(fila+1)," x "), ConvertirATexto(columna+1));
				multiplicacion[fila, columna] <-num1*num2;
			FinPara
		FinPara
		
		
		Label<-"***FILA***";
		para fila <- 0 hasta 8 Hacer
			Escribir Subcadena(Label,fila,fila) Sin Saltar, "- ",fila+1, "|";
			para columna <- 0 hasta 9 con paso 1 Hacer
				Escribir "  ", matriz[fila,columna], "|" Sin Saltar;
			FinPara	
			Escribir "";
		FinPara
		
		Escribir Subcadena(Label,9,9) Sin Saltar, "-",fila+1, "|";
		para columna <- 0 hasta 9 con paso 1 Hacer
			Escribir " ", matriz[9,columna], "|" Sin Saltar;
		FinPara	
		Escribir "";
		
		Escribir "";
		Escribir "Selecione una opcion:";
		Escribir "1. Seleccionar por fila y columa el resultado de la multiplicación: ";
		Escribir "2. Salir. ";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "";
				Escribir "1. Seleccionar por fila y columa el resultado de la multiplicación: ";
				Escribir "Fila: ";
				leer fila;
				Escribir "Columna: ";
				Leer columna;
				Escribir "";
				Escribir "La multiplicacion de ", fila, " * ", columna," es: ", multiplicacion[fila-1,columna-1];
				Escribir "";
			2:
				salir <- verdadero;
				Escribir "Hasta luego.";
				Escribir "";
				
			De Otro Modo:
				Escribir "La opcion seleccionada no es valida.";
				Escribir "";
		FinSegun
	FinMientras	
FinProceso
