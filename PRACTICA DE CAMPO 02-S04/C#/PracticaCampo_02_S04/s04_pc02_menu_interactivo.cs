int opcion_menu = 0;
do{   
    Console.WriteLine("Indique opción: 1-Suma, 2-Resta, 3-Multiplicación, 4-División, 5-Salir");
    opcion_menu=int.Parse(Console.ReadLine());
    if(opcion_menu>=1 && opcion_menu<= 4){
        double resultado=0;
        Console.WriteLine("Primer número:");
        double primer_numero=double.Parse(Console.ReadLine());
        Console.WriteLine("Segundo número:");
        double segundo_numero=double.Parse(Console.ReadLine());
        switch (opcion_menu){
            case 1:
                resultado = primer_numero + segundo_numero;
                break;
            case 2:
                resultado = primer_numero - segundo_numero;
                break;
            case 3:
                resultado = primer_numero * segundo_numero;
                break;
            case 4:
                if (segundo_numero != 0){
                    resultado = primer_numero / segundo_numero; 
                }else{
                    Console.WriteLine("No se puede dividir con cero.");
                }
                break;
            //default:
                //Console.WriteLine("Opción no válida. Por favor, seleccione una opción entre 1 y 5.");
        }
        if(opcion_menu==4 && segundo_numero > 0){
            Console.WriteLine("Resultado: " + resultado);
        }else{
            Console.WriteLine("Resultado: " + resultado);
        }
        
    }else if (opcion_menu != 5){
        Console.WriteLine("Opción invalida, vuelva a intentarlo.");
    }
}while(opcion_menu != 5);

Console.WriteLine("Hasta la próxima.");