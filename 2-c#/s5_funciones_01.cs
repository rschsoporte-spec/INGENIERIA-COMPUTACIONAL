//DECLARAR VARIABLE
double radio=0;
double resultado=0;

//OBTENER LOS VALORES DEL USUARIO
Console.WriteLine("Ingrese radio:");
radio = double.Parse(Console.ReadLine());

//LLAMAR FUNCION Y PASO VALOR
resultado = area_circulo(radio); 

//MOSTRAR RESULTADO DE LA FUNCION
Console.WriteLine("Radio es:" + resultado);

//CREAR FUNCION
//public double radio_circulo(double radio)
double area_circulo(double radio)
{
    //return area = 3.14159 * radio ^ 2;
    double resultado=0;
    resultado = Math.PI * Math.Pow(radio,2);
    return resultado;
}