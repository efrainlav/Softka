Proceso TallerArreglos1
	definir num, i como entero;
	dimension num[5];
	
	para i<- 0 hasta 4 Hacer
		Escribir "Ingrese un numero: ";
		leer num[i];
		Limpiar Pantalla;
	FinPara
	
	Escribir "Los numeros son: ";

	para i<- 0 hasta 4 Hacer
		Escribir "Posicion: [",i,"] = ",num[i];
	FinPara
	
FinProceso
