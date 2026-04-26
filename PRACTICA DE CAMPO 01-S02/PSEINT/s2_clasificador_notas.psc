Algoritmo s2_clasificador_notas
	Escribir "Ingrese nota para clasificarla:"
	Leer nota
	
	Si nota<0 o nota>20 Entonces
		Escribir "Nota no valida solo se aceptan valores entre 0 y 20."
	SiNo
		Si nota==20 Entonces
			Escribir "Excelente."
		SiNo
			Si nota>=11 Entonces
				Escribir "Aprobado."
			SiNo
				Escribir "Desaprobado."
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
