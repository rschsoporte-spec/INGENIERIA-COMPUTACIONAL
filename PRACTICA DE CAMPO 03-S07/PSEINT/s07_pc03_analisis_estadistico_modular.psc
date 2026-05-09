Algoritmo s07_pc03_analisis_estadistico_modular
	Escribir "1-Ingrese una nota entre 0 y 20 :"
	Leer numero_validar
	res_leer_nota=LeerNota(numero_validar)
	Escribir res_leer_nota
	Escribir "----------------------------------"
	Escribir "2-Ingrese nota a evaluar Aprobación :"
	Leer numero_es_aprobado
	res_es_aprobado=EsAprobado(numero_es_aprobado)
	Si res_es_aprobado==Verdadero Entonces
		Escribir "Verdadero"
	SiNo
		Escribir "Falso"
	FinSi	
	Escribir "----------------------------------"
	Escribir "3-Ingrese nota a Clasificar :"	
	leer numero_clasificar
	ClasificarNota(numero_clasificar,res_clasificar,res_clasifica_aprobados)
	aprob01=res_clasifica_aprobados
	Escribir res_clasificar
	
		//	Escribir "4-Ingrese acumulado para promediar :"	
		//	leer numero_acumulado
		//	Escribir "4-Ingrese cantidad para promediar :"	
		//	leer numero_cantidad
	//----------------------------------------------------------------------------------------------
	//SUMO LOS TRES VALORES INGRESADOS ARRIBA PARA PASAR AL MAIN 
	Escribir "----------------------------------"
	suma_notas=numero_validar+numero_es_aprobado+numero_clasificar
	res_calcular_promedio=CalcularPromedio(suma_notas,3)
	Escribir "4-El promedio de numeros es :",res_calcular_promedio	
	
	//CALCULO EL NUMERO MAYOAR Y MENOS DE LOS 3 NUMEROS INGRESADOS
	res_numero_mayor=numero_mayor(numero_validar,numero_es_aprobado,numero_clasificar)
	res_numero_menor=numero_menor(numero_validar,numero_es_aprobado,numero_clasificar)
	
	//CLASIFICO LAS OTRAS DOS NOTAS INGRESADAS y sumo cuantos aprobados
	ClasificarNota(numero_validar,res_clasificar,res_clasifica_aprobados)
	aprob02=res_clasifica_aprobados
	ClasificarNota(numero_es_aprobado,res_clasificar,res_clasifica_aprobados)
	aprob03=res_clasifica_aprobados
	aprobados=aprob01+aprob02+aprob03
	
	//RESULTADOS EL MAIN
	MostrarEstadisticas(res_calcular_promedio,res_numero_mayor,res_numero_menor,aprobados,3)
	
FinAlgoritmo

Funcion res_leer_nota=LeerNota(_numero_evaluar)
	Mientras _numero_evaluar < 0 o _numero_evaluar > 20 Hacer
		Escribir "Ingrese una nota entre 0 y 20 :"
		Leer _numero_evaluar
	FinMientras
	res_leer_nota="Nota validada."
FinFuncion

Funcion res_es_aprobado=EsAprobado(_numero_es_aprobado)
	Si _numero_es_aprobado>=11 y _numero_es_aprobado<=20
		res_es_aprobado=Verdadero
	Sino
		res_es_aprobado=Falso
	FinSi
FinFuncion

SubProceso ClasificarNota(_numero_clasificar, res_clasificar Por Referencia, res_clasifica_aprobados Por Referencia)
    res_clasifica_aprobados = 0 
    
    Si (_numero_clasificar >= 19) Y (_numero_clasificar <= 20) Entonces
        res_clasificar="Excelente"
        res_clasifica_aprobados=0
    SiNo
        Si (_numero_clasificar >= 15) Y (_numero_clasificar <= 18) Entonces
            res_clasificar="Bueno"
            res_clasifica_aprobados=0
        SiNo
            Si (_numero_clasificar >= 11) Y (_numero_clasificar <= 14) Entonces
                res_clasificar="Aprobado"
                res_clasifica_aprobados=1
            SiNo
                Si (_numero_clasificar >= 0) Y (_numero_clasificar <= 10) Entonces
                    res_clasificar="Desaprobado"
                SiNo
                    res_clasificar="Nota no valida."
                FinSi
            FinSi
        FinSi
    FinSi	
FinSubProceso

Funcion res_calcular_promedio=CalcularPromedio(_numero_acumulado,_cantidad)
	Mientras _cantidad<=0 Hacer
		Escribir "4-Ingrese acumulado y cantidad para promediar :"	
		leer _cantidad
	FinMientras
	res_calcular_promedio = _numero_acumulado / _cantidad
FinFuncion

Funcion res_numero_mayor=numero_mayor(_uno,_dos,_tres)
	Si _uno >_dos Entonces
		res_numero_mayor = _uno
	SiNo
		res_numero_mayor = _dos
	FinSi
	Si _tres>res_numero_mayor Entonces
		res_numero_mayor=_tres
	FinSi	
FinFuncion

Funcion res_numero_menor=numero_menor(_uno,_dos,_tres)
	Si _uno < _dos Entonces
		res_numero_menor = _uno
	SiNo
		res_numero_menor = _dos
	FinSi
	Si _tres < res_numero_menor Entonces
		res_numero_menor = _tres
	FinSi
FinFuncion

Funcion MostrarEstadisticas(_prom, _mayor, _menor, _aprobados, _total)
    Escribir "========== RESUMEN ESTADÍSTICO =========="
    Escribir "Total de notas procesadas: ", _total
    Escribir "Nota más alta registrada: ", _mayor
    Escribir "Nota más baja registrada: ", _menor
    Escribir "Cantidad de aprobados: ", _aprobados
    Escribir "Promedio general del grupo: ", _prom
    Escribir "========================================="
FinFuncion