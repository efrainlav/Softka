Proceso TallerArreglos2
	definir num, modulo como entero;
	dimension num[20], modulo[20];
	
	LlenarAleatorio(num, modulo);
	pares(num, modulo);
	impares(num, modulo);	
FinProceso



//Llena aleatoriamente con numeros enteros la matriz num y calcula el modulo con 2 de cada numero en la matriz modulo
subproceso LlenarAleatorio(num Por Referencia, modulo por referencia)
	definir i como entero;
	para i<- 0 hasta 19 Hacer
		num[i]<- aleatorio(1,100);
		modulo[i]<-num[i]%2;
	FinPara
FinSubProceso


	
//Imprime numero pares
subproceso pares(num Por Referencia, modulo por referencia)
	definir i como entero;
	
	Escribir Sin Saltar "Números pares: ";
	para i<- 0 hasta 19 Hacer
		si modulo[i]=0 Entonces
			Escribir sin saltar num[i],", ";
		FinSi
	FinPara
	Escribir "";
FinSubProceso



//Imprime numero impares
subproceso impares(num Por Referencia, modulo por referencia)
	definir i como entero;

	Escribir Sin Saltar "Números impares: ";
	para i<- 0 hasta 19 Hacer
		si modulo[i]<>0 Entonces
			Escribir sin saltar num[i],", ";
		FinSi
	FinPara
	Escribir "";	
FinSubProceso

