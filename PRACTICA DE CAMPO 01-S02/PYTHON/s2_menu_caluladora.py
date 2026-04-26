numero1=float(input("Ingrese Primer Número:"))
numero2=float(input("Ingrese Segundo Número:"))
operador=int(input("Escriba número del Operador para el calculo(1-Suma, 2-Resta, 3-Multiplica, 4-Divide):"))

match operador:
    case 1:
        resultado=float(numero1+numero2)
        print("La Suma de los numero es: ", resultado)
    case 2:
        resultado=float(numero1-numero2)
        print("La Resta de los numero es: ", resultado)
    case 3:
        resultado=float(numero1*numero2)
        print("La Multiplicación de los numero es: ", resultado)
    case 4:
        if numero2==0:
            print("Divisor no puede ser igual a 0.")
        else:
            resultado=float(numero1/numero2)
            print("La División de los numero es: ", resultado)
    case _:
        print("Operador solo se permiten (1-Suma, 2-Resta, 3-Multiplica, 4-Divide).")