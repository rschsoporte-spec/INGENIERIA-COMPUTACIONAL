Algoritmo s04_pc02_sis_descuento_compra
	Escribir "Indicar tipo de Cliente(1-VIP,2-REGULAR) :"
	Leer tipo_cliente
	Escribir "Indicar Monto Total de Compra :"
	Leer monto_total_compra
	descuento_cliente(tipo_cliente,monto_total_compra)	
FinAlgoritmo

Funcion descuento_cliente(tipo_cliente,monto_total_compra)	
	Si tipo_cliente < 1 o tipo_cliente > 2 Entonces
		Escribir "Tipo de cliente no valida. Solo se permite: 1-VIP,2-REGULAR."
	Sino 
		Si monto_total_compra <=0 Entonces
			Escribir "Monto Total del Compra debe ser mayor a 0 para calcular el descuento."
		FinSi
	FinSi
	
	Si tipo_cliente == 1 y monto_total_compra>100 Entonces
		descuento_monto_total=0
		monto_total_descuento=0
		descuento_monto_total=((monto_total_compra * 20 ) / 100) //*0.20
		monto_total_descuento = monto_total_compra-descuento_monto_total
		Escribir "Descuento Cliente VIP de 20% :" descuento_monto_total ", monto total a pagar es :" monto_total_descuento
	SiNo
		Si tipo_cliente == 1 y monto_total_compra>0 y monto_total_compra<=100 Entonces
			descuento_monto_total=0
			monto_total_descuento=0
			descuento_monto_total=((monto_total_compra * 10 ) / 100) //*0.10
			monto_total_descuento = monto_total_compra-descuento_monto_total
			Escribir "Descuento Cliente VIP de 10% :" descuento_monto_total ", monto total a pagar es :" monto_total_descuento
		FinSi
	FinSi
	
	Si tipo_cliente == 2 y monto_total_compra>200 Entonces
		descuento_monto_total=0
		monto_total_descuento=0
		descuento_monto_total=((monto_total_compra * 10 ) / 100) //*0.10
		monto_total_descuento = monto_total_compra-descuento_monto_total
		Escribir "Descuento Cliente REGULAR de 10% :" descuento_monto_total ", monto total a pagar es :" monto_total_descuento
	SiNo
		Si tipo_cliente == 2 y monto_total_compra>0 y monto_total_compra<=200 Entonces
			descuento_monto_total=0
			monto_total_descuento=0
			descuento_monto_total=((monto_total_compra * 5 ) / 100) //*0.05
			monto_total_descuento = monto_total_compra-descuento_monto_total
			Escribir "Descuento Cliente REGULAR de 5% :" descuento_monto_total ", monto total a pagar es :" monto_total_descuento
		FinSi
	FinSi	
FinFuncion

//funcion val_tipo = validar_tipo(tipo_cliente)
//	val_tipo = falso
//	Si tipo_cliente <> 1 y tipo_cliente <> 2 Entonces
//		Escribir "Escriba el tipo de cliente valido(1-VIP,2-REGULAR)."
//		val_tipo = falso
//	SiNo
//		val_tipo = Verdadero
//	FinSi	
//FinFuncion
	