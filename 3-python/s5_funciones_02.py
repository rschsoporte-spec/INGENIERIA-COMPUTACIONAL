import math
base=float(input("Ingrese base:"))
altura=float(input("Ingrese altura:"))

def area_triangulo(base,altura):
    area = (base * altura) / 2
    return area

if (base>0 and altura>0):
    resultado = area_triangulo(base,altura)
    #print(f"Area triangulo: {resultado}")
    print("Area triangulo es:", resultado)
else:
    print("Base y altura deben ser números positivos.")