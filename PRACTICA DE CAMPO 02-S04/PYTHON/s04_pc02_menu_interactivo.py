while True:
    opcion_menu = int(input("Indique opción: 1-Suma, 2-Resta, 3-Multiplicación, 4-División, 5-Salir :"))
    if opcion_menu == 1:
        a=int(input("Primer Número: "))
        b=int(input("Segundo Número: "))
        resultado=a+b
    elif opcion_menu == 2:
        a=int(input("Primer Número: "))
        b=int(input("Segundo Número: "))
        resultado=a-b
    elif opcion_menu == 3:
        a=int(input("Primer Número: "))
        b=int(input("Segundo Número: "))
        resultado=a*b
    elif opcion_menu == 4:
        a=int(input("Primer Número: "))
        b=int(input("Segundo Número: "))
        if b != 0:
            resultado=a/b
        else:
            print("No se puede dividir por cero.")
            continue
    elif opcion_menu == 5:
        print("Hasta la próxima.")
        break
    else:
        print("Opción invalida, vuelva a intentarlo.")
        continue
    print("Resultado: ", resultado)
