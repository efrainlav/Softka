Proceso Talle2_Prog4
	//registrar el alquiler de las pel?culas que adquieren sus usuarios
	
	//Para cada usuario se debe permitir la opci?n de alquilar pel?cula, 
	//consultar pel?culas disponibles y 
	//recibir pel?cula en la video tienda con la opci?n de realizar anotaciones sobre estas si se llegan a presentar da?os u otra novedad sobre la pel?cula.
	
	Definir Opcion Como entero;
	Definir OpcionPel Como entero;
	Definir AlquilarPel Como entero;
	
	Definir Anotacion Como Caracter;
	Definir Anotacion1 Como Caracter;
	Definir Anotacion2 Como Caracter;
	Definir Anotacion3 Como Caracter;
	Definir Anotacion4 Como Caracter;
	
	Definir PelDisp1 como Logico;
	Definir PelDisp2 como Logico;
	Definir PelDisp3 como Logico;
	Definir PelDisp4 como Logico;
	Definir Salir como Logico;
	
	PelDisp1 <- Verdadero;
	PelDisp2 <- Verdadero;
	PelDisp3 <- Verdadero;
	PelDisp4 <- Verdadero;
	Salir <- falso;
	
	
	Mientras Salir <> Verdadero Hacer
		Escribir "Elija una opcion";
		Escribir "1. Alquilar Peliculas";
		Escribir "2. Entregar Peliculas";
		Escribir "3. Escribir una anotacion de la pelicula entregada";
		Escribir "4. Salir";
		
				
		Leer Opcion;
				Segun Opcion Hacer
				//Alquilar la Pelicula	
			1:
				Escribir "Las peliculas son"; 
				Escribir "1. Pelicula - 1";
				Escribir "2. Pelicula - 2";
				Escribir "3. Pelicula - 3";
				Escribir "4. Pelicula - 4";
				Escribir " ";
				Escribir "Escribe el ID de la pelicula a alquilar"; 
				Leer OpcionPel;
				
				Segun OpcionPel Hacer
					1:
						Si PelDisp1 = Verdadero Entonces
							Escribir " La pelicula esta disponible, Quieres alquilarla?";
							Escribir "1. Si";
							Escribir "2. No";
							leer AlquilarPel;
							
							Si AlquilarPel = 1 Entonces
								Escribir " Puedes pasar a la caja a recoger tu video";
								PelDisp1 <- Falso;							
							SiNo
								Escribir " La opcion escrita no es valida.";
							FinSi
						SiNo
							Escribir " La Pelicula no esta disponible.";
						FinSi
					2:
						Si PelDisp2 = Verdadero Entonces
							Escribir " La pelicula esta disponible, Quieres alquilarla?";
							Escribir "1. Si";
							Escribir "2. No";
							leer AlquilarPel;
							
							Si AlquilarPel = 1 Entonces
								Escribir " Puedes pasar a la caja a recoger tu video";
								PelDisp2 <- Falso;							
							SiNo
								Escribir " La opcion escrita no es valida.";
							FinSi
						SiNo
							Escribir " La Pelicula no esta disponible.";
						FinSi
					3:
						Si PelDisp3 = Verdadero Entonces
							Escribir " La pelicula esta disponible, Quieres alquilarla?";
							Escribir "1. Si";
							Escribir "2. No";
							leer AlquilarPel;
							
							Si AlquilarPel = 1 Entonces
								Escribir " Puedes pasar a la caja a recoger tu video";
								PelDisp3 <- Falso;							
							SiNo
								Escribir " La opcion escrita no es valida.";
							FinSi
						SiNo
							Escribir " La Pelicula no esta disponible.";
						FinSi
					4:
						Si PelDisp4 = Verdadero Entonces
							Escribir " La pelicula esta disponible, Quieres alquilarla?";
							Escribir "1. Si";
							Escribir "2. No";
							leer AlquilarPel;
							
							Si AlquilarPel = 1 Entonces
								Escribir " Puedes pasar a la caja a recoger tu video";
								PelDisp4 <- Falso;							
							SiNo
								Escribir " La opcion escrita no es valida.";
							FinSi
						SiNo
							Escribir " La Pelicula no esta disponible.";
						FinSi
						
					De Otro Modo:
						Escribir "El ID seleccionado no pertenece a ninguna pelicula, por favor intentelo de nuevo"; 
				FinSegun
				
				
				
				
				//Entregar la Pelicula	
				
			2:
				Escribir "Escriba el ID de la pelicula a entregar"; 
				Leer OpcionPel;
				
				Segun OpcionPel Hacer
					1:
						PelDisp1 <- Verdadero;
						Escribir "Gracias por fidelidada";
					2:
						PelDisp2 <- Verdadero;
						Escribir "Gracias por fidelidada";
					3:
						PelDisp3 <- Verdadero;
						Escribir "Gracias por fidelidada";
					4:
						PelDisp4 <- Verdadero;
						Escribir "Gracias por fidelidada";
					De Otro Modo:
						Escribir "El ID no existe, por favor intentelo de nuevo"; 	
				FinSegun
				
				
				//Crear anotaci?n a una pelicula	
			3:
				Escribir "Escriba la anotacion a adicionar a la pelicula"; 
				Leer Anotacion;
				
				Escribir "Escriba el ID de la pelicula a adicionar la nota"; 
				Leer OpcionPel;	
				
				Segun OpcionPel Hacer
					1:
						Anotacion1 <- Anotacion;
					2:
						Anotacion2 <- Anotacion;
					3:
						Anotacion3 <- Anotacion;
					4:
						Anotacion4 <- Anotacion;
					De Otro Modo:
						Escribir "El ID no existe, por favor intentelo de nuevo"; 	
				FinSegun
				
				
			4:
				Escribir "Esperamos que halla disfrutado su tiempo en nuestra tienda"; 
				Salir <- Verdadero;
				
			De Otro Modo:
				Escribir "La opcion seleccionada no es valida. Intentelo de nuevo"; 
		FinSegun
	FinMientras
FinProceso
