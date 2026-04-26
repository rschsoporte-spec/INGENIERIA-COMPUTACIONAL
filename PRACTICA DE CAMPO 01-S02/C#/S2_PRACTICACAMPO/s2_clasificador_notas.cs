Console.WriteLine("Ingrese nota para clasificar:");
double nota= double.Parse(Console.ReadLine());
if (nota<0 || nota>20){
    Console.WriteLine("Nota no valida solo se aceptan valores entre 0 y 20.");
}else{
    if (nota==20){
        Console.WriteLine("Excelente.");
    }else if (nota>=11){
        Console.WriteLine("Aprobado.");
    }else{
        Console.WriteLine("Desaprobado.");
    }
}