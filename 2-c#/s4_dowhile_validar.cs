double nota=0;
do
{
    Console.WriteLine("Ingrese del 0 al 20:");
    nota = double.Parse(Console.ReadLine())
;} while (nota > 20 || nota < 0);