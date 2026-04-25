Algoritmo  s5_funciones_area_circulo
	//Escribir "Area de Circulo de 10 de radio:" . area_del_circulo(10)
	//Escribir "Area del triangulo:" area_del_triangulo(2,10)
	Escribir "Ingrese el radio del circulo:"
	Leer radio
	Escribir "Area del circulo: " , area_del_circulo(radio)
	
	Escribir "Ingrese la base:"
	Leer base
	Escribir "Ingrese la altura:"
	Leer altura
	Escribir "Area del triangulo: " , area_del_triangulo(base,altura)
FinAlgoritmo

//SE DEFINE LA FUNCION
//       RETORNO    NOMBREFUNCION(PARAMETRO)
Funcion resultado = area_del_circulo(radio)
	area = 3.14159 * radio ^ 2
	resultado = area
FinFuncion

Funcion resultado2 = area_del_triangulo(base,altura)
	resultado2 = (base * altura) / 2
	//area2 = (base * altura) / 2
	//resultado2 = area2
FinFuncion