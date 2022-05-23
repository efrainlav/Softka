Proceso Talle2_Prog6
	Definir i, n, tempTorta, limChoco, limtresLeches, limVino, limOtros, opcion, posicion Como Entero;
	
	Definir registro Como Caracter;
	Definir fechaIngreso Como Caracter;
	Definir fechaSalida Como Caracter;
	Definir observacionesCliente Como Caracter;
	Definir Novedades Como Caracter;
	
	n<- 0; //INICIADOR CONTADOR DE REGISTROS
	
	limChoco<-0;
	limtresLeches<-0;
	limVino<-0;
	limOtros<-0;
	
	dimension registro[16], tChocolate[4], tVino[4], tTresLeches[4], tOtras[4];
	//No supe como asignar desde la variable n el tamaño de los arreglos. : /
	
	Definir salir, recorre como Logico;
	
	//inicializar variables
	salir <- falso;	
	
	//empieza ciclo del menu
	Mientras Salir <> Verdadero Hacer		
		Escribir "***************************************";
		Escribir "Bienvenidos a su Panaderia y Pasteleria Don Carlos";
		Escribir "Elija una opcion";
		Escribir "1. Registrar pedido";
		Escribir "2. Tortas disponibles";
		Escribir "3. Ventas";
		Escribir "4. Salir";
		Escribir "***************************************";
		Leer Opcion;
		
		Segun Opcion Hacer
			
			1://Registrar pedido de torta
					Escribir "1. Registrar pedido"; 
					Escribir "Ingrese el ID del tipo de torta a vender"; 
					Escribir "1. Torta de Chocolate";
					Escribir "2. Torta de Tres Leches";
					Escribir "3. Torta de Vino";
					Escribir "4. Otro tipo de torta";
					Leer tempTorta;
					
					Segun tempTorta hacer
						1:
							Leer tChocolate[n];
							
							n<-n+1;
							
						2:
							Leer tTresLeches[n];
							n<-n+1;
							
						3:
							Leer tVino[n];
							n<-n+1;
							
						4:
							Leer tOtras[n];
							n<-n+1;
							
						De Otro Modo:
							Escribir "El tipo de torta ",tempTorta," no esta listado aun";	
					FinSegun

				
				//Consulta historial tortas			
			2:
				Escribir "2. Tortas disponibles";
				Escribir "Torta de Chocolate";
				Escribir "Torta de Tres Leches";
				Escribir "Torta de Vino";
				Escribir "Otro tipo de torta";
				
				
			3:
				Escribir "Tortas disponibles";
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
	
FinProceso