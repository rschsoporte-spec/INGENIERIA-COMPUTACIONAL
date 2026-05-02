int cantidad_numero_ingresado;
int aumento=1;
int sumando=0;
int numero_mayor=0;
int numero_menor=0;
double promedio=0.0;
Console.WriteLine("Indique cantidad de numeros a sumar :");
cantidad_numero_ingresado=int.Parse(Console.ReadLine());

while (aumento<=cantidad_numero_ingresado){
    if (aumento == 1){
        numero_menor=aumento;
    }else if (aumento == cantidad_numero_ingresado){
        numero_mayor=aumento;
    }
    sumando=sumando+aumento;
    aumento++;
}
promedio=(double)sumando/cantidad_numero_ingresado;

Console.WriteLine("Cantidad Números: " + cantidad_numero_ingresado);
Console.WriteLine("Suma Total: " + sumando);
Console.WriteLine("Promedio: " + promedio);
Console.WriteLine("Numero Mayor: " + numero_mayor);
Console.WriteLine("Numero Menor: " + numero_menor);