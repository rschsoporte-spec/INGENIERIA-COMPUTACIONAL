peso=float(input("Ingrese el peso en KG:"))
altura=float(input("Ingrese la altura en Metros:"))

imc=round(peso/(altura*2),0)

print(f"El IMC calculado es :{imc}")