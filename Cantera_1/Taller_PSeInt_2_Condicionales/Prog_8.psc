Proceso Talle2_Prog6
	Definir tempTorta, limChoco, limtresLeches, limVino, limOtros, opcion Como Entero;
		
	limChoco<-0;
	limtresLeches<-0;
	limVino<-0;
	limOtros<-0;
		
	Definir salir, recorre como Logico;
	
	//inicializar variables
	salir <- falso;	
	
	//empieza ciclo del menu
	Mientras Salir <> Verdadero Hacer		
		Escribir "***************************************";
		Escribir "Bienvenidos a su Panaderia y Pasteleria Don Carlos";
		Escribir "Elija una opcion";
		Escribir "1. Registrar pedido.";
		Escribir "2. Tortas disponibles.";
		Escribir "3. Ventas del dia.";
		Escribir "4. Salir";
		Escribir "***************************************";
		Escribir ""; 
		Leer opcion;
		
		Segun opcion Hacer
			
			1://Registrar pedido de torta
					Escribir ""; 
					Escribir "Ingrese el ID del tipo de torta a vender"; 
					Escribir "1. Torta de Chocolate";
					Escribir "2. Torta de Tres Leches";
					Escribir "3. Torta de Vino";
					Escribir "4. Otro tipo de torta";
					
					Leer tempTorta;
					
					Segun tempTorta hacer
						1:
							si limChoco > 3 Entonces
								escribir "No hay mas tortas de chocolate.";
								Escribir ""; 
							SiNo
							limChoco<-limChoco+1;
							escribir "Se registro una torta de Chocolate";
							Escribir ""; 
						FinSi						
						2:
							si limtresLeches > 3 Entonces
								escribir "No hay mas tortas de Tres Lechas";
								Escribir ""; 
							SiNo
								limtresLeches<-limtresLeches+1;
								escribir "Se registro una torta de Tres Lechas";
								Escribir ""; 
							FinSi		
						3:
							si limVino > 3 Entonces
								escribir "No hay mas tortas de Vino";
								Escribir ""; 
							SiNo
								limVino<-limVino+1;
								escribir "Se registro una torta de Vino";
								Escribir ""; 
							FinSi		
							
						4:
							si limOtros > 3 Entonces
								escribir "No hay mas tortas de Otras Tortas";
								Escribir ""; 
							SiNo
								limOtros<-limOtros+1;
								escribir "Se registro una torta de Otras Tortas";
								Escribir ""; 
							FinSi		
							
						De Otro Modo:
							Escribir "El tipo de torta ",tempTorta," no esta listado aun";	
							Escribir ""; 
					FinSegun

				
				//Consulta disponibilidad de tortas			
			2:
				Escribir "2. Tortas disponibles";
				Escribir "Torta de Chocolate: ", 4-limChoco, ".";
				Escribir "Torta de Tres Leches: ",4-limtresLeches, ".";
				Escribir "Torta de Vino: ",4-limVino, ".";
				Escribir "Otro tipo de torta: ",4-limOtros, ".";
				Escribir ""; 

			3:
				Escribir "3. Ventas del dia";
				
				Escribir "Torta de Chocolate: ", limChoco, ".";
				Escribir "Torta de Tres Leches: ",limtresLeches, ".";
				Escribir "Torta de Vino: ",limVino, ".";
				Escribir "Otro tipo de torta: ",limOtros, ".";
				Escribir ""; 
					
					
				//Salida
			4:
				Escribir "Esperamos que halla disfrutado su tiempo en taller"; 
				Salir <- Verdadero;
				
			De Otro Modo:
				Escribir "La opcion seleccionada no es valida. Intentelo de nuevo"; 
		FinSegun
	FinMientras
FinProceso