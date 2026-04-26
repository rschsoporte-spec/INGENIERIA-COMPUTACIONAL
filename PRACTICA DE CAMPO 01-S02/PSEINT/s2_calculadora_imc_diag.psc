Algoritmo s2_calculadora_imc_diag
	//SOLICITO DATOS PARA EL CALCULO Y ENVIO VARIABLES
	Escribir "Ingrese Peso en KG(ejemplo 55): "
	Leer peso
	Escribir "Ingrese Altura en CM(ejemplo 1.2): "
	Leer altura
	
	//VALIDO QUE NO SE EXAGERE LOS NUMEROS
	Si peso<0 o peso>400 o altura <0 o altura>3 Entonces
		Escribir "El peso no deber ser <0 o >400 y tambien la altura no deber ser <0 o >3."
	SiNo
		resultado_imc=peso/(altura ^ 2)
		Si resultado_imc<18.5 Entonces
			Escribir "Resultado de IMC: ",resultado_imc,"(Bajo Peso)"
		SiNo
			Si resultado_imc>=18.5 y resultado_imc<25 Entonces
				Escribir "Resultado de IMC: ",resultado_imc,"(Peso Normal)"
			SiNo
				Si resultado_imc>=25 y resultado_imc<30 Entonces
					Escribir "Resultado de IMC: ",resultado_imc,"(Sobrepeso)"
				SiNo
					Si resultado_imc>=30 Entonces
						Escribir "Resultado de IMC: ",resultado_imc,"(Obesidad)"
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi	
FinAlgoritmo
