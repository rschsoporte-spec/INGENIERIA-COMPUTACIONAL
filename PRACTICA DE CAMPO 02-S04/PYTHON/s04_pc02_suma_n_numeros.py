cantidad_numero_ingresado=int(input("Indique cantidad de de numeros a sumar: "))
aumento=0
sumando=0
numero_mayor=0
numero_menor=0
while True:    
    aumento=aumento+1
    sumando=sumando+aumento
    if aumento==1:
        numero_menor=aumento
    elif aumento==cantidad_numero_ingresado:
        numero_mayor=cantidad_numero_ingresado

    if aumento == cantidad_numero_ingresado:
        promedio = sumando/cantidad_numero_ingresado
        print("Cantidad Numeros:", cantidad_numero_ingresado)
        print("Suma Total:", sumando)
        print("Promedio:", promedio)
        print("Numero Mayor:", numero_mayor)
        print("Numero Menor:", numero_menor)        
        break