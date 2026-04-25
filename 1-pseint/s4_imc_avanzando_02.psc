Algoritmo s4_imc_avanzando_02
	//PIDO VALORES
	Escribir "Peso en KG:"
	Leer peso
	Escribir "Altura en metros:"
	Leer altura
	//PRIMERO VALIDO
	si peso <0 o peso>400 o altura<0 o altura>3 Entonces
		Escribir "Peso >400 o Altura >3 sin invalidas."
	SiNo
		//PASE LIBRE Y CALCULO-CONDICIONES SEGUN RANGOS
		imc=peso / (altura*altura)
		si imc < 18.5
			Escribir "Bajo Peso"
		sino 
			si imc >= 18.5 y imc <= 24.9 entonces
				Escribir "Normal"
			SiNo
				si imc >= 25 y imc <= 29.9 entonces
					Escribir "Sobrepeso"
				sino 
					si imc >= 30 entonces
						Escribir "Obsidad"
					finsi
				FinSi				
			FinSi
		FinSi
	FinSi
FinAlgoritmo
