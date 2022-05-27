Proceso Arreglo2
	
	Definir x, j, num, bus como entero;
	definir encontrado como logico;
	definir a1 como entero;
	
	dimension a1[5];
	encontrado <- falso;
	
	//llenar el arreglo
	Para x<- 0 hasta 5-1 Hacer
		Escribir "Arreglo [",x,"]";
		leer num;
		a1[x]<-num;
	FinPara
	
	Escribir "Ingrese el valro a bsucar";
	Leer bus;
	
	Para j<-0 hasta 5-1 Hacer
		si bus= a1[j] Entonces
			escribir "El arreglo en [",j,"] es:",a1[j];
		FinSi
	FinPara
	
	
	
	
FinProceso
