Console.WriteLine("Ingrese nota:");
double nota= double.Parse(Console.ReadLine());
if (nota<0 || nota>20){
    Console.WriteLine("Nota no valida, solo rango de 0 a 20");
}else{
    if (nota >= 17){
        Console.WriteLine("Excelente");
    }else if(nota >= 11){
        Console.WriteLine("Aprobado");
    }else{
        Console.WriteLine("Desaprobado");
    }
}