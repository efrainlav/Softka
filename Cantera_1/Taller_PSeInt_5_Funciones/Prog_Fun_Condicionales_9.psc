Proceso Talle2_Prog9
	
	Definir salir Como Logico;
	Definir opcion, h, l, bm, bl como entero;
	
	
	salir<-falso;
	
	Mientras salir <> Verdadero Hacer		
		Escribir "***************************************";
		Escribir "Geometry Amigo";
		Escribir "Programa para calcular el area de figuras geometricas.";
		Escribir ""; 
		Escribir "Elija la figura geometrica:";
		Escribir "1. Rectangulo.";
		Escribir "2. Triángulo.";
		Escribir "3. Trapecio.";
		Escribir "4. Salir";
		Escribir "***************************************";
		Escribir ""; 
		leer opcion;
		
		Segun opcion Hacer
			1://Funcion rectangulo
				rectangulo(h, l);
				
			2://Funcion triangulo
				triangulo(h, l);
				
			3://FUncion trapecio
				trapecio(bm, bl);
				
			4://Funcion Salir
				exit(salir);
			
			De Otro Modo:
				Escribir "La opcion seleccionada no es valida. Intentelo de nuevo"; 
		FinSegun		
	FinMientras
FinProceso

//Funcion rectangulo
subproceso rectangulo(h Por Referencia, l Por Referencia)
	//Rectangulo
	
	Escribir "1. Rectangulo.";
	Escribir "Ingrese la altura del rectangulo en cm:";
	leer h;
	Escribir "Ingrese la longitud de la Base del rectangulo en cm:";
	leer l;
	Escribir "El area del Rectangulo es: ", h*l, " cm2.";		
	
FinSubProceso


//Funcion triangulo
subproceso triangulo(h Por Referencia, l Por Referencia)
	//Triángulo
	
	Escribir "2. Triángulo.";
	Escribir "Ingrese la altura del Triángulo en cm:";
	leer h;
	Escribir "Ingrese la Base del Triángulo en cm:";
	leer l;
	Escribir "El area del Rectangulo es: ", (h*l)/2, " cm2.";	
FinSubProceso


//FUncion trapecio
subproceso trapecio(bm Por Referencia, bl Por Referencia)
	Escribir "3. Trapecio.";
	Escribir "Ingrese la altura del Trapecio en cm:";
	leer h;
	Escribir "Ingrese la longitud de la base mayor del Trapecio en cm:";
	leer bm;
	Escribir "Ingrese la longitud de la base menor del Trapecio en cm:";
	leer bl;
	Escribir "El area del Rectangulo es: ", ((bm+bl)/2)*h, " cm2.";
FinSubProceso


//Funcion Salir
subproceso exit(salir Por Referencia)
	Escribir "Esperamos que halla disfrutado su tiempo en taller"; 
	Escribir "";
	Salir <- Verdadero;
FinSubProceso
	