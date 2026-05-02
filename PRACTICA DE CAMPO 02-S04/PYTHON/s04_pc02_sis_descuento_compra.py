tipo_cliente = int(input("Indicar tipo de Cliente(1-VIP,2-REGULAR) :"))
monto_total_compra = float(input("Indicar Monto Total de Compra :"))

def descuento_cliente(tipo_cliente, monto_total_compra):
    if tipo_cliente !=1 and tipo_cliente !=2:
        print("Tipo de cliente no valida. Solo se permite: 1-VIP,2-REGULAR.")
        return 0,0
    
    if monto_total_compra<=0:
        print("Monto Total del Compra debe ser mayor a 0 para calcular el descuento.")
        return 0,0 

    if tipo_cliente == 1:
        if monto_total_compra > 100:
            descuento_monto_total = monto_total_compra * 0.20
            monto_total_descuento = monto_total_compra - descuento_monto_total
        elif monto_total_compra <= 100:
            descuento_monto_total = monto_total_compra * 0.10
            monto_total_descuento = monto_total_compra - descuento_monto_total

    if tipo_cliente == 2:
        if monto_total_compra > 200:
            descuento_monto_total = monto_total_compra * 0.10
            monto_total_descuento = monto_total_compra - descuento_monto_total
        elif monto_total_compra <= 200:
            descuento_monto_total = monto_total_compra * 0.05
            monto_total_descuento = monto_total_compra - descuento_monto_total

    return descuento_monto_total, monto_total_descuento

descuento_monto_total, monto_total_descuento = descuento_cliente(tipo_cliente, monto_total_compra)
if descuento_monto_total > 0 and monto_total_descuento > 0:
    print("Descuento aplicado de: ", descuento_monto_total, ", monto total a pagar: ", monto_total_descuento)