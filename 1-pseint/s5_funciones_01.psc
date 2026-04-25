Algoritmo  s5_funciones_area_circulo
	Escribir "Area de Circulo de 10 de radio:" . area_del_circulo(10)
	Escribir "Area del triangulo:" area_del_triangulo(2,10)
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
	