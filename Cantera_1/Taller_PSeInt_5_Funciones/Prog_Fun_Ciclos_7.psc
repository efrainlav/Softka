Proceso TallerCiclos_7
	
	Definir placa, marca Como Caracter;
	definir nombre, apellido Como Caracter;
	definir telefono, opcion, listado, i, j Como Entero;
	
	Definir salir como Logico;
	
	Definir textoTemp como caracter;
	Definir numeroTemp como Entero;
	
	Dimension placa[5], marca[5], nombre[5], apellido[5], telefono[5];
	
	//Funcion para inicializar arreglos
	inicializar(i, placa, marca, nombre, apellido, telefono, listado, salir);
	
	
	Mientras salir<>Verdadero Hacer
		Escribir "*********************************";
		Escribir "Parqueadero el Guardian";
		Escribir "1. Ingresar vehiculo.";
		Escribir "2. Retirar Vehiculo.";
		Escribir "3. Consultar Vehiculo.";
		Escribir "4. Imprimir Vehiculo.";
		Escribir "5. Salir.";
		Escribir "*********************************";
		leer opcion;
		Escribir "";
		
		
		segun opcion hacer
			1:
				si listado < 5 Entonces
					Escribir "1. Ingresar vehiculo.";
					Escribir "Escriba la placa del vehiculo a ingresar:";
					leer textoTemp;
					numeroTemp<--1;//contador posicion
					
					//Funcion para buscar vehiculo
					buscar(j, textoTemp, placa, numeroTemp);
					
					//Funcion para ingresar vehiculo
					IngresarVeh(placa, marca, nombre, apellido, telefono, listado, salir, textoTemp, numeroTemp);
										
				SiNo
					Escribir "No hay espacios para mas vehiculos";
					Escribir "";
				FinSi
				
				
			2:
				Escribir "2. Retirar Vehiculo.";
				Escribir "Escriba la placa del vehiculo a retirar:";
				leer textoTemp;
				numeroTemp<--1;//contador posicion
				
				//Funcion para buscar vehiculo
				buscar(j, textoTemp, placa, numeroTemp);
				
				//Funcion para retirar vehiculo
				retirar(numeroTemp, j, listado, placa, textoTemp);
				
				
			3:
				
				Escribir "3. Consultar Vehiculo.";
				Escribir "Escriba la placa del vehiculo a buscar:";
				leer textoTemp;
				numeroTemp<--1;//contador posicion
				
				//Funcion para buscar vehiculo
				buscar(j, textoTemp, placa, numeroTemp);
				
				Si numeroTemp >= 0 Entonces
					Escribir "El vehiculo con placas ",placa[numeroTemp]," de marca ",marca[numeroTemp]," ,se encuentra ingresado en el parqueadero.";
					Escribir "";	
				SiNo
					Escribir "El vehiculo con placas  ",textoTemp,", no se encuentra registrado.";
					Escribir "";	
				FinSi
				
				
			4:
				Escribir "4. Imprimir Vehiculo.";
				si listado < 1 Entonces
					Escribir "No hay vehiculo registrados";
					Escribir "";	
				SiNo				
					para i<-0 hasta listado-1 Hacer
						Escribir "Placa: ",placa[i], ", Marca: ",marca[i], ", Nombre: ", nombre[i], ", Apellido: ", apellido[i], ", Telefono: ", telefono[i];
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

//Funcion para inicializar arreglos
SubProceso inicializar(i por referencia, placa por referencia,marca por referencia, nombre por referencia, apellido por referencia, telefono por referencia, listado por referencia, salir por referencia)
	Para i<-0 Hasta 4 Hacer
		placa[i] <- "NN";
		marca[i] <- "NN";
		nombre[i] <- "NN";
		apellido[i] <- "NN";
		telefono[i] <- 0;
	FinPara
	listado <- 0;
	salir<-falso;
FinSubProceso	


//Funcion para ingresar vehiculo
SubProceso IngresarVeh(placa por referencia,marca por referencia, nombre por referencia, apellido por referencia, telefono por referencia, listado por referencia, salir por referencia, textoTemp por referencia, numeroTemp por referencia)
	Si numeroTemp < 0 Entonces
		placa[listado]<-textoTemp;
		Escribir "Escriba la marca del vehiculo:";
		leer marca[listado];
		Escribir "Escriba el nombre del propietario:";
		leer nombre[listado];
		Escribir "Escriba el apellido del propietario:";
		leer apellido[listado];
		Escribir "Escriba el numero telefonico del propietario:";
		leer telefono[listado];
		Escribir "El vehiculo de placas ", placa[listado]," ha sido ingresado correctamente.";
		Escribir "";
		listado <- listado +1;
	SiNo
		Escribir "El vehiculo con nombre ",textoTemp, ", ya existe!.";
		Escribir "";
	FinSi
FinSubProceso

//Funcion para retirar vehiculo

SubProceso retirar(numeroTemp por referencia, j por referencia, listado por referencia, placa por referencia, textoTemp por referencia)
	Si numeroTemp >= 0 Entonces
		Para j<-numeroTemp hasta listado-2 Hacer
			placa[j]<-placa[j+1];
		FinPara
		Escribir "El vehiculo de placas ",textoTemp,", ha sido retirado.";
		Escribir "";	
		placa[listado-1]<-"NN";
		listado<-listado-1;	
	SiNo
		Escribir "El vehiculo de placas ",textoTemp,", no se encuentra ingresado al parqueadero.";
		Escribir "";	
	FinSi
FinSubProceso

//Funcion para buscar vehiculo
SubProceso buscar(j por referencia, textoTemp por referencia, placa por referencia, numeroTemp por referencia)
	Para j<-0 hasta 4 Hacer
		si textoTemp= placa[j] Entonces
			numeroTemp<-j;
			//escribir "El arreglo en [",j,"] es:",nombre[j];
		FinSi
	FinPara
FinSubProceso
