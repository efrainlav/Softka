Proceso TallerArreglos1
	definir num, i como entero;
	dimension num[5];
<<<<<<< HEAD:Cantera_1/Taller_PSeInt_5_Funciones/Prog_Arreglos_1.psc
	num<-llenar();
	EscribePantalla(num);
	
FinProceso

SubProceso num <- llenar() 
	Definir num, i como entero;	
	dimension num[5];
=======
	llenar(num);
	escribirPantalla(num);
FinProceso


// Funcion para solicitar los numeros
subproceso llenar(num Por Referencia)
	definir i como entero;
>>>>>>> origin/main:Cantera_1/Taller_PSeInt_5_Funciones/Prog_Fun_Arreglos_1.psc
	para i<- 0 hasta 4 Hacer
		Escribir "Ingrese un numero: ";
		leer num[i];
		Limpiar Pantalla;
	FinPara
FinSubProceso

<<<<<<< HEAD:Cantera_1/Taller_PSeInt_5_Funciones/Prog_Arreglos_1.psc
Subproceso EscribePantalla(num)
		Escribir "Los numeros son: ";
		para i<- 0 hasta 4 Hacer
			Escribir "Posicion: [",i,"] = ",num[i];
		FinPara
FinSubProceso
	
	




=======
// Funcion para imprimir los numeros
subproceso escribirPantalla(num Por Referencia)
	definir i como entero;
	Escribir "Los numeros son: ";
	para i<- 0 hasta 4 Hacer
		Escribir "Posicion: [",i,"] = ",num[i];
	FinPara
FinSubProceso
>>>>>>> origin/main:Cantera_1/Taller_PSeInt_5_Funciones/Prog_Fun_Arreglos_1.psc
