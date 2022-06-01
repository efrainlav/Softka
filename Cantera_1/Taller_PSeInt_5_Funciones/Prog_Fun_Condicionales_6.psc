Proceso Talle2_Prog6
	Definir i, contador, n, limiteMotos, opcion, posicion Como Entero;
	Definir tempMoto Como Caracter;
	Definir placaMoto Como Caracter;
	Definir fechaIngreso Como Caracter;
	Definir fechaSalida Como Caracter;
	Definir observacionesCliente Como Caracter;
	Definir Novedades Como Caracter;
	
	n<- 3; //contador de motos
	limiteMotos<- 0; //Cantidad de motos que puede atender el taller
	
	dimension placaMoto[4], fechaIngreso[4], fechaSalida[4], observacionesCliente[4], Novedades[4];
	//No supe como asignar desde la variable n el tamaño de los arreglos. : /
	
	Definir salir, recorre como Logico;
	
	//inicializar variables
	salir <- falso;
	
	Para i<-0 Hasta n Hacer
		placaMoto[i] <- "Ninguna";
		fechaIngreso[i] <-"Ninguna";
		fechaSalida[i] <-"Ninguna";
		observacionesCliente[i] <- "Ninguna";
		Novedades[i] <- "Ninguna";
	FinPara
	
	//empieza ciclo del menu
	Mientras Salir <> Verdadero Hacer		
		i<-0;
		contador<-0;
		posicion<--1;//contador posicion
		
		Escribir "***************************************";
		Escribir "Bienvenidos a su taller El Maquinista";
		Escribir "Elija una opcion";
		Escribir "1. Ingresar moto";
		Escribir "2. Historial Moto";
		Escribir "3. Entregar Moto";
		Escribir "4. Salir";
		Escribir "***************************************";
		Leer Opcion;
		
		Segun Opcion Hacer
					
			1://Ingresar y buscar la moto por placa
				//Funcion ingresar moto
				ingresar(limiteMotos, TempMoto, i, posicion, placaMoto, n, fechaIngreso, observacionesCliente, fechasalida);


			2:
				//funcion historial moto
				historial(limiteMotos, TempMoto, i, posicion, placaMoto, n, fechaIngreso, fechasalida, observacionesCliente);
					
			3:
				//Funcion para entregar la moto
				entrega(limiteMotos, contador, posicion, TempMoto, placaMoto, n, fechasalida, Novedades);
				//	definir i, posicion Como Entero;

				
				//Salida
			4://FUncion para salir
				exit(Salir);
				
			De Otro Modo:
				Escribir "La opcion seleccionada no es valida. Intentelo de nuevo"; 
		FinSegun
	FinMientras
FinProceso

//Funcion ingresar moto
subproceso ingresar(limiteMotos Por Referencia, TempMoto Por Referencia, i Por Referencia, posicion Por Referencia, placaMoto Por Referencia, n Por Referencia, fechaIngreso Por Referencia, observacionesCliente Por Referencia, fechasalida Por Referencia)
	Si limiteMotos < n Entonces
		Escribir "1. Ingresar moto"; 
		Escribir "¿Cual es la placa de la moto?"; 
		Leer tempMoto;

		//recorre lista de motos buscando placa
		Repetir
			Si tempMoto == placaMoto[i] Entonces
				posicion<-i;
			FinSi
			i<-i+1;
		Hasta Que i > n 
		
		//Escribir "Posicion: ",posicion;
		Si posicion >= 0 Entonces
			Escribir "La moto ya esta registrada";
			Escribir "";
		SiNo
			Escribir "Digite la fecha de ingreso:"; 
			Leer fechaIngreso[limiteMotos];
			Escribir "Digite las observaciones del cliente:"; 
			Leer observacionesCliente[limiteMotos];
			placaMoto[limiteMotos] <- tempMoto;
			fechaSalida[limiteMotos] <- "No entregada";		
			limiteMotos <- limiteMotos+1;
		FinSi
	SiNo
		Escribir "No hay espacio para mas motos";
		Escribir "";
	FinSi
	Escribir "Numero de capacidad de motos del taller: ",n - limiteMotos;
	Escribir "";
	Escribir "";
FinSubProceso


//funcion historial moto
subproceso historial(limiteMotos Por Referencia, TempMoto Por Referencia, i Por Referencia, posicion Por Referencia, placaMoto Por Referencia, n Por Referencia, fechaIngreso Por Referencia,fechasalida Por Referencia, observacionesCliente Por Referencia)
	Si limiteMotos > 0 Entonces
		Escribir "2. Historial Moto"; 
		Escribir "¿Cual es la placa de la moto?"; 
		Leer tempMoto;
		i<-0;
		posicion<--1;//contador posicion
		
		//recorre lista de motos buscando placa
		Repetir
			Si tempMoto == placaMoto[i] Entonces
				posicion<-i;
			FinSi
			i<-i+1;
			//Escribir "i es: ",i;
			//Escribir "N es: ",n;
		Hasta Que i > n 
		
		Si posicion >= 0 Entonces
			Escribir "Placa de la Moto: ",placaMoto[posicion]; 
			Escribir "Fecha de Ingreso: ",fechaIngreso[posicion];
			Escribir "Fecha de Salida: ",fechaSalida[posicion];; 
			Escribir "Observaciones Cliente: ",observacionesCliente[posicion];
		SiNo
			Escribir "La moto con la placa ", TempMoto," no a sido ingresada al sistema."; 
			Escribir "";
		FinSi	
	SiNo
		Escribir "No hay motos por el momento en el taller";
		Escribir "";
	FinSi
	
	Escribir "Numero de capacidad de motos del taller: ",n - limiteMotos;	
	Escribir "";
	Escribir "";
FinSubProceso


//Funcion para entregar la moto
subproceso entrega(limiteMotos Por Referencia, contador Por Referencia, posicion Por Referencia, TempMoto Por Referencia, placaMoto Por Referencia, n Por Referencia, fechasalida Por Referencia, Novedades Por Referencia)
	//	definir i, posicion Como Entero;
	contador<-0;
	posicion<--1;//contador posicion
	
	Si limiteMotos > 0 Entonces
		Escribir "3. Entregar Moto"; 
		Escribir "¿Cual es la placa de la moto?"; 
		Leer tempMoto;
		//recorre lista de motos buscando placa
		Repetir
			Si tempMoto == placaMoto[contador] Entonces
				posicion<-contador;
			FinSi
			contador<-contador+1;
		Hasta Que contador > n 
		
		Si posicion >= 0 Entonces
			placaMoto[posicion]<-"NA";
			Escribir "Digite la fecha de salida:"; 
			Leer fechasalida[n];
			Escribir "Registre las novedades y otras obserbaciones de arreglos hechos por el mecánico:"; 
			Leer Novedades[n];
			Escribir "Moto Entregada!!";
			limiteMotos <- limiteMotos-1;
		SiNo
			Escribir "La moto con la placa ", TempMoto," no a sido ingresada al sistema."; 
			Escribir "";
		FinSi					
	SiNo
		Escribir "No hay motos por el momento para entregar";
		Escribir "";
	FinSi
	Escribir "Numero de capacidad de motos del taller: ",n - limiteMotos;
	Escribir "";
	Escribir "";
FinSubProceso

//FUncion para salir
subproceso exit(SAlir Por Referencia)
	Escribir "Esperamos que halla disfrutado su tiempo en taller"; 
	Escribir "";
	Salir <- Verdadero;
FinSubProceso
	