Proceso Talle2_Prog5
	//registrar el alquiler de las películas que adquieren sus usuarios
	
	//Para cada usuario se debe permitir la opción de alquilar película, 
	//consultar películas disponibles y 
	//recibir película en la video tienda con la opción de realizar anotaciones sobre estas si se llegan a presentar daños u otra novedad sobre la película.
	
	Definir Opcion Como entero;
	Definir productoNombre Como Caracter;
	Definir Anotacion Como Caracter;
	Definir Salir como Logico;
	
	Salir <- falso;
		
	Mientras Salir <> Verdadero Hacer
		
		
		Escribir "Bienvenidos a su Droguería Mi Salud";
		Escribir "Elija una opcion";
		Escribir "1. Compra de producto";
		Escribir "2. Consulta de precios por producto";
		Escribir "3. Devoluciones";
		Escribir "4. Salir";
		
				
		Leer Opcion;
				Segun Opcion Hacer
				//Comprar producto	
			1:
				Escribir "¿Que producto esta buscando?"; 
				Escribir "Escribe el nombre del producto:"; 
				Leer productoNombre;
				
				Si productoNombre == "aspirina" Entonces
					Escribir "El producto esta disponible, puede pasar a pagarlo"; 
				SiNo
					Si productoNombre == "acetaminofen" Entonces
						Escribir "El producto esta disponible, puede pasar a pagarlo"; 
					SiNo
						Si productoNombre == "dolex" Entonces
							Escribir "El producto esta disponible, puede pasar a pagarlo";
						SiNo
							Escribir "No manejamos ese producto"; 
						FinSi
					FinSi
				FinSi

				//Consulta precio por producto				
			2:
				Escribir "¿Que producto esta buscando?"; 
				Escribir "Escribe el nombre del producto:"; 
				
				Leer productoNombre;
				
				Si productoNombre == "aspirina" Entonces
					Escribir "El producto cuesta $5.000."; 
				SiNo
					Si productoNombre == "acetaminofen" Entonces
						Escribir "El producto cuesta $2.000."; 
					SiNo
						Si productoNombre == "dolex" Entonces
							Escribir "El producto cuesta $8.000.";
						SiNo
							Escribir "No manejamos ese producto"; 
						FinSi
					FinSi
				FinSi
				
				
				//Crear devolucion	
			3:
				Escribir "¿Que producto desea devolver?"; 
				Escribir "Escribe el nombre del producto:"; 
				
				Leer productoNombre;
				
				Si productoNombre == "aspirina" Entonces
					Escribir "Escriba la anotacion de porque realiza la devolucion:"; 
					Leer Anotacion;
					Escribir "Por favor acercarse a caja para hacer efectiva la nota de devolucion."; 
				SiNo
					Si productoNombre == "acetaminofen" Entonces
						Escribir "Escriba la anotacion de porque realiza la devolucion:"; 
						Leer Anotacion;
						Escribir "Por favor acercarse a caja para hacer efectiva la nota de devolucion."; 
					SiNo
						Si productoNombre == "dolex" Entonces
							Escribir "Escriba la anotacion de porque realiza la devolucion:"; 
							Leer Anotacion;
							Escribir "Por favor acercarse a caja para hacer efectiva la nota de devolucion."; 
						SiNo
							Escribir "No manejamos ese producto"; 
						FinSi
					FinSi
				FinSi
				
				
			4:
				Escribir "Esperamos que halla disfrutado su tiempo en nuestra tienda"; 
				Salir <- Verdadero;
				
			De Otro Modo:
				Escribir "La opcion seleccionada no es valida. Intentelo de nuevo"; 
		FinSegun
	FinMientras
FinProceso
