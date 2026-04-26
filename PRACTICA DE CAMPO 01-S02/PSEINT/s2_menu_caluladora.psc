Algoritmo s2_menu_caluladora
	Escribir "Ingrese Primer Número:"
	Leer numero1
	Escribir "Ingrese Segundo Número:"
	Leer numero2
	Escribir "Escriba número del Operador para el calculo(1-Suma, 2-Resta, 3-Multiplica, 4-Divide):"
	Leer operador
	Segun operador Hacer
		1:
			resultado = numero1 + numero2
			Escribir "La Suma de los numero es: " , resultado
		2:
			resultado = numero1 - numero2
			Escribir "La Resta de los numero es: " , resultado
		3:
			resultado = numero1 * numero2
			Escribir "La Multiplicación de los numero es: " , resultado
		4:
			Si numero2=0 Entonces
				Escribir "Divisor no puede ser igual a 0."
			SiNo				
			resultado = numero1 / numero2
			Escribir "La División de los numero es: " , resultado	
			FinSi
		De Otro Modo:
			Escribir "Operador solo se permiten (1-Suma, 2-Resta, 3-Multiplica, 4-Divide)."
	FinSegun
FinAlgoritmo
