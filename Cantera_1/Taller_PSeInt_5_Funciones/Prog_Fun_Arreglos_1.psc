Proceso TallerArreglos1
	definir num, i como entero;
	dimension num[5];
	llenar(num);
	escribirPantalla(num);
FinProceso


// Funcion para solicitar los numeros
subproceso llenar(num Por Referencia)
	definir i como entero;
	para i<- 0 hasta 4 Hacer
		Escribir "Ingrese un numero: ";
		leer num[i];
		Limpiar Pantalla;
	FinPara
FinSubProceso

// Funcion para imprimir los numeros
subproceso escribirPantalla(num Por Referencia)
	definir i como entero;
	Escribir "Los numeros son: ";
	para i<- 0 hasta 4 Hacer
		Escribir "Posicion: [",i,"] = ",num[i];
	FinPara
FinSubProceso