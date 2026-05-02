int tipo_cliente;
double monto_total_compra, descuento_monto_total, monto_total_descuento;
Console.WriteLine("Indicar tipo de Cliente(1-VIP,2-REGULAR) :");
tipo_cliente = int.Parse(Console.ReadLine());
Console.WriteLine("Indicar monto total de la compra :");
monto_total_compra = double.Parse(Console.ReadLine());

var valores_montos = descuento_cliente(tipo_cliente, monto_total_compra);
if (valores_montos.Item1 != 0 && valores_montos.Item2 != 0){
    Console.WriteLine("Descuento aplicado de :" +valores_montos.Item1+ ", monto total a pagar es :"+ valores_montos.Item2);
}

(double, double) descuento_cliente(int tipo_cliente, double monto_total_compra)
{
    double monto_total_descuento = 0;
    double descuento_monto_total = 0;    

    if(tipo_cliente != 1 && tipo_cliente != 2){
        Console.WriteLine("Tipo de cliente no valida. Solo se permite: 1-VIP,2-REGULAR.");
        return (0,0);
    }
    if(monto_total_compra <= 0){
        Console.WriteLine("Monto Total del Compra debe ser mayor a 0 para calcular el descuento.");
        return (0,0);
    }

    if (tipo_cliente == 1){
        if (monto_total_compra > 100){
            descuento_monto_total = monto_total_compra * 0.20;
            monto_total_descuento = monto_total_compra-descuento_monto_total;
        }else if(monto_total_compra <= 100){
            descuento_monto_total = monto_total_compra * 0.10;
            monto_total_descuento = monto_total_compra-descuento_monto_total;
        }
    }else if (tipo_cliente == 2){
        if (monto_total_compra > 200){
            descuento_monto_total = monto_total_compra * 0.10;
            monto_total_descuento = monto_total_compra-descuento_monto_total;
        }else if(monto_total_compra <= 200){
            descuento_monto_total = monto_total_compra * 0.05;
            monto_total_descuento = monto_total_compra-descuento_monto_total;
        }
    }
   return (descuento_monto_total,monto_total_descuento);
}