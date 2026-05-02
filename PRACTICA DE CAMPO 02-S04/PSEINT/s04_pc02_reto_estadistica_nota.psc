Algoritmo s04_pc02_estadistica_nota
	nota_alta=0
	nota_baja=20
	Repetir
		Escribir "Escribir nota del 0 al 20(-1 para ):"
		Leer valor_ingresado
		Si valor_ingresado>=0 y valor_ingresado<=20 Entonces
			Si valor_ingresado>=17 y valor_ingresado<=20 Entonces
				clasifica_nota="Excelente"
				total_notas=total_notas+1
				suma_notas=suma_notas+valor_ingresado
				//nota_alta=valor_ingresado
				Si valor_ingresado>nota_alta Entonces
					nota_alta=valor_ingresado
				FinSi
				Si valor_ingresado<nota_baja Entonces
					nota_baja=valor_ingresado
				FinSi
			SiNo
				Si valor_ingresado>=14 y valor_ingresado<=16 Entonces
					clasifica_nota="Bueno"
					total_notas=total_notas+1
					suma_notas=suma_notas+valor_ingresado
					Si valor_ingresado>nota_alta Entonces
						nota_alta=valor_ingresado
					FinSi
					Si valor_ingresado<nota_baja Entonces
						nota_baja=valor_ingresado
					FinSi
				SiNo
					Si valor_ingresado>=11 y valor_ingresado<=13 Entonces
						clasifica_nota="Aprobado"
						total_notas=total_notas+1
						suma_notas=suma_notas+valor_ingresado
						Si valor_ingresado>nota_alta Entonces
							nota_alta=valor_ingresado
						FinSi
						Si valor_ingresado<nota_baja Entonces
							nota_baja=valor_ingresado
						FinSi
					SiNo
						Si valor_ingresado>=0 y valor_ingresado<=10 Entonces
							clasifica_nota="Desaprobado"
							total_notas=total_notas+1
							suma_notas=suma_notas+valor_ingresado
							Si valor_ingresado>nota_alta Entonces
								nota_alta=valor_ingresado
							FinSi
							Si valor_ingresado<nota_baja Entonces
								nota_baja=valor_ingresado
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			promedio = suma_notas / total_notas
		SiNo
			Escribir "Ingrese nota valida."
		FinSi		
	Hasta Que valor_ingresado == -1 
	Escribir "Total Notas :" , total_notas
	Escribir "Suma Notas :" , suma_notas
	Escribir "Promedio :" , promedio
	Escribir "Nota mas alta :" , nota_alta
	Escribir "Nota mas baja :" , nota_baja
	Escribir "Conteo por categoría :" , total_notas
FinAlgoritmo
