int total_notas=0;
double suma_notas=0;
double nota_alta=0;
double nota_baja=20;
double promedio=0;
double valor_ingresado;

do{
    Console.WriteLine("Escribir nota del 0 al 20 :");
    valor_ingresado = double.Parse(Console.ReadLine());
    if (valor_ingresado>=0 && valor_ingresado<=20){
        if (valor_ingresado>=17 && valor_ingresado<=20){
            total_notas=total_notas+1;
			suma_notas=suma_notas+valor_ingresado;
            if(valor_ingresado>nota_alta){
                nota_alta=valor_ingresado;
            }
            if(valor_ingresado<nota_baja){
                nota_baja=valor_ingresado;
            }
        }else if (valor_ingresado>=14 && valor_ingresado<=16){
            total_notas=total_notas+1;
			suma_notas=suma_notas+valor_ingresado;
            if(valor_ingresado>nota_alta){
                nota_alta=valor_ingresado;
            }
            if(valor_ingresado<nota_baja){
                nota_baja=valor_ingresado;
            }
        }else if (valor_ingresado>=11 && valor_ingresado<=13){
            total_notas=total_notas+1;
			suma_notas=suma_notas+valor_ingresado;
            if(valor_ingresado>nota_alta){
                nota_alta=valor_ingresado;
            }
            if(valor_ingresado<nota_baja){
                nota_baja=valor_ingresado;
            }
        }else if (valor_ingresado>=0 && valor_ingresado<=10){
            total_notas=total_notas+1;
			suma_notas=suma_notas+valor_ingresado;
            if(valor_ingresado>nota_alta){
                nota_alta=valor_ingresado;
            }
            if(valor_ingresado<nota_baja){
                nota_baja=valor_ingresado;
            }
        }else{
            Console.WriteLine("Ingrese nota valida.");
        }
        promedio = suma_notas/total_notas;
    }
}while (valor_ingresado != -1);

Console.WriteLine("Total Notas : " + total_notas);
Console.WriteLine("Suma Notas : " + suma_notas);
Console.WriteLine("Promedio Notas : " + promedio);
Console.WriteLine("Nota Alta : " + nota_alta);
Console.WriteLine("Nota Baja : " + nota_baja);
Console.WriteLine("Conteo por categoría : " + total_notas);
