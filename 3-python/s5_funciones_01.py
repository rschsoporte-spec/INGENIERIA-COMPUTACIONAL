#IMPORTAR FUNCION
import math

#DEFINIR FUNCION Y PROCESO Y RETORNO
def area_circulo(radio):
    area = math.pi * (radio ** 2)
    return area

#SOLICITO AL USUARIO VALOR
radio=float(input("Ingrese radio:"))

#LLAMO LA FUNCIO Y GENERO RESULTADO
resultado = area_circulo(radio)

#IMPRIMO EL RESULTADO
print(f"Area circulo : {resultado}")
print("Area circulo :",resultado)