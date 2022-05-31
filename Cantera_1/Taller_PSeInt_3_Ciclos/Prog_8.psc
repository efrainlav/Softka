Proceso TallerCiclos_8
	definir salir, aprobado como logico;
	definir opcion, listado, i, j, id, idTemp, numeroTemp, telefono, actualizar como entero;
	definir nombre, apellido, estado Como Caracter;
	
	dimension 	aprobado[8], id[8], telefono[8], nombre[8], apellido[8] ;
	
	
	//inicializar variables
	Para i<-0 Hasta 7 Hacer
		aprobado[i] <-falso;
		id[i] <- -1;
		telefono[i] <- -1;
		nombre[i] <-  "NN";
		apellido[i] <- "NN";
	FinPara
	
	listado <- 0;
	salir <- falso;
	
	
	Mientras salir<>Verdadero Hacer
		Escribir "*********************************";
		Escribir "Escuela automovilistica El Maestro";
		Escribir "1. Registrar Cliente nuevo.";
		Escribir "2. Cambiar estado del Curso.";
		Escribir "3. Consultar Cliente.";
		Escribir "4. Imprimir Clientes.";
		Escribir "5. Salir.";
		Escribir "*********************************";
		leer opcion;
		Escribir "";
		
		
		Segun opcion hacer
			1:
				si listado < 8 Entonces
					Escribir "1. Registrar Cliente nuevo.";
					Escribir "Escriba el ID del nuevo cliente:";
					leer idTemp;
					numeroTemp<--1;//contador posicion
					
					Para j<-0 hasta 7 Hacer
						si idTemp= id[j] Entonces
							numeroTemp<-j;
							//	escribir "El arreglo en [",j,"] es:",nombre[j];
						FinSi
					FinPara
					
					
					
					Si numeroTemp < 0 Entonces
						id[listado]<-idTemp;
						Escribir "Escriba el nombre del cliente:";
						leer nombre[listado];
						Escribir "Escriba el apellido del cliente:";
						leer apellido[listado];
						Escribir "Escriba el telefono del cliente:";
						leer telefono[listado];
						Escribir "El cliente con ID ", id[listado]," ha sido ingresado correctamente.";
						Escribir "";
						listado <- listado +1;
					SiNo
						Escribir "El cliente con ID ",idTemp, ", ya existe!.";
						Escribir "";
					FinSi
					
				SiNo
					Escribir "No hay espacios para registrar mas clientes";
					Escribir "";
				FinSi
				
			2:
				si listado < 1 Entonces
					Escribir "No hay clientes registrados.";
				SiNo
					Escribir "2. Cambiar estado del Curso.";
					Escribir "Escriba el ID del cliente:";
					leer idTemp;
					numeroTemp<--1;//contador posicion
					
					Para j<-0 hasta 7 Hacer
						si idTemp= id[j] Entonces
							numeroTemp<-j;
							//	escribir "El arreglo en [",j,"] es:",nombre[j];
						FinSi
					FinPara
					
					Si numeroTemp >= 0 Entonces
						Escribir "¿Desea cambiar el estado del curso para este cliente?";
						Escribir "1. Aprobar.";
						Escribir "2. No Aprobar.";
						leer actualizar;
						
						segun actualizar Hacer
							1:	
								aprobado[numeroTemp]<- verdadero;
								Escribir "El estado del curso para el cliente con ID ", id[numeroTemp], " es APROBADO";
							2:
								aprobado[numeroTemp]<- falso;
								Escribir "El estado del curso para el cliente con ID ", id[numeroTemp], " es NO APROBADO";
								
							De Otro Modo:
								Escribir "La opcion ingresada no es valida.";
						FinSegun
					SiNo
						Escribir "El cliente con el ID ",idTemp," no se encuentra registrado";
						
					FinSi	
				FinSi
				
					
				
				
			3:
				si listado < 1 Entonces
					Escribir "No hay clientes registrados.";
				SiNo
					Escribir "3. Consultar Cliente.";
					Escribir "Escriba el numero de ID del cliente a buscar:";
					leer idTemp;
					numeroTemp<--1;//contador posicion
					
					Para j<-0 hasta 7 Hacer
						si idTemp= id[j] Entonces
							numeroTemp<-j;
							//escribir "El arreglo en [",j,"] es:",nombre[j];
						FinSi
					FinPara
					
					Si numeroTemp >= 0 Entonces
						si aprobado[numeroTemp] = verdadero Entonces
							estado<-"Aprobado";
						SiNo
							estado<-"No Aprobado";
						FinSi
						
						Escribir "El cliente con ID ",id[numeroTemp]," tiene el curso en estado: ",estado;
						Escribir "";	
					SiNo
						Escribir "El cliente con ID  ",idTemp,", no se encuentra registrado.";
						Escribir "";	
					FinSi
					
				FinSi
				
				
				
				
			4:
				
				si listado < 1 Entonces
					Escribir "No hay clientes registrados.";
				SiNo
					Escribir "4. Imprimir Clientes.";
					para i<-0 hasta listado-1 Hacer
						Escribir "ID usuario: ",id[i], ", Nombre: ", nombre[i], ", Apellido: ", apellido[i], ", Telefono: ", telefono[i], ", Aprobado: ", aprobado[i];
					FinPara
					Escribir "";	
				FinSi
			5:
				salir<-verdadero;
				
			De Otro Modo:
				Escribir "La opcion ingresada no es valida";	
				Escribir "";
		FinSegun
		
	FinMientras
	
	
	
FinProceso
//