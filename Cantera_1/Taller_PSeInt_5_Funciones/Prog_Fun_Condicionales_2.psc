Proceso Talle2_Prog2
	
	Definir Edad Como Real;
	
	Escribir "�Cual es su Edad?";
	Leer Edad;
	menor(edad);	
FinProceso


SubProceso menor(Edad)
	Si Edad < 18 Entonces
		Escribir " Usted a�n es un ni�o(a)";
	SiNo
		Escribir " Usted es mayor de edad";
	FinSi
FinSubProceso
	