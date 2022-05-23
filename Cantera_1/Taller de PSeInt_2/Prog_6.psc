Proceso Talle2_Prog6
	Definir i, n, nMoto, limiteMotos, opcion, posicion Como Entero;

	Definir tempMoto Como Caracter;
	Definir placaMoto Como Caracter;
	Definir fechaIngreso Como Caracter;
	Definir fechaSalida Como Caracter;
	Definir observacionesCliente Como Caracter;
	Definir Novedades Como Caracter;
	
	n<- 3; //contador de motos
	
	limiteMotos<-0; //Cantidad de motos que puede atender el taller
	
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
				Si limiteMotos < n Entonces
					Escribir "1. Ingresar moto"; 
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
					//Escribir "Posicion: ",posicion;
					Si posicion >= 0 Entonces
							Escribir "La moto ya esta registrada";
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
				FinSi
					Escribir "Numero de capacidad de motos del taller: ",n - limiteMotos;


	

				//Consulta historial moto			
			2:
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
					FinSi	
				SiNo
					Escribir "No hay motos por el momento en el taller";
				FinSi
				
				Escribir "Numero de capacidad de motos del taller: ",n - limiteMotos;	
				
				//Entregar Moto	
			3:
				Si limiteMotos > 0 Entonces
					Escribir "3. Entregar Moto"; 
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
						Escribir "Digite la fecha de salida:"; 
						Leer fechasalida[n];
						Escribir "Registre las novedades y otras obserbaciones de arreglos hechos por el mecánico:"; 
						Leer Novedades[n];
						Escribir "Moto Entregada!!";
						limiteMotos <- limiteMotos-1;
					SiNo
						Escribir "La moto con la placa ", TempMoto," no a sido ingresada al sistema."; 
					FinSi					
				SiNo
					Escribir "No hay motos por el momento para entregar";
				FinSi
				
				Escribir "Numero de capacidad de motos del taller: ",n - limiteMotos;
				
				
				//Salida
			4:
				Escribir "Esperamos que halla disfrutado su tiempo en taller"; 
				Salir <- Verdadero;
				
			De Otro Modo:
				Escribir "La opcion seleccionada no es valida. Intentelo de nuevo"; 
		FinSegun
	FinMientras
FinProceso