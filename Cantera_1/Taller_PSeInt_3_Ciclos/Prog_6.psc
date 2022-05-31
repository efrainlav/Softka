Proceso TallerCiclos_6
	
	
	Definir nombreTemp, apellidoTemp, organizacionTemp Como Caracter;
	Definir nombre, apellido, organizacion Como Caracter;
	Definir telefonoTemp, telefono, opcion Como Entero;
	Definir listado, posicion, i, j como entero;
	
	
	dimension nombre[3], apellido[3], organizacion[3], telefono[3];
		
	

	
	Definir salir Como Logico;
	
	Para i<-0 Hasta 2 Hacer
		nombre[i] <- "NN";
		apellido[i] <- "NN";
		organizacion[i] <- "NN";
		telefono[i] <- 0;
	FinPara
	
	//Inicializar variables
	salir <- falso;
	listado <- 0;
	
	
	
	
	Mientras salir<>Verdadero Hacer
		
		Escribir "Libreta telefonica";
		Escribir "1. Añadir nuevo contacto.";
		Escribir "2. Busca contacto.";
		Escribir "3. Eliminar contacto.";
		Escribir "4. Imprimir Contactos.";
		Escribir "5. Salir.";

		Leer opcion;
		Escribir "";
		
		Segun opcion Hacer
			1:
				si listado < 3 Entonces
					Escribir "1. Añadir nuevo contacto.";
					Escribir "Escriba el nombre del contacto:";
					leer nombreTemp;
					posicion<--1;//contador posicion
					
					Para j<-0 hasta 2 Hacer
						si nombreTemp= nombre[j] Entonces
							posicion<-j;
						//	escribir "El arreglo en [",j,"] es:",nombre[j];
						FinSi
					FinPara
					
					
					
					Si posicion < 0 Entonces
						nombre[listado]<-nombreTemp;
						Escribir "Escriba el apellido del contacto:";
						leer apellido[listado];
						Escribir "Escriba el nombre de la organizacion a la que pertenece:";
						leer organizacion[listado];
						Escribir "Escriba el numero telefonico:";
						leer telefono[listado];
						Escribir "El nombre completo de su contacto ", nombre[listado]," ",apellido[listado], ", con el numero telefonico ",telefono[listado],", fue capturado satisfactoriamente.";
						Escribir "";
						listado <- listado +1;
					SiNo
						Escribir "El contacto con nombre ",nombreTemp, ", ya existe!.";
						Escribir "";
					FinSi
					
				SiNo
					Escribir "No hay espacios para mas numeros telefonicos";
					Escribir "";
				FinSi

			2:
				Escribir "2. Busca contacto.";
				Escribir "Escriba el nombre del contacto:";
				leer nombreTemp;
				posicion<--1;//contador posicion
				
				Para j<-0 hasta 2 Hacer
					si nombreTemp= nombre[j] Entonces
						posicion<-j;
						//escribir "El arreglo en [",j,"] es:",nombre[j];
					FinSi
				FinPara
				
				Si posicion >= 0 Entonces
					Escribir "El contacto con el nombre ",nombre[posicion]," y el numero telefonico ",telefono[posicion] ,", ya se encuentra registrado.";
					Escribir "";	
				SiNo
					Escribir "El contacto con el nombre ",nombreTemp,", no se encuentra registrado.";
					Escribir "";	
				FinSi
				
				
			3:
				Escribir "3. Eliminar contacto.";
				Escribir "Escriba el nombre del contacto a eliminar:";
				leer nombreTemp;
				posicion<--1;//contador posicion
				
				Para j<-0 hasta 2 Hacer
					si nombreTemp= nombre[j] Entonces
						posicion<-j;
						escribir "El arreglo en [",j,"] es:",nombre[j];
					FinSi
				FinPara
				
				Si posicion >= 0 Entonces
					Para j<-posicion hasta listado-2 Hacer
						nombre[j]<-nombre[j+1];
					FinPara
					nombre[listado-1]<-"NN";
					listado<-listado-1;	
				SiNo
					Escribir "El contacto con el nombre ",nombreTemp,", no se encuentra registrado, por lo cual no puede ser eliminado.";
					Escribir "";	
				FinSi
				
			4:
				si listado < 1 Entonces
					Escribir "No hay contactos registrados";
					Escribir "";	
				SiNo				
					para i<-0 hasta listado-1 Hacer
						Escribir "Nombre: ",nombre[i], ", Apellido: ",apellido[i], ", Telefono: ", telefono[i];
					FinPara
					Escribir "";	
				FinSi

			5:
				
				salir <- verdadero;
				
			De Otro Modo:
				Escribir "El numero ingresado no hace parte de las opciones";
				
		FinSegun
	FinMientras
	
	
FinProceso
