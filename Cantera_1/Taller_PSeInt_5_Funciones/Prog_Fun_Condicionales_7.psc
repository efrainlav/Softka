Proceso Talle2_Prog7
	Definir peso, estatura, imc Como Reales;
	Definir nombre, apellido Como Caracteres;
	
	//FUncion para capturar datos
	capturaInfo(nombre, apellido, peso, estatura);
	
	//Funcion para imprimir matriz
	matriz(IMC, peso, nombre, apellido, estatura);
	
	//FUncion para imprimir resultados
	impresion(IMC);	
FinProceso



//Funcion para capturar datos
subproceso capturaInfo(nombre Por Referencia, apellido Por Referencia peso Por Referencia, estatura Por Referencia)
	Escribir "Programa para calcular el calcular el IMC (Índice de masa corporal)";
	Escribir "Ingrese su nombre: ";
	leer nombre;
	Escribir "Ingrese su apellido ";
	leer apellido;
	Escribir "Ingrese su peso en kilogramos (Kg)";
	leer peso;
	Escribir "Ingrese su estatura en metros (mt)";
	leer estatura;
FinSubProceso


//Funcion para imprimir matriz
subproceso matriz(IMC Por Referencia, peso Por Referencia, nombre Por Referencia, apellido Por Referencia, estatura Por Referencia)
	IMC <- peso / (estatura*estatura);
	Escribir " ****************************************************************"; 	
	Escribir " Composición corporal             Índice de masa corporal (IMC)";
	Escribir " ---------------------------------------------------------------"; 
	Escribir " Peso inferior al normal                Menos de 18.5";
	Escribir " Peso Normal                           Entre 18.5 y 24.9";
	Escribir " Peso superior al normal               Entre 25.0 y 29.9";
	Escribir " Obesidad                                 Más de 30.0";
	Escribir " ****************************************************************"; 
	Escribir " ";
	Escribir " Nombre: ",nombre;
	Escribir " Apellido: ",apellido;
	Escribir " Peso en Kg: ",peso;
	Escribir " Estatura en mt: ",estatura;
	Escribir " IMC: ",IMC;
FinSubProceso

//FUncion para imprimir resultados
subproceso impresion(IMC Por Referencia)
	Si IMC <= 18.5 Entonces
		Escribir " Composición corporal: Peso inferior al normal";
	SiNo
		Si IMC > 18.5 Y IMC <= 24.9 Entonces
			Escribir " Composición corporal: Peso Normal";
		SiNo
			Si IMC > 24.9 Y IMC <= 29.9 Entonces
				Escribir " Composición corporal: Peso superior al normal";
			SiNo
				Si IMC > 29.9 Entonces
					Escribir " Composición corporal: Obesidad";
				FinSi
			FinSi
		FinSi
	FinSi		
FinSubProceso
	