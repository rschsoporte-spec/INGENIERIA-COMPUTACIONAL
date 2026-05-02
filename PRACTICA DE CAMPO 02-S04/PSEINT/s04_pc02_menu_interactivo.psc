Algoritmo s04_pc02_menu_interactivo
	Repetir 
		Escribir "Indique opción: 1-Suma, 2-Resta, 3-Multiplicación, 4-División, 5-Salir"
		Leer opcion_menu	
		Si opcion_menu>=1 y opcion_menu<=4 Entonces
			Escribir "Primero número: "
			Leer a
			Escribir "Segundo número: "
			Leer b
			Segun opcion_menu Hacer
				1:
					resultado = a + b
					valida_division=Verdadero
				2:
					resultado = a - b
					valida_division=Verdadero
				3:
					resultado = a * b
					valida_division=Verdadero
				4:
					Si b>0 Entonces
						valida_division=Verdadero
						resultado = a / b
					SiNo
						valida_division=Falso
					FinSi
					
			FinSegun
			Si valida_division==Verdadero Entonces
				Escribir "Resultado: ", resultado
			SiNo
				Si valida_division==Falso Entonces
					Escribir "No se puede dividir con cero."
				FinSi
			FinSi
			
		Sino 
			Si opcion_menu <> 5 Entonces
				Escribir "Opción invalida, vuelva a intentarlo."
			FinSi			
		FinSi
	Hasta Que opcion_menu==5
	Escribir "Hasta la próxima."
FinAlgoritmo
