Proceso TallerCiclos_5
	
	Definir opcion Como Entero;
	Definir salir Como Logico;
	Definir nombre Como Caracter;
	
	salir <- falso;
	

	
	
	Mientras salir<>Verdadero Hacer
		
		Escribir "Menu de usuario";
		Escribir "1. Captura nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Leer opcion;
		Escribir "";
		
		Segun opcion Hacer
			1:
				
				Escribir "1. Captura nombre";
				Escribir "Escriba su nombre:";
				leer nombre;
				Escribir "El nombre ", nombre, " fue capturado.";
				Escribir "";
			2:
				Escribir "2. Saludar persona";
				Escribir "Hola ", nombre, ", es un gusto saludarte!!";
				Escribir "";
				
			3: 
				salir <- verdadero;
				
			De Otro Modo:
				Escribir "El numero ingresado no hace parte de las opciones";
				
		FinSegun
	FinMientras
	

	
	
FinProceso
