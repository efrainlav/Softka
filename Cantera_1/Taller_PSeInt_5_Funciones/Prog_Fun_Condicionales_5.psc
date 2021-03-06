Proceso Talle2_Prog5
	//registrar el alquiler de las pel?culas que adquieren sus usuarios
	
	//Para cada usuario se debe permitir la opci?n de alquilar pel?cula, 
	//consultar pel?culas disponibles y 
	//recibir pel?cula en la video tienda con la opci?n de realizar anotaciones sobre estas si se llegan a presentar da?os u otra novedad sobre la pel?cula.
	
	Definir Opcion Como entero;
	Definir productoNombre Como Caracter;
	Definir Anotacion Como Caracter;
	Definir Salir como Logico;
	
	Salir <- falso;
		
	Mientras Salir <> Verdadero Hacer
		
		
		Escribir "Bienvenidos a su Droguer?a Mi Salud";
		Escribir "Elija una opcion";
		Escribir "1. Compra de producto";
		Escribir "2. Consulta de precios por producto";
		Escribir "3. Devoluciones";
		Escribir "4. Salir";
		
				
		Leer Opcion;
				Segun Opcion Hacer
				//Comprar producto	
			1:
				//FUncion para comprar un producto
				comprar(productoNombre);

				//Consulta precio por producto				
			2:
				// Funcion para buscar un producto por el Nombre
				buscar(productoNombre);				
				
			3:
				//funcion para crear una devolucion
				devolucion(productoNombre, Anotacion);

			4:
				//Funcion para salir
				exit(Salir);
				
			De Otro Modo:
				Escribir "La opcion seleccionada no es valida. Intentelo de nuevo"; 
		FinSegun
	FinMientras
FinProceso

//FUncion para comprar un producto
subproceso comprar(productoNombre Por Referencia)
	Escribir "?Que producto esta buscando?"; 
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
FinSubProceso

// Funcion para buscar un producto por el Nombre
subproceso buscar(productoNombre Por Referencia)
	Escribir "?Que producto esta buscando?"; 
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
FinSubProceso

//Funcion para crear una devolucion
subproceso devolucion(productoNombre Por Referencia, Anotacion Por Referencia)
	Escribir "?Que producto desea devolver?"; 
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
FinSubProceso


//Funcion para salir
subproceso exit(Salir Por Referencia)
	Escribir "Esperamos que halla disfrutado su tiempo en nuestra tienda"; 
	Salir <- Verdadero;
FinSubProceso



