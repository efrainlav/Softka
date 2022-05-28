Proceso TallerCiclos_3
	
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
		Para j<- 2 hasta i con paso 1 Hacer
			Escribir Sin Saltar hoja;			
		FinPara
		Para j<- 1 hasta i con paso 1 Hacer
			Escribir Sin Saltar hoja;			
		FinPara		
		Escribir "";
	FinPara	
	
	//tronco
	Para i<-1 hasta 2 con paso 1 Hacer
		Para j<- 1 hasta 8 con paso 1 Hacer
			Escribir Sin Saltar " ";			
		FinPara
		Para j<- 1 hasta 3 con paso 1 Hacer
			Escribir Sin Saltar hoja;			
		FinPara
		Escribir "";
	FinPara
	
	Para i<-1 hasta 1 con paso 1 Hacer
		Para j<- 1 hasta 7 con paso 1 Hacer
			Escribir Sin Saltar " ";			
		FinPara
		Para j<- 1 hasta 5 con paso 1 Hacer
			Escribir Sin Saltar hoja;			
		FinPara
		Escribir "";
	FinPara
	
	Para i<-1 hasta 1 con paso 1 Hacer
		Para j<- 1 hasta 6 con paso 1 Hacer
			Escribir Sin Saltar " ";			
		FinPara
		Para j<- 1 hasta 7 con paso 1 Hacer
			Escribir Sin Saltar hoja;			
		FinPara
		Escribir "";	
	FinPara
	
FinProceso
