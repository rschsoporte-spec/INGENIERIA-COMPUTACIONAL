Algoritmo s07_pc03_biblioteca_matematica
	Escribir "Ingrese numero a evaluar si es par o imoar :"
	leer numero_revisar	
	Escribir "------------------------------------------------"
	Escribir "Biblioteca matemática básica:"
	respuesta_par=es_par(numero_revisar)
	si respuesta_par==Verdadero Entonces
		Escribir "1-El numero es par.";
	SiNo
		si respuesta_par==Falso Entonces
			Escribir "1-El numero es impar.";
		FinSi
	FinSi	
	Escribir "------------------------------------------------"
	factorial(numero_revisar)
	Escribir "------------------------------------------------"
	Escribir "Ingrese 1er numero :"
	leer numero_uno
	Escribir "Ingrese 2do numero :"
	leer numero_dos
	Escribir "Ingrese 3er numero :"
	leer numero_tres
	respuesta_maximo=maximo_de3(numero_uno,numero_dos,numero_tres)
	Escribir "3-El numero maximo es :", respuesta_maximo
	Escribir "------------------------------------------------"
	Escribir "Ingrese los Celsius :"
	leer numero_fahrenheit	
	convertir_temperatura(numero_fahrenheit)
	Escribir "------------------------------------------------"
	Escribir "Calcular Area del Rectangulo :"
	Escribir "Ingrese Base :"
	leer base_rectangulo	
	Escribir "Ingrese Altura :"
	leer altura_rectangulo
	area_rectangulo(base_rectangulo,altura_rectangulo)	
FinAlgoritmo

//------------------------------------------------------------------
Funcion res=es_par(_numero)
	revisar_par = _numero mod 2
	si revisar_par == 0 Entonces
		res = Verdadero
	SiNo
		si revisar_par>0 Entonces
			res = Falso
		FinSi
	FinSi
FinFuncion
//------------------------------------------------------------------
funcion factorial(_numero)
	aumento=1
	respuesta_factorial=1
	mientras aumento <= _numero
		respuesta_factorial= respuesta_factorial * aumento
		aumento = aumento+1
	FinMientras
	Escribir "2-Factorial calculado es :",respuesta_factorial
FinFuncion
//------------------------------------------------------------------
funcion ultimo_mayor=maximo_de3(_uno,_dos,_tres)
	si _uno > _dos Entonces
		ultimo_mayor=_uno
	SiNo
		ultimo_mayor=_doselse
	FinSi
	
	si _tres > ultimo_mayor Entonces
		ultimo_mayor=_tres
	FinSi
FinFuncion
//------------------------------------------------------------------
funcion convertir_temperatura(_numero_celsius)
	resultado_fahrenheit = (_numero_celsius * 9/5)+32
	Escribir "4-Los ",_numero_celsius,"° Celsius en Fahrenheit son :", resultado_fahrenheit ,"°"
FinFuncion
//------------------------------------------------------------------
funcion area_rectangulo(_base,_altura)
	resultado_area_rectangulo=_base * _altura
	Escribir "5-Area del Rectangulo es :",resultado_area_rectangulo
FinFuncion
	