Proceso TallerArreglos2
	definir num, i , modulo como entero;
	dimension num[20], modulo[20];
	
	para i<- 0 hasta 19 Hacer
		num[i]<- aleatorio(1,100);
		modulo[i]<-num[i]%2;
	FinPara
	
	Escribir Sin Saltar "Números pares: ";
	para i<- 0 hasta 19 Hacer
		si modulo[i]=0 Entonces
			Escribir sin saltar num[i],", ";
		FinSi
	FinPara
	
	Escribir "";
	
	Escribir Sin Saltar "Números impares: ";
	para i<- 0 hasta 19 Hacer
		si modulo[i]<>0 Entonces
			Escribir sin saltar num[i],", ";
		FinSi
	FinPara
	Escribir "";	
FinProceso
