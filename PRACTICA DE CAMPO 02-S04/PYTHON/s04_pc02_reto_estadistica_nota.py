total_notas=0
suma_notas=0
nota_alta=0
nota_baja=20
promedio=0
valor_ingresado=0

while True:
    valor_ingresado = float(input("Escribir nota del 0 al 20(-1 para terminar):"))
    if valor_ingresado>=0 and valor_ingresado<=20:
        if valor_ingresado>=17 and valor_ingresado<=20:
            total_notas=total_notas+1
            suma_notas=suma_notas+valor_ingresado
            if valor_ingresado>nota_alta:
                nota_alta=valor_ingresado
            if valor_ingresado<nota_baja:
                nota_baja=valor_ingresado
        elif valor_ingresado>=14 and valor_ingresado<=16:
            total_notas=total_notas+1
            suma_notas=suma_notas+valor_ingresado
            if valor_ingresado>nota_alta:
                nota_alta=valor_ingresado
            if valor_ingresado<nota_baja:
                nota_baja=valor_ingresado
        elif valor_ingresado>=11 and valor_ingresado<=13:
            total_notas=total_notas+1
            suma_notas=suma_notas+valor_ingresado
            if valor_ingresado>nota_alta:
                nota_alta=valor_ingresado
            if valor_ingresado<nota_baja:
                nota_baja=valor_ingresado
        elif valor_ingresado>=0 and valor_ingresado<=10:
            total_notas=total_notas+1
            suma_notas=suma_notas+valor_ingresado
            if valor_ingresado>nota_alta:
                nota_alta=valor_ingresado
            if valor_ingresado<nota_baja:
                nota_baja=valor_ingresado
        else:
            print("Ingrese nota valida.")
    elif valor_ingresado==-1:
        break

promedio = suma_notas/total_notas
print("Total Notas :", total_notas)
print("Suma Notas :", suma_notas)
print("Promedio :", promedio)
print("Nota Alta :", nota_alta)
print("Nota Baja :", nota_baja)
print("Conteo por categoria :",total_notas)