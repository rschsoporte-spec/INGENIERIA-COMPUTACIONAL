Algoritmo s04_pc02_suma_n_numeros
	Escribir "Indique cantidad de numeros a sumar :"
	Leer cantidad_numero_ingresado
	aumento=0
	sumando=0
	Mientras aumento <= cantidad_numero_ingresado Hacer
		Si aumento==1 Entonces
			numero_menor=aumento
		SiNo	
			si aumento == cantidad_numero_ingresado Entonces
				numero_mayor=aumento
			FinSi
		FinSi
		sumando=sumando+aumento
		aumento=aumento+1
	FinMientras
	promedio=sumando/cantidad_numero_ingresado
	Escribir "Cantidad Números: " cantidad_numero_ingresado 
	Escribir "Suma Total: " sumando 
	Escribir "Promedio: " promedio
	Escribir "Numero Mayor: " numero_mayor 
	Escribir "Numero Menor: " numero_menor
FinAlgoritmo
