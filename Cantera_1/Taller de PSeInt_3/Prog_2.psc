Proceso TallerCiclos_2
	
	Definir i, j, n como entero;
	Definir hoja, espacio Como Caracter;
	
	i<-0;
	j<-0;
	n<-10;
	hoja<-"*";
	espacio<-"";
	
	Para i<-1 hasta n con paso 1 Hacer
		Para j<- 1 hasta n-i con paso 1 Hacer
			Escribir Sin Saltar " ";			
		FinPara
		Para j<- 1 hasta i con paso 1 Hacer
			Escribir Sin Saltar hoja;			
		FinPara
		Escribir "";
	FinPara	
FinProceso
