double peso;
double talla;
double imc;
Console.WriteLine("Ingrese Peso KG :");
peso = double.Parse(Console.ReadLine());
Console.WriteLine("Ingrese Peso Altura :");
talla = double.Parse(Console.ReadLine());
imc = peso / Math.Pow(talla,2);
Console.WriteLine("El IMC es :" + imc);
