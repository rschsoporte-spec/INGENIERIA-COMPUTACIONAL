import math
base=float(input("Ingrese base:"))
altura=float(input("Ingrese altura:"))

def area_triangulo(base,altura):
    area = (base * altura) / 2
    return area

resultado = area_triangulo(base,altura)
print(f"Area triangulo: {resultado}")