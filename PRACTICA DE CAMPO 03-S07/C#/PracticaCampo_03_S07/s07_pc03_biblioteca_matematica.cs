Console.WriteLine("----------------------------------------------------");
Console.WriteLine("-----------BIBLIOTECA MATEMATICA BASICA-------------");
Console.WriteLine("----------------------------------------------------");

Console.WriteLine("Ingrese numero a evaluar si es par o imoar :");
double numero_revisar=double.Parse(Console.ReadLine());

Console.WriteLine("HALLAR SI ES PAR O IMPAR");
Boolean respuesta_par = es_par(numero_revisar);
if (respuesta_par == true){
    Console.WriteLine("1-El numero es par.");
}else{
    Console.WriteLine("1-El numero es impar.");
}
Console.WriteLine("----------------------------------------------------");
Console.WriteLine("HALLAR EL FACTORIAL DE UN NUMERO");
double respuesta_factorial_final=factorial(numero_revisar);
Console.WriteLine("2-Factorial calculado es :" + respuesta_factorial_final);

Console.WriteLine("----------------------------------------------------");
Console.WriteLine("HALLAR EL MAXIMO DE 3 NUMEROS");
Console.WriteLine("Ingrese 1er numero :");
double numero_uno=double.Parse(Console.ReadLine());
Console.WriteLine("Ingrese 2do numero :");
double numero_dos=double.Parse(Console.ReadLine());
Console.WriteLine("Ingrese 3er numero :");
double numero_tres=double.Parse(Console.ReadLine());
double respuesta_maximo=maximo_de3(numero_uno,numero_dos,numero_tres);
Console.WriteLine("3-El numero maximo es :" + respuesta_maximo);

Console.WriteLine("----------------------------------------------------");
Console.WriteLine("CONVERTIR DE CELSIUS A FAHRENHEIT");
Console.WriteLine("Ingrese los Celsius :");
double numero_fahrenheit=double.Parse(Console.ReadLine());
double respuesta_temperatura=convertir_temperatura(numero_fahrenheit);
Console.WriteLine("4-Los grados Celsius en Fahrenheit son :" + respuesta_temperatura);

Console.WriteLine("----------------------------------------------------");
Console.WriteLine("HALLAR BASE DEL RECTANGULO");
Console.WriteLine("Ingrese base :");
double base_reactangulo=double.Parse(Console.ReadLine());
Console.WriteLine("Ingrese altura :");
double altura_rectangulo=double.Parse(Console.ReadLine());
double respuesta_area=area_rectangulo(base_reactangulo,altura_rectangulo);
Console.WriteLine("5-Area del Rectangulo es :" + respuesta_area);


//FUNCIONES VARIAS---------------------------------------------------------
Boolean es_par(double _numero_revisar){
    if (_numero_revisar % 2 == 0){
        return true;
    }else{
        return false;
    }
}
//-------------------------------------------
double factorial(double _numero_revisar){
    int aumento=1;
    double respuesta_factorial=1;
    while (aumento <=_numero_revisar){
        respuesta_factorial = respuesta_factorial * aumento;
        aumento++;
    }
    return respuesta_factorial;
}
//-------------------------------------------
double maximo_de3(double _uno,double _dos,double _tres){
    double ultimo_mayor=0;
    if(_uno > _dos){
        ultimo_mayor=_uno;
    }else{
        ultimo_mayor=_dos;
    }
    if (_tres > ultimo_mayor){
        ultimo_mayor=_tres;
    }
    return ultimo_mayor;
}
//-------------------------------------------
double convertir_temperatura(double _numero_celsius){
    double resultado_fahrenheit = (_numero_celsius * 9/5)+32;
    return resultado_fahrenheit;
}
//-------------------------------------------
double area_rectangulo(double _base,double _altura){
    double resultado_area_rectangulo=_base * _altura;
    return resultado_area_rectangulo;
}
//-------------------------------------------