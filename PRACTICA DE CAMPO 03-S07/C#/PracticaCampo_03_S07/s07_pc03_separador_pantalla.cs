int aumento = 0;

Console.WriteLine("Ingrese caracter :");
char texto_caracter = char.Parse(Console.ReadLine());
Console.WriteLine("Ingrese numero para repetir :");
int numero_veces = int.Parse(Console.ReadLine());

//string resultado = mostrar_separador(texto_caracter,numero_veces);
var resultado = mostrar_separador(texto_caracter,numero_veces);
Console.WriteLine(resultado.Item1);
Console.WriteLine(resultado.Item2);

(string,string) mostrar_separador(char _text_caracter, int _numero_veces){    
    string texto_separador = "";
    string texto_separador_02 = "";
    while (aumento < _numero_veces){        
        texto_separador = texto_separador + _text_caracter;
        aumento = aumento + 1;
    }
    for (int a=1;a<=_numero_veces;a++){
        texto_separador_02 = texto_separador_02 + _text_caracter;
    }
    
    return (texto_separador, texto_separador_02);
}