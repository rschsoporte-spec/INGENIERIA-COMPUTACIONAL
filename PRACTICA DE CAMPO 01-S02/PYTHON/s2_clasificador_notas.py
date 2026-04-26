nota=float(input("Ingrese nota para clasificar:"))
if nota<0 or nota>20:
    print("Nota no valida solo se aceptan valores entre 0 y 20.")
else:
    if nota==20:
        print("Excelente.")
    elif nota>=11:
        print("Aprobado.")
    else:
        print("Desaprobado.")
