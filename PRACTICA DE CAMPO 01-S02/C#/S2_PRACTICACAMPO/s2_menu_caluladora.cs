double resultado=0;
Console.WriteLine("Ingrese el primer número:");
double numero1= double.Parse(Console.ReadLine());
Console.WriteLine("Ingrese el segundo número:");
double numero2= double.Parse(Console.ReadLine());
Console.WriteLine("Escriba número del Operador para el calculo(1-Suma, 2-Resta, 3-Multiplica, 4-Divide");
int operador= int.Parse(Console.ReadLine());
switch (operador)
{
    case 1:
        resultado = numero1 + numero2;
        Console.WriteLine("La Suma de los numero es: " + resultado);
        break;
    case 2:
        resultado = numero1 - numero2;
        Console.WriteLine("La Resta de los numero es: " + resultado);
        break;
    case 3:
        resultado = numero1 * numero2;
        Console.WriteLine("La Multiplicación de los numero es: " + resultado);
        break;
    case 4:
        if (numero2 == 0)        {
            Console.WriteLine("Divisor no puede ser igual a 0.");
        }else{
            resultado = numero1 / numero2;
            Console.WriteLine("La División de los numero es: " + resultado);
        }
        break;
    default:
        Console.WriteLine("Operador solo se permiten (1-Suma, 2-Resta, 3-Multiplica, 4-Divide).");
        break;
}