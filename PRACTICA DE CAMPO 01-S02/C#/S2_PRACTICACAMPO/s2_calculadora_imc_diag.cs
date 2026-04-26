double resultado_imc=0;
Console.WriteLine("Ingrese Peso en KG(ejemplo 55): ");
double peso= double.Parse(Console.ReadLine());
Console.WriteLine("Ingrese Altura en CM(ejemplo 1.2): ");
double altura= double.Parse(Console.ReadLine());

if (peso<0 || peso>400 || altura<0 || altura>3){
    Console.WriteLine("El peso no deber ser <0 o >400 y tambien la altura no deber ser <0 o >3.");
}else{
    resultado_imc = Math.Round(peso / Math.Pow(altura, 2), 2);
    if (resultado_imc<18.5){
        Console.WriteLine("Resultado de IMC: " + resultado_imc + "(Bajo Peso)");        
    }else if (resultado_imc>=18.5 && resultado_imc<25){
        Console.WriteLine("Resultado de IMC: " + resultado_imc + "(Peso Normal)");
    }else if (resultado_imc>=25 && resultado_imc<30){
        Console.WriteLine("Resultado de IMC: " + resultado_imc + "(Sobrepeso)");
    }else if (resultado_imc>=30){
        Console.WriteLine("Resultado de IMC: " + resultado_imc + "(Obesidad)");
    }
}