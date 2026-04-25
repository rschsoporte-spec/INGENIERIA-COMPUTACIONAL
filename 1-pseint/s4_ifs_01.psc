Algoritmo s4_ifs_01
	Definir nota_texto Como Cadena
	Definir nota Como Real
	
	Escribir "Ingrese la nota:"
	Leer nota_texto
	
	// Validar si está vacío o es un espacio
	Si nota_texto = "" O nota_texto = " " Entonces
		Escribir "Error: No ingresó nada o puso un espacio."
	SiNo
		// Convertir el texto a número para poder comparar
		nota <- ConvertirANumero(nota_texto)
		
		Si nota < 0 O nota > 20 Entonces
			Escribir "Nota no válida (debe ser de 0 a 20)."
		SiNo
			Si nota >= 11 Entonces
				Si nota >= 17 Entonces
					Escribir "Excelente"
				SiNo
					Escribir "Aprobado"
				FinSi
			SiNo
				Escribir "Desaprobado"
			FinSi
		FinSi
	FinSi
FinAlgoritmo

