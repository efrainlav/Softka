Proceso TallerCiclos_8
	definir salir, aprobado como logico;
	definir opcion, listado, id, telefono como entero;
	definir nombre, apellido Como Caracter;
	
	dimension 	aprobado[8], id[8], telefono[8], nombre[8], apellido[8] ;
	
	
	//inicializar variables
	Para i<-0 Hasta 7 Hacer
		aprobado[i] <-falso;
		id[i] <- -1;
		telefono[i] <- -1;
		nombre[i] <-  "NN";
		apellido[i] <- "NN";
	FinPara
	
	salir <- falso;
	
	
	Mientras salir<>Verdadero Hacer
		Escribir "*********************************";
		Escribir "Escuela automovilistica El Maestro";
		Escribir "1. Registrar Cliente nuevo.";
		Escribir "2. Aprobar Curso.";
		Escribir "3. Consultar Cliente.";
		Escribir "4. Imprimir Clientes.";
		Escribir "5. Salir.";
		Escribir "*********************************";
		leer opcion;
		Escribir "";
		
		
		Segun opcion hacer
			1:
			2:
			3:
			4:
			4:
				Escribir "4. Imprimir Clientes.";
				si listado < 1 Entonces
					Escribir "No hay clientes registrados";
					Escribir "";	
				SiNo				
					para i<-0 hasta listado-1 Hacer
						Escribir "ID usuario: ",id[i], ", Nombre: ", nombre[i], ", Apellido: ", apellido[i], ", Telefono: ", telefono[i], ", Resultado: ", aprobado[i];
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