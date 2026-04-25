//DECLARAR VARIABLE
double bases=0;
double alturas=0;
double resultado=0;

//OBTENER LOS VALORES DEL USUARIO
Console.WriteLine("Ingrese base:");
bases = double.Parse(Console.ReadLine());
Console.WriteLine("Ingrese altura:");
alturas = double.Parse(Console.ReadLine());

//LLAMAR FUNCION Y PASO VALOR
resultado = area_triangulo(bases,alturas); 

//MOSTRAR RESULTADO DE LA FUNCION
Console.WriteLine("Area del triangulo:" + resultado);

//CREAR FUNCION
//public double radio_circulo(double radio)
double area_triangulo(double bases,double alturas)
{
    //return area = 3.14159 * radio ^ 2;
    double resultado=0;
    resultado = (bases * alturas) / 2;
    return resultado;
}