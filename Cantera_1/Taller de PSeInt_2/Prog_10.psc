Proceso Talle2_Prog9
	
	Definir salir1, salir2 Como Logico;
	Definir opcion, id, idTemp, deposito, depositoTemp, n, transaccion, retiroTemp, i, j, posicion, cuentas como entero;
	Definir nombreCompleto Como Caracter;
	
	cuentas <- 0; //contador de cuentas;
	dimension id[10], nombreCompleto[10], deposito[10];
	
	//inicializar variables
	salir1 <- falso;

	
	Para i<-0 Hasta 9 Hacer
		id[i] <- -1;
		deposito[i] <- 0;
		nombreCompleto[i] <- "NN";
	FinPara
	
	Mientras salir1 <> Verdadero Hacer
		
		//inicializar variables segun 2
		salir2 <- falso;
		
		Escribir "***************************************";
		Escribir "Su banco fiel";
		Escribir ""; 
		Escribir "Elija la opcion:";
		Escribir "1. Crear Cliente.";
		Escribir "2. Transacciones cliente.";
		Escribir "3. Salir";
		Escribir "***************************************";
		Escribir ""; 
		leer opcion;
		
		Segun opcion Hacer
			1:
				//Rectangulo				
				Escribir "1. Crear Cliente.";
				Escribir "Escriba el ID del Titular de la cuenta:";
				leer idTemp;
				posicion<--1;//contador posicion
				
				Para j<-0 hasta 9 Hacer
					si idTemp= id[j] Entonces
						posicion<-j;
						//escribir "El arreglo en [",j,"] es:",id[j];
					FinSi
				FinPara
				
				//Escribir "posicion ",posicion;
				
				Si posicion < 0 Entonces
					Escribir "Escriba el nombre completo del Titular de la cuenta:";
					leer nombreCompleto[cuentas];
					id[cuentas] <- idTemp;
					Escribir "Cuentas: ", cuentas+1, ", ID: ", id[cuentas],", Nombre: ", nombreCompleto[cuentas];
					cuentas <- cuentas+1;
					Escribir "Cuentas: ", cuentas;
				SiNo
					Escribir "El cliente ya esta registrado";
				FinSi							
			
				
				
				
			2:
				//Transacciones cliente
				Mientras salir2 <> Verdadero Hacer
					
					Escribir "***************************************";
					Escribir "2. Transacciones cliente.";
					Escribir ""; 
					Escribir "Elija la opcion:";
					Escribir "1. Realizar un deposito.";
					Escribir "2. Realizar un retiro.";
					Escribir "3. Consultar saldo";
					Escribir "4. Salir al menu anterior";
					Escribir "***************************************";
					Escribir ""; 
					leer transaccion;
					
					Segun transaccion Hacer
						1:
							Escribir "";
							Escribir "1. Realizar un deposito.";
							Escribir "Escriba el ID del Titular de la cuenta:";
							leer idTemp;
							posicion<--1;//contador posicion
							
							
							Para j<-0 hasta 9 Hacer
								si idTemp= id[j] Entonces
									posicion<-j;
									//escribir "El arreglo en [",j,"] es:",id[j];
								FinSi
							FinPara
							
							//Escribir "posicion ",posicion;
							
							Si posicion >= 0 Entonces
								Escribir "Escriba cuanto dinero va a depositar en la cuenta con el ID:",id[posicion],", del usuario ",nombreCompleto[posicion] ;
								leer depositoTemp;
									si depositoTemp > 0 Entonces
										Escribir "";
										deposito[posicion] <- depositoTemp+deposito[posicion];
										Escribir "Su nuevo saldo es: ", deposito[posicion];
									SiNo
										Escribir "El valor debe ser mayor a cero!";					
									FinSi
							SiNo
								Escribir "El ID ", idTemp, " no pertenece a ningun titular de cuenta en el banco";
							FinSi
							
						2:
							Escribir "";
							Escribir "2. Realizar un retiro.";
							Escribir "Escriba el ID del Titular de la cuenta:";
							leer idTemp;
							posicion<--1;//contador posicion
							
							
							Para j<-0 hasta 9 Hacer
								si idTemp= id[j] Entonces
									posicion<-j;
									//escribir "El arreglo en [",j,"] es:",id[j];
								FinSi
							FinPara
							
							//Escribir "posicion ",posicion;
							
							Si posicion >= 0 Entonces
								Escribir "Escriba cuanto dinero va a retirar de la cuenta con el ID:",id[posicion],", del usuario ",nombreCompleto[posicion] ;
								leer retiroTemp;
								si deposito[posicion] -retiroTemp >= 0 Entonces
									Escribir "";
									Escribir "Por favor recoja su dinero del cajero";
									Escribir "Acaba de retirar retirar: ", retiroTemp, " dls";
									deposito[posicion] <- deposito[posicion]-retiroTemp ;
									Escribir "Su nuevo saldo es: ", deposito[posicion];
								SiNo
									Escribir "No puede retirar mas de: ", deposito[posicion];					
								FinSi
							SiNo
								Escribir "El ID ", idTemp, " no pertenece a ningun titular de cuenta en el banco";
							FinSi

							
							
						3:
							Escribir "";
							Escribir "3. Consultar saldo";
							Escribir "Escriba el ID del Titular de la cuenta:";
							leer idTemp;
							posicion<--1;//contador posicion
							
							
							Para j<-0 hasta 9 Hacer
								si idTemp= id[j] Entonces
									posicion<-j;
									//escribir "El arreglo en [",j,"] es:",id[j];
								FinSi
							FinPara
							
							//Escribir "posicion ",posicion;
							
							Si posicion >= 0 Entonces
									Escribir "Su saldo es: ", deposito[posicion];
							SiNo
								Escribir "El ID ", idTemp, " no pertenece a ningun titular de cuenta en el banco";
							FinSi
							
							
						4:			
							Escribir "";
							Escribir "4. Salir al menu anterior";
							salir2 <- Verdadero;
							
						De Otro Modo:
							Escribir "La opcion seleccionada no es valida. Intentelo de nuevo"; 
					FinSegun
				FinMientras

				
			3:

				Escribir "Esperamos que halla disfrutado su tiempo en Banco"; 
				salir1 <- Verdadero;
			
			De Otro Modo:
				Escribir "La opcion seleccionada no es valida. Intentelo de nuevo"; 
		FinSegun		
	FinMientras
FinProceso